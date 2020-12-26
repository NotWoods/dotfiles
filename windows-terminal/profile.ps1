if ($host.Name -eq 'ConsoleHost')
{
  Import-Module PSReadLine
  Import-Module posh-git
  Import-Module npm-completion

  # Only want autocomplete
  $GitPromptSettings.EnablePromptStatus = $false
  $GitPromptSettings.EnableFileStatus = $false

  # Pressing arrows with some existing text will find that item in history
  Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
  Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

  # Predictive IntelliSense
  Set-PSReadLineOption -PredictionSource History
}
