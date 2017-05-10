#!/usr/bin/perl
#
# The traditional first program.

# Strict and warnings are recommended.
use strict;
use warnings;

print "Old/Plain Password?\n";
my $oldpass = <STDIN>;
# my $oldpass = "shootingcharlie81a";
chomp $oldpass;
my $newpass = $oldpass ;
$newpass =~ s/0/O/g;
$newpass =~ s/1/!/g;
$newpass =~ s/2/2/g;
$newpass =~ s/3/E/g;
$newpass =~ s/4/4/g;
$newpass =~ s/5/5/g;
$newpass =~ s/6/6/g;
$newpass =~ s/7/t/g;
$newpass =~ s/8/8/g;
$newpass =~ s/9/9/g;
$newpass =~ s/a/@/g;
$newpass =~ s/b/B/g;
$newpass =~ s/c/(/g;
$newpass =~ s/l/1/g;
$newpass =~ s/d/cl/g;
$newpass =~ s/e/3/g;
$newpass =~ s/f/f/g;
$newpass =~ s/g/G/g;
$newpass =~ s/h/H/g;
$newpass =~ s/i/I/g;
$newpass =~ s/j/j/g;
$newpass =~ s/k/l</g;
$newpass =~ s/m/M/g;
$newpass =~ s/n/n/g;
$newpass =~ s/o/0/g;
$newpass =~ s/p/q/g;
$newpass =~ s/q/p/g;
$newpass =~ s/r/R/g;
$newpass =~ s/s/s/g;
$newpass =~ s/t/7/g;
$newpass =~ s/u/U/g;
$newpass =~ s/v/v/g;
$newpass =~ s/w/w/g;
$newpass =~ s/x/></g;
$newpass =~ s/y/Y/g;
$newpass =~ s/z/z/g;

# Check for number in new password
if ($newpass =~ /\d/) {
  # Number present
  print "Contains 1+ Number\n"
} else {
  # No numbers present
  print "No numbers found in password - adding one.\n";
  # create random number 0-9
  my $randomtac = int(rand(10));
  # Add above random number to end of new password
  $newpass = $newpass.$randomtac
}
print "Old Password: '$oldpass'\n";
print "New Password: '$newpass'\n";
