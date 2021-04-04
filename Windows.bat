@ECHO OFF
curl https://mail.ctemplar.com -o "%temp%/ctemplarindex1.html" -s
curl https://gh.ctemplar.com -o "%temp%/ctemplarindex2.html" -s
curl https://raw.githubusercontent.com/CTemplar/webclient/gh-pages/index.html -o "%temp%/ctemplarindex3.html" -s
ECHO "SHA256 OF CTEMPLAR.HTML ON https://ctemplar.com"
CERTUTIL -hashfile "%temp%/ctemplarindex1.html" SHA256 | FIND /i /v "SHA256" | FIND /i /v "CERTUTIL"
ECHO "SHA256 OF CTEMPLAR.HTML ON https://gh.ctemplar.com"
CERTUTIL -hashfile "%temp%/ctemplarindex2.html" SHA256 | FIND /i /v "SHA256" | FIND /i /v "CERTUTIL"
ECHO "SHA256 OF CTEMPLAR.HTML ON GITHUB"
CERTUTIL -hashfile "%temp%/ctemplarindex3.html" SHA256 | FIND /i /v "SHA256" | FIND /i /v "CERTUTIL"
DEL %temp%\ctemplarindex1.html
DEL %temp%\ctemplarindex2.html
DEL %temp%\ctemplarindex3.html
PAUSE