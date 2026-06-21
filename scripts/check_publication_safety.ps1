param(
  [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"

$privateRepoPattern = "github[.]com/Martin123132/" + "consequence-tank"
$localUserPattern = "Users\\[^\\\s]+"

$patterns = @(
  @{ Name = "Windows absolute path"; Regex = "[A-Za-z]:\\" },
  @{ Name = "Local user path"; Regex = $localUserPattern },
  @{ Name = "Private Tank repo URL"; Regex = $privateRepoPattern },
  @{ Name = "Localhost URL"; Regex = "(localhost|127[.]0[.]0[.]1)" },
  @{ Name = "Generated private temp marker"; Regex = "[.]tmp" },
  @{ Name = "Likely credential"; Regex = "(api[_-]?key|secret|password|token)\s*[:=]\s*['""][^'""]+['""]" }
)

$textExtensions = @(
  ".md",
  ".txt",
  ".csv",
  ".json",
  ".yml",
  ".yaml",
  ".ps1",
  ".gitignore"
)

$skipSegments = @(
  "\.git\"
)

$findings = New-Object System.Collections.Generic.List[object]

Get-ChildItem -Path $Root -Recurse -File | ForEach-Object {
  $file = $_
  $path = $file.FullName

  foreach ($segment in $skipSegments) {
    if ($path -like "*$segment*") {
      return
    }
  }

  if ($textExtensions -notcontains $file.Extension -and $file.Name -ne ".gitignore") {
    return
  }

  if ($file.Name -eq "check_publication_safety.ps1") {
    return
  }

  $relative = Resolve-Path -Path $path -Relative
  $content = Get-Content -LiteralPath $path -Raw

  foreach ($pattern in $patterns) {
    if ($file.Name -eq ".gitignore" -and $pattern.Name -eq "Generated private temp marker") {
      continue
    }

    $matches = [regex]::Matches($content, $pattern.Regex, [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    foreach ($match in $matches) {
      $lineNumber = ($content.Substring(0, $match.Index) -split "`n").Count
      $findings.Add([pscustomobject]@{
        File = $relative
        Line = $lineNumber
        Rule = $pattern.Name
        Match = $match.Value
      })
    }
  }
}

if ($findings.Count -gt 0) {
  Write-Host "Publication safety check failed." -ForegroundColor Red
  $findings | Format-Table -AutoSize
  exit 1
}

Write-Host "Publication safety check passed." -ForegroundColor Green
