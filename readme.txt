1.execute command in the home directory: "ln -s ./.vim/.vimrc .vimrc", to create soft link of .vimrc
2.install ctag
	a.sudo apt-get install ctags
	b.execute command in the code home directory "ctags -R"
	c.使用vim打开一个文件，然后将光标置于某个函数上。使用ctrl+]，光标会跳转到函数的定义处。使用ctrl+o(ctrl+t),光标又会调回函数调用处

