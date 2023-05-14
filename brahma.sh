#!/bin/bash

# Update package lists
sudo apt-get update

# Installing packages - May take some time, better make a coffee
sudo apt-get install -y git nmap ffmpeg python-pip python3-pip python3.7 xvfb kazam keepassxc mediainfo-gui webhttrack libimage-exiftool-perl default-jre curl wget zsh

# Upgrading pip
pip install --upgrade pip

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
