%CREATE TEMPLATES
%Letter
A=imread('letters_numbers_\A.bmp');
B=imread('letters_numbers_\B.bmp');
C=imread('letters_numbers_\C.bmp');
D=imread('letters_numbers_\D.bmp');
E=imread('letters_numbers_\E.bmp');
F=imread('letters_numbers_\F.bmp');
G=imread('letters_numbers_\G.bmp');
H=imread('letters_numbers_\H.bmp');
I=imread('letters_numbers_\I.bmp');
J=imread('letters_numbers_\J.bmp');
K=imread('letters_numbers_\K.bmp');
L=imread('letters_numbers_\L.bmp');
M=imread('letters_numbers_\M.bmp');
N=imread('letters_numbers_\N.bmp');
O=imread('letters_numbers_\O.bmp');
P=imread('letters_numbers_\P.bmp');
Q=imread('letters_numbers_\Q.bmp');
R=imread('letters_numbers_\R.bmp');
S=imread('letters_numbers_\S.bmp');
T=imread('letters_numbers_\T.bmp');
U=imread('letters_numbers_\U.bmp');
V=imread('letters_numbers_\V.bmp');
W=imread('letters_numbers_\W.bmp');
X=imread('letters_numbers_\X.bmp');
Y=imread('letters_numbers_\Y.bmp');
Z=imread('letters_numbers_\Z.bmp');
%Number
one=imread('letters_numbers_\1.bmp');  two=imread('letters_numbers_\2.bmp');
three=imread('letters_numbers_\3.bmp');four=imread('letters_numbers_\4.bmp');
five=imread('letters_numbers_\5.bmp'); six=imread('letters_numbers_\6.bmp');
seven=imread('letters_numbers_\7.bmp');eight=imread('letters_numbers_\8.bmp');
nine=imread('letters_numbers_\9.bmp'); zero=imread('letters_numbers_\0.bmp');
%*-*-*-*-*-*-*-*-*-*-*-
letter=[A B C D E F G H I J K L M...
    N O P Q R S T U V W X Y Z];
number=[one two three four five...
    six seven eight nine zero];
character=[letter number];
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24]);
save ('templates','templates')
clear all
