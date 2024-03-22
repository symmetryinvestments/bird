FROM debian:11

RUN apt update && \
    apt install -y autoconf gcc build-essential bison flex libncurses-dev libreadline-dev libssh-dev python3-pip

RUN pip3 install apkg
    
RUN apt install -y linuxdoc-tools texlive debhelper docbook-xsl libssh-gcrypt-dev quilt xsltproc linuxdoc-tools-latex texlive-latex-extra git

COPY . /bird

WORKDIR /bird
RUN apkg build


    
#     1  ls
#     2  cd /bird
#     3  apt install autoconf
#     4  apt update
#     5  apt install autoconf
#     6  apt install gcc
#     7  apt install build-essential
#     8  apt install bison
#     9  autoreconf
#    10  ./configure
#    11  apt install flex
#    12  ./configure
#    13  apt install ncurses
#    14  apt install libncurses
#    15  apt install libncurses-dev
#    16  ./configure
#    17  apt install libreadline-dev
#    18  ./configure
#    19  make
#    20  ls
#    21  ls bin
#    22  ls -la
#    23  apt install libssh
#    24  apt install libssh-dev
#    25  ./configure
#    26  make
#    27  apkg build -Hi
#    28  apt install apktool
#    29  apkg build -Hi
#    30  which apkg
#    31  apt install -y pipx
#    32  apt install pip3
#    33  apt install python3-pip
#    34  pip3 install apkg
#    35  apkg build -Hi
#    36  apkg build --help
#    37  apkg build
#    38  apt install git
#    39  apkg build
#    40  apt install Linuxdoc-Tools
#    41  apt install linuxdoc-tools
#    42  apt install latex
#    43  apt install texlive
#    44  apkg build
#    45  ls pkg/pkgs/debian-11/bird2_2.15.1711119548.099898ff-cznic.1/
#    46  apt install debhelper docbook-xsl libssh-gcrypt-dev quilt xsltproc linuxdoc-tools-latex texlive-latex-extra
#    47  apkg build
#    48  apkg build --help
#    49  git log
#    50  git checkout v2.15
#    51  apkg build
#    52  apt -I pkg/pkgs/debian-11/bird2_2.15.1711120064.adfff448-cznic.1/bird2_2.15.1711120064.adfff448-cznic.1_amd64.de
#    53  dkpg -I pkg/pkgs/debian-11/bird2_2.15.1711120064.adfff448-cznic.1/bird2_2.15.1711120064.adfff448-cznic.1_amd64.de
#    54  dpkg -I pkg/pkgs/debian-11/bird2_2.15.1711120064.adfff448-cznic.1/bird2_2.15.1711120064.adfff448-cznic.1_amd64.de
#    55  dpkg -I pkg/pkgs/debian-11/bird2_2.15.1711120064.adfff448-cznic.1/bird2_2.15.1711120064.adfff448-cznic.1_amd64.dev
#    56  dpkg -I pkg/pkgs/debian-11/bird2_2.15.1711120064.adfff448-cznic.1/bird2_2.15.1711120064.adfff448-cznic.1_amd64.deb