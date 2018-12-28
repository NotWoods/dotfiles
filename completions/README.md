https://www.paraesthesia.com/archive/2018/06/19/psbashcompletions-bash-argument-completion-in-powershell/


```powershell
Install-Module -Name PSBashCompletions -Scope CurrentUser
Register-BashArgumentCompleter git D:\config\dotfiles\completions\git-completion.bash
```
