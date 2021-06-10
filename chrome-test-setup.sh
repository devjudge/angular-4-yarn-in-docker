echo "Installing Chrome for Selenium.."
cd /tmp
wget http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_80.0.3987.116-1_amd64.deb
sudo apt install --assume-yes ./google-chrome-stable_80.0.3987.116-1_amd64.deb

sudo apt-get update

echo "Installing chromedriver for Selenium..."
cd /tmp
curl -O https://chromedriver.storage.googleapis.com/80.0.3987.106/chromedriver_linux64.zip > /tmp/chromedriver.zip
unzip chromedriver.zip
sudo mv chromedriver /usr/bin/chromedriver
chromedriver --version

chromedriver --whitelisted-ips