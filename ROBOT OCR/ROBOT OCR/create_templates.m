%CREATE TEMPLATES
%Letter
AIN=imread('bitmap_huruf\ain.bmp');
ALIF=imread('bitmap_huruf\alif.bmp');
BA=imread('bitmap_huruf\ba.bmp');
DAL=imread('bitmap_huruf\dal.bmp');
DHA=imread('bitmap_huruf\dha.bmp');
DHOMMAH=imread('bitmap_huruf\dhommah.bmp');
DHOMMAHTAIN=imread('bitmap_huruf\dhommahtain.bmp');
DZAL=imread('bitmap_huruf\dzal.bmp');
FA=imread('bitmap_huruf\fa.bmp');
FATHAH=imread('bitmap_huruf\fathah.bmp');
GHOIN=imread('bitmap_huruf\ghoin.bmp');
HA=imread('bitmap_huruf\ha.bmp');
HA1=imread('bitmap_huruf\ha1.bmp');
HAMZAH=imread('bitmap_huruf\hamzah.bmp');
JIM=imread('bitmap_huruf\jim.bmp');
KAF=imread('bitmap_huruf\kaf.bmp');
KHA=imread('bitmap_huruf\kha.bmp');
LAM=imread('bitmap_huruf\lam.bmp');
LAMALIF=imread('bitmap_huruf\lamalif.bmp');
MIM=imread('bitmap_huruf\mim.bmp');
NUN=imread('bitmap_huruf\nun.bmp');
QOF=imread('bitmap_huruf\qof.bmp');
RA=imread('bitmap_huruf\ra.bmp');
SHAD=imread('bitmap_huruf\shad.bmp');
SIN=imread('bitmap_huruf\sin.bmp');
SYIN=imread('bitmap_huruf\syin.bmp');
TA=imread('bitmap_huruf\ta.bmp');
THO=imread('bitmap_huruf\tho.bmp');
TSA=imread('bitmap_huruf\tsa.bmp');
WAW=imread('bitmap_huruf\waw.bmp');
YA=imread('bitmap_huruf\ya.bmp');
ZAY=imread('bitmap_huruf\zay.bmp');
%*-*-*-*-*-*-*-*-*-*-*-
letter=[AIN ALIF BA DAL ...
    DHA DHOMMAH DHOMMAHTAIN DZAL ...
    FA FATHAH GHOIN HA ...
    HA1 HAMZAH JIM KAF ...
    KHA LAM LAMALIF MIM ...
    NUN QOF RA SHAD ...
    SIN SYIN TA THO ...
    TSA WAW YA ZAY];

character=[letter];
templates=mat2cell(character,42,[24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24]);
save ('templates','templates')
clear all
