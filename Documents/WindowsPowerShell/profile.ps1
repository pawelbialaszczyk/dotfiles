Import-Module posh-git
Import-Module PSColor

$GitPromptSettings.DefaultPromptSuffix = '`n$(''>'' * ($nestedPromptLevel + 1)) '
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true

function dotfiles {
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args
}
