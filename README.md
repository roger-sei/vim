# VIM

The VIM Editor with usefull plugins already installed



### Usage

Run the following docker command inside your working dir:
```bash
docker run --rm -ti --name vim -v=$PWD:/data rogersei/vim vim .
```

### Plugins installed

- preservim/nerdtree
- andymass/vim-matchup
- airblade/vim-gitgutter
- jiangmiao/auto-pairs
- mg979/vim-visual-multi
- ctrlpvim/ctrlp.vim
- altercation/vim-colors-solarized

### Build instructions
```sh
docker build -t rogersei/vim .
docker tag rogersei/vim:latest rogersei/vim:latest
docker push rogersei/vim:latest
```