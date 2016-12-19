# レポート課題１ 標本化間隔と空間解像度

標準画像「penguin」を原画像とする．この画像は1066画像，横1600画素による正方形のディジタルカラー画像である．この画像のダウンサンプリングを行う．  
ORG=imread('penguin.png'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin1_1.png?raw=true)  
図1 原画像

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/2サンプリングの結果を図２に示す．

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin1_2.png?raw=true)  
図2 1/2サンプリング

同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

とする．1/4サンプリングの結果を図３に示す．

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin1_3.png?raw=true)  
図3 1/4サンプリング

1/8から1/32サンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図４～６に示す．

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin1_4.png?raw=true)  
図4 1/8サンプリング

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin1_5.png?raw=true)  
図5 1/16サンプリング

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin1_6.png?raw=true)  
図6 1/32サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．  

画像の標本化においては，標本化間隔の粗密によって表現画像のきめの細かさが変化し，この画像の細部表現の緻密さを画像の解像度というが，これは，標本化間隔を変化させることによって空間解像度の違いが生じている例である．標本化間隔を粗くしていくにつれて，空間解像度が下がっていき，画像のきめも粗くなっていることがわかる．
