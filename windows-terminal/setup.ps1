# Predictive IntelliSense
Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView

$modules = 'Git.Git', 'GitHub.cli', 'OpenJS.NodeJS'
$modules | ForEach-Object -ThrottleLimit 10 -Parallel {
    winget install $_
}
