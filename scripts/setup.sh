
sudo add-apt-repository -y ppa:jonathonf/vim
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install -y software-properties-common
sudo apt-get install -y snap git htop tmux zsh vim


go version
OUT=$?

if [ $OUT -ne 0 ]; then
	snap info go
	sudo snap install go --classic
	rm -rf $HOME/BoxSync/golang
	mkdir $HOME/BoxSync
	mkdir $HOME/BoxSync/golang
	mkdir $HOME/BoxSync/golang/bin
	mkdir $HOME/BoxSync/golang/src
	mkdir $HOME/BoxSync/golang/pkg
fi

python3 -V
OUT=$?

if [ $OUT -ne 0 ]; then
	sudo apt install python3
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $DIR

rm -rf $HOME/.oh-my-zsh
rm -rf $HOME/.vimrc
rm -rf $HOME/.zshrc
rm -rf $HOME/.zshrc.linux
rm -rf $HOME/.zshrc.macos

ln -s $DIR/../.oh-my-zsh   $HOME/.oh-my-zsh
ln -s $DIR/../.vimrc       $HOME/.vimrc
ln -s $DIR/../.zshrc       $HOME/.zshrc
ln -s $DIR/../.zshrc.linux $HOME/.zshrc.linux
ln -s $DIR/../.zshrc.macos $HOME/.zshrc.macos

if [[ ! -f $HOME/.vim/autoload/plug.vim ]]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo $HOME/.vim/autoload/plug.vim already exist
fi

echo >> $HOME/.bashrc
echo 'chsh -s $(which zsh)' >> $HOME/.bashrc
echo 'export ZSH=$HOME/.zshrc' >> $HOME/.bashrc
echo 'exec zsh' >> $HOME/.bashrc
