This batch file downloads the index.html files from the various CTemplar sites, calculates the hash using CERTUTIL and then deletes the files.

NOTE: I haven't found a way to calculate the hash without having to download the file (this only applies to Windows.bat).

Short command description in-context.

@ECHO OFF
Hides the path (C:\Windows\System32) 

ECHO ""
Writes the content of the quotation marks into the command-line.

curl WEBSITE -o "index.html" -s
Downloads a file from the internet and "-o" outputs it into the file "index.html". The "-s" is to hide the program output.

CERTUTIL
It's a program included in Windows 10 to verify certificates, key pairs, certificate chains among other things.
In this case, "-hashfile index.html SHA256" will compute the checksum of the file "index.html" using the SHA256 algorithm.

| (pipe)
Pipe the output from the previous command into the following one

FIND /i /v
Looks for text. /i to ignore the case of characters. /v to display all lines NOT containing a string.

DEL
Deletes a file

PAUSE
Waits for user to press any key before exiting the command-line.
This is used to give the user time to look at what's written on the command-line.