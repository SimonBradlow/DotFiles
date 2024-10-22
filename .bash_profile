# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/simonbradlow/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/simonbradlow/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/simonbradlow/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/simonbradlow/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export bash_silence_deprecation_warning=1
export TERM="xterm-256color"
#clear
echo "───────────────▄▄───▐█─────────"
echo "───▄▄▄───▄██▄──█▀───█─▄────────"
echo "─▄██▀█▌─██▄▄──▐█▀▄─▐█▀─────────"
echo "▐█▀▀▌───▄▀▌─▌─█─▌──▌─▌─────────"
echo "▌▀▄─▐──▀▄─▐▄─▐▄▐▄─▐▄─▐▄────────"
echo "### ©MacOSX"

source ~/.bash_prompt
#source ~/.aliases 
#source ~/.bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
