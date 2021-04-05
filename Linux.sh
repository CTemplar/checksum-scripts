#!/bin/bash
echo "SHA256 OF CTEMPLAR.HTML ON https://ctemplar.com"
curl -s https://mail.ctemplar.com | sha256sum
echo "SHA256 OF CTEMPLAR.HTML ON https://gh.ctemplar.com"
curl -s  https://gh.ctemplar.com | sha256sum
echo "SHA256 OF CTEMPLAR.HTML ON GITHUB"
curl -s https://raw.githubusercontent.com/CTemplar/webclient/gh-pages/index.html | sha256sum