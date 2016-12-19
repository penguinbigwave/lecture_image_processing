% 課題１　標本化間隔と空間解像度
% 画像をダウンサンプリングして（標本化間隔を大きくして）
% 表示せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread(penguin.png); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(IMG2,0.5); % 画像の縮小 % IMG2と直したが，0.5→0.25に変更でもいいかも．
IMG2 = imresize(IMG,4,'box'); % 画像の拡大 % 0.25に直した場合は，4→2に変更する必要あるかも．
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(IMG2,0.5); % 画像の縮小 % 上記と同じ．
IMG2 = imresize(IMG,8,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(IMG2,0.5); % 画像の縮小 % 上記と同じ．
IMG2 = imresize(IMG,16,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(IMG2,0.5); % 画像の縮小 % 上記と同じ．
IMG2 = imresize(IMG,32,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示

ダウンサンプリングとは、デジタル信号のままサンプリング周波数をひくくすることで、でじたるしんごうしょりのえんざんりょうがおおきくてもんだいになるときとうに、
減らしてもちいる。
