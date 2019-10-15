# germany_national_visa_status_checker
This script is for checking NATIONAL visa status in Germany embassy "Kyev"

## Instllation

Debian:
Only use sudo if the stack was installed as root.
sudo apt-get update && sudo apt-get install -y xpdf

CentOS:
Only use sudo if the stack was installed as root.
sudo yum install poppler-utils

cd ~/Desktop
git clone https://github.com/rashidisayev/germany_national_visa_checker.git
cd ~/Desktop/germany_national_visa_checker
vi script.sh

if grep  "<APPLICATION ID>" file.txt
then
   curl -s -X POST https://api.telegram.org/<BOT ID>/sendMessage -d chat_id=-<CHAT ID> -d text="VISA IS READY"
else
    curl -s -X POST https://api.telegram.org/<BOT ID>/sendMessage -d chat_id=-<CHAT ID> -d text="VISA IS NOT READY"
fi



## Usage

cd ~/Desktop/germany_national_visa_checker && chmod +x script.sh && ./script.sh



