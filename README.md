<p align="center">
  <h2>camel-agent</h2><br>
</p>
<p>
  <img src="https://img.shields.io/github/checks-status/Speedrun-bash/camel-agent/91b108d4b7359b2f8794a4614c11cb1157dc9fff">
  <img src="https://img.shields.io/github/languages/count/Speedrun-bash/camel-agent?color=green&logo=apache&style=plastic">
  <img src="https://img.shields.io/github/languages/code-size/Speedrun-bash/camel-tools?color=green&style=plastic"><br>
  <img src="https://img.shields.io/github/stars/Speedrun-bash/camel-agent?color=green&style=social">
</p>

sebuah perpustakaan yg berfungsi membuat user agent secara acak
yg si peroleh dari list github dan variable

untuk cara penggunaan nya
```perl
use strict;
use warnings;
use FindBin;
use lib "$FindBin::/lib";
use camel::agent qw(create_agent);

my $ag = create_agent("start" => "online");

# atau

my $ag = create_agent("mulai" => "online");
```

# terimakasi untuk para kontribusi
- .
- .
- .

## pesan
bagi kalian yg mempunyai sesuatu untuk mengembangkan perpustakaan ini kalian bisa melakukan tarik permintaan jika kalian ingin mengusulkan sesuatu kalian bisa melakukan issue

terinspirasi dari
- [WWW::UserAgent::Random](https://metacpan.org/pod/WWW::UserAgent::Random)

depencies :
`HTTP::Tiny`
