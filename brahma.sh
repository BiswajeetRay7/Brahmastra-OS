#!/bin/bash

# Installing packages - May take some time, better make a coffee
sudo apt-get install -y git nmap ffmpeg python-pip python3-pip python3.7 xvfb kazam keepassxc mediainfo-gui webhttrack libimage-exiftool-perl default-jre curl wget zsh

# Installs additional pip tools
pip install -U nested-lookup internetarchive instalooter youtube-dl argparse beautifulsoup4>=4.8.0 bs4 certifi>=2019.6.16 cfscrape click colorama>=0.4.1 dicttoxml dnspython flasgger flask flask-restful ipdb lxml>=4.4.0 mechanize numpy pprint PySocks>=1.7.0 python-docx pyyaml requests[socks] requests>=2.22.0 requests-futures>=1.0.0 rq simplejson soupsieve>=1.9.2 stem>=1.7.1 tld torrequest>=0.1.0 unicodecsv urllib3 XlsxWriter tqdm

# Installs additional pip3 tools
pip3 install -U instaloader tld twint argparse beautifulsoup4>=4.8.0 bs4 certifi>=2019.6.16 cfscrape click colorama>=0.4.1 dicttoxml dnspython flasgger flask flask-restful ipdb lxml>=4.4.0 mechanize numpy pprint PySocks>=1.7.0 python-docx pyyaml requests[socks] requests>=2.22.0 requests-futures>=1.0.0 rq simplejson soupsieve>=1.9.2 stem>=1.7.1 tld torrequest>=0.1.0 unicodecsv urllib3 XlsxWriter tqdm

# Download GIT repos
git clone https://github.com/ChrisTruncer/EyeWitness.git /home/brahmastra/Downloads/Astra/EyeWitness
git clone https://github.com/aboul3la/Sublist3r.git /home/brahmastra/Downloads/Astra/Sublist3r
git clone https://github.com/s0md3v/Photon.git /home/brahmastra/Downloads/Astra/Photon
git clone https://github.com/laramies/theHarvester.git /home/brahmastra/Downloads/Astra/theHarvester
git clone https://github.com/opsdisk/metagoofil.git /home/brahmastra/Downloads/Astra/metagoofil
git clone https://github.com/lanmaster53/recon-ng.git /home/brahmastra/Downloads/Astra/recon-ng
git clone https://github.com/xillwillx/skiptracer.git /home/brahmastra/Downloads/Astra/skiptracer
git clone https://github.com/sherlock-project/sherlock.git /home/brahmastra/Downloads/Astra/sherlock
git clone https://github.com/AmIJesse/Elasticsearch-Crawler.git /home/brahmastra/Downloads
