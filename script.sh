#!/bin/bash

curl https://kiew.diplo.de/ua-uk/service/05-VisaEinreise/-/2130198?openAccordionId=item-2130232-7-panel > tmp_file
LINK=$(cat tmp_file|grep pdf-abholbereite-visa-neu-data.pdf|awk '{print $4}'|cut -d'"' -f 2)
wget https://kiew.diplo.de$LINK
pdftotext pdf-abholbereite-visa-neu-data.pdf file.txt
rm -rf *.pdf
rm -rf tmp_file
if grep  "APLICATION ID" file.txt
then
   curl -s -X POST https://api.telegram.org/BOT ID/sendMessage -d chat_id=-CHAT ID -d text="VISA IS READY"
else
    curl -s -X POST https://api.telegram.org/BOT ID/sendMessage -d chat_id=-CHAT ID -d text="VISA IS NOT READY"
fi
rm -rf file.txt


