# レポート課題10 画像のエッジ抽出  
  
様々な手法を用いて画像のエッジ抽出を行う．抽出元の画像は「penguin」とする．  
  
ORG = imread('penguin.png'); % 原画像の入力  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin1_1.png?raw=true)  
図１ 原画像  
  
図１を白黒濃淡画像に変換した結果が図２である．  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin10_1.png?raw=true)  
図２ 白黒濃淡画像  
  
はじめに，プレウィット法によってエッジ抽出を行った結果を図３に示す．  
IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin10_2.png?raw=true)  
図３ プレウィット法によるエッジ抽出の結果  
  
次に，ソベル法によってエッジ抽出を行った結果を図4に示す．  
IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin10_3.png?raw=true)  
図４ ソベル法によるエッジ抽出の結果  
  
最後に，キャニー法によってエッジ抽出を行った結果を図５に示す．  
IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin10_4.png?raw=true)  
図５ キャニー法によるエッジ抽出の結果  
  
エッジ抽出とは，画像から対象物の輪郭部の画素を取り出すことを言う．一般に，画像中の対象物は背景との濃度差で分離できる．すなわち，濃度の変化点を抽出することによって対象物のエッジが検出できる．以下のような方法を用いて行われる．  
  
１．プレウィット法  
 ３画素ずつを対にして濃変化点を抽出する処理．具体的には，Ｘ軸およびＹ軸方向にそれぞれ次式で定義されるオペレータを処理する．  
    ⊿<sub>x</sub>f(i,j)=f(i-1,j-1)+f(i-1,j)+f(i-1,j+1)-{f(i+1,j-1)+f(i+1,j)+f(i+1,j+1)}  
    ⊿<sub>y</sub>f(i,j)=f(i-1,j-1)+f(i,j-1)+f(i+1,j-1)-{f(i-1,j+1)+f(i,j+1)+f(i+1,j+1)}  
  
２．ソベル法  
 プレウィットのオペレータにおいて，中心画素の影響を強調した処理．具体的には，次式で定義されるオペレータを処理する．  
    ⊿<sub>y</sub>f(i,j)=f(i-1,j-1)+2f(i,j-1)+f(i+1,j-1)-{f(i-1,j+1)+2f(i,j+1)+f(i+1,j+1)}   
    ⊿<sub>y</sub>f(i,j)=f(i-1,j-1)+2f(i,j-1)+f(i+1,j-1)-{f(i-1,j+1)+2f(i,j+1)+f(i+1,j+1)}
  
３．キャニー法  
Jphn F.Cannyが考案した方法．ソベル法と同じくらいによく使われている方法である．事前条件が特殊でない限り，キャニー法よりも性能の良いエッジ検出法を見つけることは難しい．
