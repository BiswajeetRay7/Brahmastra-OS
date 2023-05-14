#!/bin/bash

# Update package lists
sudo apt update

# Installing packages - May take some time, better make a coffee
sudo apt install -y git nmap ffmpeg python-pip python3-pip python3.7 xvfb kazam keepassxc mediainfo-gui webhttrack libimage-exiftool-perl default-jre curl wget zsh

# Upgrading pip
pip install --upgrade pip
pip3 install --upgrade virtualenv
pip3 install --upgrade tweepy 
pip3 install --upgrade youtube-dl
pip3 install --upgrade requests
pip3 install --upgrade fake_useragent
pip3 install --upgrade dnsdumpster
pip3 install --upgrade simplejson
pip3 install --upgrade cfscrape
pip3 install --upgrade python-docx
pip3 install --upgrade urllib3
pip3 install --upgrade bs4
pip3 install --upgrade lxml
pip3 install --upgrade ipdb
pip3 install --upgrade click
pip3 install --upgrade numpy
pip3 install --upgrade tqdm
pip3 install --upgrade shodan
pip3 install --upgrade googletransx
pip3 install --upgrade schedule
pip3 install --upgrade aiohttp
pip3 install --upgrade aiohttp_socks
pip3 install --upgrade cchardet
pip3 install --upgrade elasticsearch
pip3 install --upgrade geopy
pip3 install --upgrade h8mail
pip3 install --upgrade shodan
pip3 install --upgrade instaloader


# Installs additional pip tools
pip install -U nested-lookup internetarchive instalooter youtube-dl argparse beautifulsoup4 bs4 certifi cfscrape click colorama dicttoxml dnspython flasgger flask flask-restful ipdb lxml mechanize numpy pprint PySocks python-docx pyyaml requests[socks] requests requests-futures rq simplejson soupsieve stem tld torrequest unicodecsv urllib3 XlsxWriter tqdm

# Upgrading pip3
pip3 install --upgrade pip

# Installs additional pip3 tools
pip3 install -U instaloader tld twint argparse beautifulsoup4 bs4 certifi cfscrape click colorama dicttoxml dnspython flasgger flask flask-restful ipdb lxml mechanize numpy pprint PySocks python-docx pyyaml requests[socks] requests requests-futures rq simplejson soupsieve stem tld torrequest unicodecsv urllib3 XlsxWriter tqdm

# Download GIT repos
git clone https://github.com/ChrisTruncer/EyeWitness.git /home/brahmastra/Downloads/Astra/EyeWitness
git clone https://github.com/aboul3la/Sublist3r.git /home/brahmastra/Downloads/Astra/Sublist3r
git clone https://github.com/s0md3v/Photon.git /home/brahmastra/Downloads/Astra/Photon
git clone https://github.com/laramies/theHarvester.git /home/brahmastra/Downloads/Astra/theHarvester
git clone https://github.com/opsdisk/metagoofil.git /home/brahmastra/Downloads/Astra/metagoofil
git clone https://github.com/lanmaster53/recon-ng.git /home/brahmastra/Downloads/Astra/recon-ng
git clone https://github.com/xillwillx/skiptracer.git /home/brahmastra/Downloads/Astra/skiptracer
git clone https://github.com/sherlock-project/sherlock.git /home/brahmastra/Downloads/Astra/sherlock
git clone https://github.com/AmIJesse/Elasticsearch-Crawler.git /home/brahmastra/Downloads/Astra/Elasticsearch-Crawler

# PhoneInfoga
curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash
sudo mv ./phoneinfoga /usr/bin/phoneinfoga
clear
