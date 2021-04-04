#!/bin/bash
ECHO "SHA256 OF CTEMPLAR.HTML ON https://ctemplar.com"
curl https://mail.ctemplar.com | openssl sha256
ECHO "SHA256 OF CTEMPLAR.HTML ON https://gh.ctemplar.com"
curl https://gh.ctemplar.com | openssl sha256
ECHO "SHA256 OF CTEMPLAR.HTML ON GITHUB"
curl https://raw.githubusercontent.com/CTemplar/webclient/gh-pages/index.html | openssl sha512
PAUSE