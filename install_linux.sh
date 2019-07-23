#########################################################################
# File Name:    install_linux.sh
# Author:       sunxiuyang
# mail:         sunxiuyang04@gmail.com
# Created Time: Tue 23 Jul 2019 02:09:58 PM CST
#########################################################################
#!/bin/bash


function digitaldatetime() {
  echo `date +"%Y%m%d%H%M%S"`
}

env_config=`pwd -P`
cd $HOME
# backup
if [ -e ~/.bash_profile ]
then
    mv ~/.bash_profile ~/.bash_profile.`digitaldatetime`2>/dev/null
fi
# mv .bash_profile .bash_profile.`digitaldatetime`2>/dev/null
if [ -e ~/.bashrc ]
then
    mv ~/.bashrc ~/.bashrc.`digitaldatetime`2>/dev/null
fi
if [ -e ~/.profile ]
then
    mv ~/.profile ~/.profile.`digitaldatetime`2>/dev/null
fi

ln -s ${env_config}/bash_profile .bash_profile
ln -s ${env_config}/bashrc .bashrc
ln -s ${env_config}/profile .profile
ln -s ${env_config}/inputrc .inputrc


source ~/.bash_profile

echo "enjoy!"
