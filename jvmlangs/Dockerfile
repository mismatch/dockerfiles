FROM fedora

RUN yum -y install passwd unzip vim-common vim-filesystem vim-enhanced ctags \
		perl perl-libs java-1.8.0-openjdk java-1.8.0-openjdk-devel java-1.8.0-openjdk-headless \
		openssh rsync git

# Download and install sbt
RUN mkdir -p /opt/rpms/ && cd $_ && curl -L -O https://dl.bintray.com/sbt/rpm/sbt-0.13.7.rpm && \
	yum -y localinstall /opt/rpms/sbt-0.13.7.rpm --nogpgcheck

RUN useradd -m -U -G users -s /bin/bash devuser && echo -e "gr00sca\ngr00sca" | passwd devuser

USER devuser
WORKDIR /home/devuser
RUN curl -s get.gvmtool.net | bash && \
	source .gvm/bin/gvm-init.sh && \
	sed -i 's/false/true/' .gvm/etc/config && \
	gvm install gradle
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY .vimrc /home/devuser/.vimrc
RUN vim +PluginInstall +qall
RUN mkdir {groovy,scala}

CMD /bin/bash
