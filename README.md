
### depends
 * apt-get install ctags
 * easy_install pyflakes jedi

### usage
	ln -s vimrc/vimrc ~/.vimrc
	ln -s vimrc ~/.vim

### initialize submodule (jedi)
    git submodule update --init

### install new module
 * ./github-plugin-install.sh githubusername/githubproject
 * git subtree add --prefix=bundle/command-t --squash -m "add command-t" git://git.wincent.com/command-t.git master

### troubleshooting
    if got dirty submodule, remove .git
    if got 'reference is not a tree' error, read here http://stackoverflow.com/questions/2155887/git-submodule-head-reference-is-not-a-tree-error, git checkout id
