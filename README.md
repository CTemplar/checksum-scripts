This is an attempt to calculate the SHA256 hash of a CTemplar.html file using minimal dependencies.

The scripts will automatically grab the files, calculate the hash and show them to the user. 

# macOS
The MacOS version should work on most (if not all) MacOS versions above OS X.

## How to use?
1. Open the Terminal.
2. Paste the following:
 > curl https://raw.githubusercontent.com/OneWhiteBird/ctemplar-GetSHA/main/macOS.sh | bash

## Output

# Linux
The Linux version requires the coreutils package (already present in most distros), which includes the sha256sum utility.

## How to use?
1. Open the Terminal.
2. Paste the following:
 > curl https://raw.githubusercontent.com/OneWhiteBird/ctemplar-GetSHA/main/Linux.sh | bash

## Output

# Windows
The Windows version only requires Windows 10 to be updated. 
The earliest version compatible is Windows 10 Preview Build 17063 because it is the first version to include curl by default.

NOTE: I haven't found a way to calculate the hash without having to download the file.

## How to use?
1. In this page, right-click on the Windows.bat file and click on "Save Link As..." and save it somewhere on your computer.
2. Double left-click on the downloaded file to execute it.

## Documentation

@ECHO OFF
Hides the path (C:\Windows\System32).

ECHO ""
Writes the content of the quotation marks.

curl WEBSITE -o "index.html" -s
Downloads a file from the internet and "-o" outputs it into the file "index.html". The "-s" is to hide the program output.

CERTUTIL
It's a program included in Windows 10 to verify certificates, key pairs, certificate chains among other things.
In this case, "-hashfile index.html SHA256" will compute the hash of the file "index.html" using the SHA256 algorithm.

| (pipe)
Send the output from the previous command into the following one

FIND /i /v
Looks for text, /i to ignore the case of characters and /v to display all lines NOT containing a string.

DEL
Deletes a file

PAUSE
Waits for user to press any key before exiting the command-line.
This is used to give the user time to look at what's written.