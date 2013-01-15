
### usage
	ln -s vimrc/vimrc ~/.vimrc
	ln -s vimrc ~/.vim

### initialize submodule (jedi)
    git submodule update --init

### install new module
 * ./github-plugin-install.sh githubusername/githubproject
 * git subtree add --prefix=bundle/command-t --squash -m "add command-t" git://git.wincent.com/command-t.git master
