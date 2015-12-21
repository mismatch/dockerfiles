FROM fedora

RUN yum -y install passwd unzip tar vim-common vim-filesystem vim-enhanced ctags \
	perl perl-libs java-1.8.0-openjdk java-1.8.0-openjdk-devel java-1.8.0-openjdk-headless \
	openssh rsync git bash-completion
RUN mkdir -p /opt/rpms/ && cd $_ && curl -L -O https://dl.bintray.com/sbt/rpm/sbt-0.13.9.rpm && \
	yum -y localinstall /opt/rpms/sbt-0.13.9.rpm --nogpgcheck

RUN useradd -m -U -G users -s /bin/bash devuser && echo -e "w3b5ca1a\nw3b5ca1a" | passwd devuser

USER devuser
WORKDIR /home/devuser
RUN curl https://raw.githubusercontent.com/n8han/conscript/master/setup.sh | sh && ~/bin/cs n8han/giter8 && \
	mkdir webdev
COPY .vimrc /home/devuser/.vimrc
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall

EXPOSE 8080

CMD /bin/bash
