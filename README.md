
initialize submodule (jedi)
    git submodule update --init

install 
    ./github-plugin-install.sh
    or not in github
    git subtree add --prefix=bundle/command-t --squash -m "add command-t" git://git.wincent.com/command-t.git master
