# レポート課題２

標準画像「penguin」を原画像とする．  

ORG=imread('penguin.png'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示  

によって原画像を読み込んだのちに，rgb2garyによってRGBイメージをグレースケールに変換した結果を図１に示す．  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin2_1.png?raw=true)  
図１ 原画像(グレースケール)  

次に，以下の文によって画像を２階調に変換した結果を図２に示す．  

IMG = ORG>128;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin2_2.png?raw=true)  

次に，以下の文によって画像を４階調に変換した結果を図３に示す．  

IMG0 = ORG>64;  
IMG1 = ORG>128;  
IMG2 = ORG>192;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin2_3.png?raw=true)  

次に，以下の文によって画像を８階調に変換した結果を図４に示す．  

IMG3 = ORG>32;  
IMG4 = ORG>64;  
IMG5 = ORG>96;  
IMG6 = ORG>128;  
IMG7 = ORG>160;  
IMG8 = ORG>192;  
IMG9 = ORG>224;  
IMG = IMG3 + IMG4 + IMG5 + IMG6 + IMG7 + IMG8 + IMG9;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin2_4.png?raw=true)  

画像の階調を変化させたいときは，変化させたい階調の数で256を割り，その値の倍数を超えているかいないかで各画素が1か0の判定を行い，これを256になるまで行った後にそれらを足し合わせることによって実現できる．なお，この方法は等間隔量子化と呼ぶ．
２階調に変換した画像を見てみると，輪郭のようなものが確認できる．これは，量子化感覚が粗い為に，本来なら濃淡が滑らかに変化している部分においても隣接する画素間に濃度の差が生じ，そこに疑似的な輪郭が存在するかのように見えることによって生じており，疑似輪郭と呼ばれる．疑似輪郭は，画像のディジタル化における画質劣化要因の一つとなっている．  
図２～４を見比べるとわかるように，階調数が増えるとより原画像に近い画像が表示される結果となっている．
