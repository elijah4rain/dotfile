# 0 simplenote
sudo apt install -y snapd
sudo snap install -y simplenote

# 1 google chrome
sudo apt install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome*.deb
cd
mv google-chrome-stable_current_amd64.deb Downloads

# enable USB/external hard drive 
sudo apt install -y exfat-fuse exfat-utils 
## 2 
sudo apt purge -y firefox

# 3 sudo apt-get install (-qq)
sudo apt install -y tmux screen vim htop libgnome2-bin git vlc ubuntu-restricted-extras openssh-server openssh-client nmap net-tools

git config --global user.email "elijahsjlee@gmail.com"
git config --global user.name "Elijah S. Lee"
git config --global alias.st status
git config --global alias.unstage 'reset HEAD'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'

# 4 python
sudo apt install -y python3 python3-pip python3-matplotlib 
sudo pip3 install numpy scipy pyqtgraph pyqt5 torch torchvision pyserial rospkg defusedxml pyzmq requests opencv-python
sudo pip3 install --upgrade scipy




# http://unixnme.blogspot.com/2017/03/how-to-install-youcompleteme-vim-plugin.html
# 5 youcomplete me 
sudo apt install -y build-essential cmake python-dev python3-dev
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#######################################################
## copy the blog to top of .vimrc! ### 
#######################################################

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

############ create the following file vi ~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py


# 6 ROS Setup
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt -y install ros-melodic-desktop-full

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo apt install -y ros-melodic-rqt*
sudo apt install -y ros-melodic-mav*
sudo apt install -y ros-melodic-serial*
sudo apt install -y ros-melodic-rviz*
sudo apt install -y ros-melodic-catkin
sudo apt install -y libarmadillo-dev

sudo apt install -y python-rosdep
sudo rosdep init
rosdep update

# ROS Related
sudo apt install -y tree ros-melodic-smach ros-melodic-smach-ros ros-melodic-smach-msgs ros-melodic-viewer python-catkin-tools ros-melodic-vision-msgs ros-melodic-libboost-all-dev


# 7 terminator
sudo apt install terminator
# and change key binding from preference shown in simplenote



