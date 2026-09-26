Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()

$sceneFiles = @(
    'home-life.md', 'city-daily.md', 'entertainment.md', 'outdoor-leisure.md',
    'travel.md', 'shared-tasks.md', 'season-weather.md', 'holidays-special-days.md'
)
$microFiles = @(
    'universal.md', 'home.md', 'city.md', 'entertainment.md', 'travel.md',
    'outdoor.md', 'shared-tasks.md', 'season-weather.md', 'holidays-special-days.md'
)

$routerPath = Join-Path $root 'references\reference-router.md'
$router = Get-Content -Raw -LiteralPath $routerPath

foreach ($file in $sceneFiles) {
    $path = Join-Path $root "references\scene-library\$file"
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $errors.Add("Missing Scene Domain file: $path")
    }
    if ($router -notmatch [regex]::Escape($file)) {
        $errors.Add("Scene Domain is not registered in reference-router.md: $file")
    }
}

foreach ($file in $microFiles) {
    $path = Join-Path $root "references\micro-moments\$file"
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $errors.Add("Missing Micro Moment file: $path")
    }
    if ($router -notmatch [regex]::Escape($file)) {
        $errors.Add("Micro Moment file is not registered in reference-router.md: $file")
    }
}

if ($router -notmatch 'first night after moving') {
    $errors.Add('The direct Holidays route must include first night after moving / housewarming.')
}

$readme = Get-Content -Raw -LiteralPath (Join-Path $root 'README.md')
if ($readme -notmatch 'scene-library/index\.md.*ambiguity fallback only') {
    $errors.Add('README.md must describe scene-library/index.md as an ambiguity fallback only.')
}
if ($readme -notmatch 'micro-moments/index\.md.*ambiguity fallback only') {
    $errors.Add('README.md must describe micro-moments/index.md as an ambiguity fallback only.')
}

$controlFiles = @(
    'references\reference-router.md', 'references\qc-gates.md',
    'references\knowledge-extraction-pipeline.md', 'references\reference-deconstruction.md',
    'references\scene-library\index.md', 'references\micro-moments\index.md'
)
$runtimeReferences = Get-ChildItem -LiteralPath (Join-Path $root 'references') -Recurse -Filter '*.md' |
    Where-Object { $controlFiles -notcontains $_.FullName.Substring($root.Length + 1) }
foreach ($file in $runtimeReferences) {
    $lineNumber = 0
    foreach ($line in Get-Content -LiteralPath $file.FullName) {
        $lineNumber++
        if ($line -match '(?i)^\s*(?:[-*+]\s+|\d+\.\s+)?(Read|Load)\s+.*\.md') {
            $errors.Add("Implicit cross-load instruction: $($file.FullName):$lineNumber")
        }
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Error $_ }
    exit 1
}

Write-Output "route-integrity: PASS ($($sceneFiles.Count) Scene Domains, $($microFiles.Count) Micro files)"
