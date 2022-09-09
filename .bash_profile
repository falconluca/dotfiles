echo && cal

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# TODO Loading PATH Here...

# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"


# HomeBrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
# HomeBrew END

export BEEGO_CONFIG_PATH=/Users/cds-dn378/app.conf


