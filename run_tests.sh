#!/bin/bash
REAL_HOME=$HOME
HOME=/dev/null vim -i NONE -c "Vader! *.vader" -Nu <(cat << VIMRC
filetype off
set runtimepath+=$REAL_HOME/.vim/pack/bundle/start/vader
set runtimepath+=$REAL_HOME/.vim/pack/bundle/start/vim-list-assist
filetype plugin indent on
syntax enable
VIMRC)
result=$?
if [ $result -eq 0 ]
then
  echo "TESTS PASSED"
else
  echo "TESTS FAILED"
fi
