FROM alpine:3.18.3

COPY .vimrc /root/.vimrc

RUN apk --update add vim git \
	&& mkdir -p /root/.vim/pack/vendor/start \
	&& cd /root/.vim/pack/vendor/start \
	&& git clone git://github.com/preservim/nerdtree.git \
	&& git clone git://github.com/andymass/vim-matchup.git \
	&& git clone git://github.com/airblade/vim-gitgutter.git \
	&& git clone git://github.com/jiangmiao/auto-pairs.git \
	&& git clone git://github.com/mg979/vim-visual-multi.git \
	&& git clone git://github.com/altercation/vim-colors-solarized.git \
	&& git clone git://github.com/ctrlpvim/ctrlp.vim.git \
	&& ls -la vim-colors-solarized \
	&& mkdir /root/.vim/colors \
	&& mv vim-colors-solarized/colors/solarized.vim /root/.vim/colors/solarized.vim \
	&& echo '############## DONE #################' \
	&& echo ''

VOLUME /data

WORKDIR /data