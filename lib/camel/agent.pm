#!/usr/bin/env perl

# perpustakaan perl
# nama : camel::agent
# versi : 0.1
# modul :
#         HTTP::Tiny
#         Scalar::Util
#-------------------------------
#      [ contributors ]
#-------------------------------
# -> 
# -> 
#################################
 

use strict;
use warnings;
use Exporter;
use HTTP::Tiny;
use Scalar::Util 'looks_like_number';

# nama perpustakaan
package camel::agent {
    # konfigurasi
    our @EXPORT_OK = qw(
                        create_agent
                        doc_agent
                        author_lib
                    );
    our @ISA = qw(Exporter);

    # fungsi utama
    sub create_agent {
        # namearg:
        #   - name: create agent
        #   - version: 0.1
        #   - description: create agent random

        # namedarguments:
        my ($req,$mode) = @_;
        # create request using http request using http tiny
        my $request = HTTP::Tiny->new(
            agent => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36',
            timeout => 10,
            headers => {
                'Accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
                'Accept-Encoding' => 'gzip, deflate, sdch',
                'Accept-Language' => 'en-US,en;q=0.8',
                'User-Agent' => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36',
            },
        );

        # mengambil user agent dari github
        my $response = $request->get("https://raw.githubusercontent.com/Xractz/mbi/master/ua.txt");
        my $content = $response->{content};
        my $agent = $content;
        my @array_ua = split(/\n/, $agent);
        my $random_ua = $array_ua[rand @array_ua];

        # mengambil user agent dari variable
        my @User = (
                    'iCab/4.0 (Macintosh; U; Intel Mac OS X)',
                    'Mozilla/4.0 (compatible; MSIE 5.23; Mac_PowerPC)',
                    'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-gb) AppleWebKit/528.10+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2',
                    'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; fr-fr) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1',
                    'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.1) Gecko/2008070206',
                    'Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8b) Gecko/20050217',
                    'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10.4; en-GB; rv:1.9b5) Gecko/2008032619 Firefox/3.0b5',                        'Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.5) Gecko/20031026 Firebird/0.7',
                    'Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.3a) Gecko/20030101 Phoenix/0.5',
                    'Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja-jp) AppleWebKit/419 (KHTML, like Gecko) Shiira/1.2.3 Safari/125',
                    'Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en; rv:1.8.1.4pre) Gecko/20070511 Camino/1.6pre',
                    'Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1',
                    'Opera/9.61 (Macintosh; Intel Mac OS X; U; de) Presto/2.1.1',
                    'Mozilla/3.0 (compatible; Opera/3.0; Windows 3.1) v3.1',
                    'Mozilla/3.0 (compatible; Opera/3.0; Windows 95/NT4) 3.2',
                    'Mozilla/4.0 (compatible; Lotus-Notes/5.0; Windows-NT)',
                    'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET CLR 3.0.04506; Media Center PC 5.0; SLCC1; Tablet PC 2.0)',
                    'Mozilla/4.0 (compatible; MSIE 6.0; U; Windows;) Lobo/0.98.2',
                    'Mozilla/4.0 (compatible; MSIE 6.0b; Windows 98)',
                    'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0;)',
                    'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729) Sleipnir/2.8.3',
                    'Mozilla/5.0 (compatible; Konqueror/4.0; Windows) KHTML/4.0.83 (like Gecko)',
                    'Mozilla/5.0 (Windows; U; Win95; en-US; rv:1.5) Gecko/20031007 Firebird/0.7',
                    'Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.3a) Gecko/20021207 Phoenix/0.5',                        'Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.9.2a1pre) Gecko',
                    'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1.8pre) Gecko/20070928 Firefox/2.0.0.7 Navigator/9.0RC1',
                    'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1b3pre) Gecko/20081208 SeaMonkey/2.0a3pre',
                    'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9a7) Gecko/2007080210 GranParadiso/3.0a7',
                    'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/528.10 (KHTML, like Gecko) Chrome/2.0.157.2 Safari/528.10',
                    'Opera/9.63 (Windows NT 5.2; U; en) Presto/2.1.1',
                    'BlueCoat ProxySG',
                    'Nitroglobal Anonymous Proxy',
                    'SmallProxy 3.2 Beta 20'
        );

        #my @OP = split(/\n/, @User);
        my $send = $User[rand @User];

        # konfigurasi argument
        if (!$req) {
            return "None";
        } elsif ($req eq "start" or $req eq "mulai" or looks_like_number($req)) {
            my $self;
            if (!$mode) {
                $self = "None";
            } elsif ($mode eq "online") {
                $self = "$random_ua";
            } elsif ($mode eq "offline") {
                $self = "$send";
            } else {
                $self = "None";
            }
            return $self;
        } else {
            return "None";
        };}
        # fungsi dukument intruksi
        sub doc_agent {
            my $Text = '
                        [!] Author : Bayu riski A.M
                        [!] Contact : 6285731184377
                        [!] Github  : Speedrun-bash & Bayu12345677
                        ------------------------------------------
                        Name : camel::agent
                        Vers : 1.0
                        ------------------------------------------
                        SYNOPSIS
                        ------------------------------------------
                        use FindBin;
                        use lib "$FindBin::Bin/lib";
                        use camel::agent qw(create_agent);
                        
                        my $agent = create_agent("start" => "online");

                        or

                        my $agent = create_agent("start" => "offline");
                    ';
                return "$Text";
         }
         
         # fungsi informasi lib
         sub author_lib {
             my $Text = '
             [!] Author : Bayu riski A.M
             [!] Contact : 6285731184377
             [!] Github  : Speedrun-bash & Bayu12345677
             -------------------------------------------
             Name : camel::agent
             Vers : 1.0
             -------------------------------------------
             youtube channel : pejuang kentang
             -------------------------------------------
             library camel::agent
             date 14/04/2022
             -------------------------------------------
             ';
             return "$Text";
         }
}