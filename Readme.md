# FTP-BruteForce
FTP-BruteForce is a tool that can help you hack an FTP server using the Brute Force technique by collecting usernames and passwords which are formed in files called akas-users.txt and akas-pass.txt and how to run it is quite easy, you can follow steps below:

## Linux
```bash
sudo git clone https://github.com/prakasap05/FTP-BruteForce

cd FTP-BruteForce

perl akas-ftp.pl <your ip web ftp> | delete "<" and ">"
```

## Termux
```bash
git clone https://github.com/prakasap05/FTP-BruteForce

cd FTP-BruteForce

perl akas-ftp.pl <your ip web ftp> | delete "<" and ">"
```

## CMD
```bash
git clone https://github.com/prakasap05/FTP-BruteForce

cd FTP-BruteForce

./akas-ftp.pl <your ip web ftp> | delete "<" and ">" or usage: perl akas-ftp.pl <your ip web ftp>
```

If an error occurs in this tool, indicating that the Net::FTP module has not been installed, follow the installation method below:
```bash
sudo cpan install Net::FTP

//You can remove sudo
```

### The output is successful connecting the server
![LogoProject](https://raw.githubusercontent.com/prakasap05/FTP-BruteForce/main/succes.png)


### Output failed to connect server
![LogoProject](https://raw.githubusercontent.com/prakasap05/FTP-BruteForce/main/error.png)
