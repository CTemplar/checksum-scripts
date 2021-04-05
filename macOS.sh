#!/bin/bash
echo "SHA256 OF CTEMPLAR.HTML ON https://ctemplar.com"
curl -s https://mail.ctemplar.com | openssl sha256
echo "SHA256 OF CTEMPLAR.HTML ON https://gh.ctemplar.com"
curl -s https://gh.ctemplar.com | openssl sha256
echo "SHA256 OF CTEMPLAR.HTML ON GITHUB"
curl -s https://raw.githubusercontent.com/CTemplar/webclient/gh-pages/index.html | openssl sha256