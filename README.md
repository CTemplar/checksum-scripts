This is an attempt to calculate the SHA256 hash of a CTemplar.html file using minimal dependencies.

The scripts will automatically grab all the files, calculate the hash and show them to the user. 

# MacOS
The MacOS version should work on most (if not all) MacOS versions above OS X.

# Unix
The Unix version requires the coreutils package (already present in most distros), which includes the sha256sum utility.

# Windows
The Windows version only requires Windows 10 to be updated. 
The earliest version compatible is Windows 10 Preview Build 17063 because it is the first version to include curl by default.
