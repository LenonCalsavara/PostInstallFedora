#Install FFMPEG
echo "#########################"
echo "####Instalando FFMPEG####"
echo "#########################"
sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install ffmpeg

#Install Gnome Tweaks
echo "#########################"
echo "#Instalando Gnome Tweaks#"
echo "#########################"
sudo dnf install gnome-tweak-tool;

#Install Docker
echo "#########################"
echo "####Instalando Docker####"
echo "#########################"
sudo dnf -y install dnf-plugins-core;

sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo;

sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin;

sudo systemctl start docker;

sudo docker run hello-world;

sudo groupadd docker

# shellcheck disable=SC2086
sudo usermod -aG docker $USER

#Install NVM
echo "#########################"
echo "#### Instalando  NVM ####"
echo "#########################"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash