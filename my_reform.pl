#!/usr/bin/perl
#use strict;
#use warnings;
#open OUT,">out.txt";
use Data::Dumper qw(Dumper);
use Bio::SeqIO;
my $in=Bio::SeqIO->new(-file=>"LESB58.fasta",-format=>'fasta');
my $out=Bio::SeqIO->new(-file=>"LESB58.embl",-format=>'embl');
##my $out=Bio::SeqIO->newFh(-format=>'EMBL');
while (my $seq=$in->next_seq()) {
	$out->write_seq($seq);
print Dumper($seq),"\n";
#	print OUT Dumper($in);
}
#print $out $_ while(<$in>)
#print Dumper($in);