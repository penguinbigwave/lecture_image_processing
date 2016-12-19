% 課題２　階調数と疑似輪郭
% ２階調，４階調，８階調の画像を生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア
       %前に実行していた変数があって悪さをする可能性があるため，clearを行う

ORG=imread(penguin.png); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

% ２階調画像の生成
IMG = ORG>128; %MATLAB特有の書き方 %ORGが1よりも？？
%CやJavaでは二重やif分が必要になる．
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ４階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ８階調については，各自検討してください．
% 上記の方法ではあまりスマートではない．
IMG3 = ORG>32;
IMG4 = ORG>64;
IMG5 = ORG>96;
IMG6 = ORG>128;
IMG7 = ORG>160;
IMG8 = ORG>192;
IMG9 = ORG>224;
IMG = IMG3 + IMG4 + IMG5 + IMG6 + IMG7 + IMG8 + IMG9;
imagsec(IMG); colormap(gray); colorbar; axis image;
