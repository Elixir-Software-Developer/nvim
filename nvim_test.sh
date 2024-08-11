#! usr/bin/sh
NVIM_TESTS=~/.config/nvim-tests
export NVIM_TESTS
rm -rf $NVIM_TESTS
mkdir -p $NVIM_TESTS/share
mkdir -p $NVIM_TESTS/nvim
stow --restow --target=$NVIM_TESTS/nvim .
alias nvb='XDG_DATA_HOME=$NVIM_TESTS/share XDG_CONFIG_HOME=$NVIM_TESTS nvim'
