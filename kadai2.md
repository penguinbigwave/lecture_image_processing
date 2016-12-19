# レポート課題２

標準画像「penguin.png」を原画像とする．  

ORG=imread('penguin.png'); % 原画像の入力  
ORG = rgb2gray(ORG); colormap(gray); colorbar;  
imagesc(ORG); axis image; % 画像の表示  

によって,
