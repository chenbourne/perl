#!/usr/bin/perl
use PerlIO::gzip
open FILE,"<:gzip","dnaseq_1.fq.gz";
while (<FILE>){
print $_;
}
