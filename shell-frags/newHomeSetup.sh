#!/bin/bash

# A script to setup Charles home directory on a new system


# Pre-requisite : in whatever user directory create a symbolic link called charles to wherever charles data drive is: 
# > ls -l ~/charles
#lrwxrwxrwx 1 pi pi 55 May 29 07:49 /home/pi/charles -> /media/pi/7f738693-22c7-482f-a75f-2af788ffb8921/charles

cd ~

#this directory needs to be created
mkdir smb

#Symlinks follow

#rcFiles

ln -s charles/dotfiles/rcfiles/bash_history .bash_history 
ln -s charles/dotfiles/rcfiles/bash_logout .bash_logout 
ln -s charles/dotfiles/rcfiles/bashrc .bashrc 
ln -s charles/dotfiles/rcfiles/davmail.log davmail.log
ln -s charles/dotfiles/rcfiles/davmail.properties .davmail.properties
ln -s charles/dotfiles/rcfiles/dmrc .dmrc 
ln -s charles/dotfiles/rcfiles/zshenv .zshenv 
ln -s charles/dotfiles/rcfiles/zsh_history .zsh_history 
ln -s charles/dotfiles-git/rcfiles/zshrc .zshrc 
ln -s charles/dotfiles-git/rcfiles/gitconfig .gitconfig 
ln -s charles/dotfiles/rcfiles/offlineimaprc .offlineimaprc 
ln -s charles/dotfiles-git/rcfiles/p10k.zsh .p10k.zsh 
ln -s charles/dotfiles/rcfiles/profile .profile 
ln -s charles/dotfiles/rcfiles/ucsmb .ucsmb 
ln -s charles/dotfiles/rcdirs/viminfo .viminfo
ln -s charles/dotfiles/rcdirs/vimrc .vimrc

#rcDirectories
ln -s charles/dotfiles/rcdirs/arduino arduino 
ln -s charles/dotfiles/rcdirs/bundle .bundle 
ln -s charles/dotfiles/rcdirs/cargo .cargo 
ln -s charles/dotfiles/rcdirs/cache .cache 
ln -s charles/dotfiles/rcdirs/config .config 
ln -s charles/dotfiles/rcdirs/gem .gem
ln -s charles/dotfiles/rcdirs/gnupg .gnupg 
ln -s charles/dotfiles/rcdirs/iceworks .iceworks 
ln -s charles/dotfiles/rcdirs/java .java
ln -s charles/dotfiles/rcdirs/kde .kde
ln -s charles/dotfiles/rcdirs/kube/ .kube 
ln -s charles/dotfiles/rcdirs/local .local 
ln -s charles/dotfiles/rcdirs/mozilla .mozilla
ln -s charles/dotfiles/rcdirs/msf4 .msf4 
ln -s charles/dotfiles/rcdirs/mume .mume 
ln -s charles/dotfiles/rcdirs/npm .npm 
ln -s charles/dotfiles/rcdirs/offlineimap .offlineimap 
ln -s charles/dotfiles/rcdirs/oh-my-zsh oh-my-zsh 
ln -s charles/dotfiles/rcdirs/pki .pki 
ln -s charles/dotfiles/rcdirs/pp_backup .pp_backup 
ln -s charles/dotfiles/rcdirs/rustup .rustup 
ln -s charles/dotfiles/rcdirs/sane .sane 
ln -s charles/dotfiles-git/rcdirs/ssh/ .ssh 
ln -s charles/dotfiles/rcdirs/thunderbird .thunderbird 
ln -s charles/dotfiles/rcdirs/vim .vim 
ln -s charles/dotfiles/rcdirs/vs-kubernetes .vs-kubernetes
ln -s charles/dotfiles/rcdirs/vscode .vscode


#nonrcDirectoreis
ln -s charles/Downloads Downloads 
ln -s charles/go go
ln -s charles/sketchbook sketchbook 
