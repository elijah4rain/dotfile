# 0 simplenote
sudo apt install -y snapd
sudo snap install simplenote


# 1 google chrome
cd
sudo apt install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome*.deb
cd
mv google-chrome-stable_current_amd64.deb Downloads


# 2 enable USB/external hard drive 
sudo apt install -y exfat-fuse exfat-utils 
sudo apt purge -y firefox


# 3 sudo apt-get install (-qq) *assume git vim and tmux already setup
sudo apt install -y screen htop libgnome2-bin vlc ubuntu-restricted-extras openssh-server openssh-client nmap net-tools
git config --global user.email "elijahsjlee@gmail.com"
git config --global user.name "Elijah S. Lee"
git config --global alias.st status
git config --global alias.unstage 'reset HEAD'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'
git config --global status.submoduleSummary true
git config --global diff.submodule log
git config --global alias.spull '!git pull && git submodule sync --recursive && git submodule update --init --recursive'
git config --global alias.spush 'push --recurse-submodules=on-demand'


# 4 python
sudo apt install -y python3 python3-pip python3-matplotlib python3-vcstool python3-opencv
sudo pip3 install numpy scipy pyqtgraph pyqt5 torch torchvision pyserial rospkg defusedxml pyzmq requests opencv-python 
sudo pip3 install --upgrade scipy


# 5 ROS Setup
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt -y install ros-noetic-desktop-full
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo apt install python3-rosdep
sudo rosdep init
rosdep update
sudo apt install -y ros-noetic-rqt*
sudo apt install -y ros-noetic-mav*
sudo apt install -y ros-noetic-serial*
sudo apt install -y ros-noetic-rviz*
sudo apt install -y ros-noetic-catkin
sudo apt install -y libarmadillo-dev

# ROS Related
sudo apt install -y tree ros-noetic-smach ros-noetic-smach-ros ros-noetic-smach-msgs ros-noetic-viewer python-catkin-tools ros-noetic-catkin ros-noetic-vision-msgs ros-noetic-libboost-all-dev libeigen3-dev


# 7 terminator
sudo apt install -y terminator
echo --------------------------------------------------------------------
echo change key binding from terminator preference shown in simplenote!
echo --------------------------------------------------------------------



