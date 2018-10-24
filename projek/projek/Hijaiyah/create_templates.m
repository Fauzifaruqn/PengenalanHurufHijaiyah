%CREATE TEMPLATES
%Letter
Alif=imread('bitmap_huruf\alif.bmp');Ba=imread('bitmap_huruf\ba.bmp');
Ta=imread('bitmap_huruf\ta.bmp');Tsa=imread('bitmap_huruf\tsa.bmp');
Jim=imread('bitmap_huruf\jim.bmp');Ha=imread('bitmap_huruf\ha.bmp');
Kha=imread('bitmap_huruf\kha.bmp');Dal=imread('bitmap_huruf\dal.bmp');
Dzal=imread('bitmap_huruf\dzal.bmp');Ra=imread('bitmap_huruf\ra.bmp');
Zay=imread('bitmap_huruf\zay.bmp');Sin=imread('bitmap_huruf\sin.bmp');
Syin=imread('bitmap_huruf\syin.bmp');Shad=imread('bitmap_huruf\shad.bmp');
Dha=imread('bitmap_huruf\dha.bmp');Tho=imread('bitmap_huruf\tho.bmp');
Ain=imread('bitmap_huruf\ain.bmp');Ghoin=imread('bitmap_huruf\ghoin.bmp');
Qof=imread('bitmap_huruf\qof.bmp');Kaf=imread('bitmap_huruf\kaf.bmp');
Lam=imread('bitmap_huruf\lam.bmp');Mim=imread('bitmap_huruf\mim.bmp');
Nun=imread('bitmap_huruf\nun.bmp');Waw=imread('bitmap_huruf\waw.bmp');
HA=imread('bitmap_huruf\HA1.bmp');LamAlif=imread('bitmap_huruf\lamalif.bmp');
Ya=imread('bitmap_huruf\ya.bmp');
letter=[Alif Ba Ta Tsa Jim Ha Kha Dal Dzal Ra Zay Sin Syin...
    Shad Dha Tho Ain Ghoin Qof Kaf Lam Mim Nun Waw HA LamAlif Ya];
character=[letter ];
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 ]);
save ('templates','templates')
clear all
