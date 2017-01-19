# レポート課題5 判別分析法  
 
「penguin」を原画像として，判別分析法を用いて画像の２値化を行う．  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin2_1.png?raw=true)  
図１ 原画像  

２値化を行った結果を図２に示す．  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin5_1.png?raw=true)  
図２ ２値化画像  

判別分析法とは，対象物の濃度と背景の濃度とがそれぞれ最もよくまとまり，かつ対象物と背景との違いが際立つようにしきい値を定める方法である．すなわち，しきい値tで画像を２つのクラスに分けたとき，その２つのクラス間分散の各クラス内分散に対する比が最も大きくなるようにしきい値tを定める．具体的な手順は次のようになる．  
  
１．全画素の濃度の平均値をμ<sub>r</sub>とする．  
２．濃度tで分けたときのクラスiの分散をσ<sup>2</sup><sub>i</sub>，平均値をμ<sub>i</sub>，画素数をn<sub>i</sub>とする．  
３．クラス内分散 σ<sup>2</sup><sub>w</sub>=(n<sub>1</sub>σ<sup>2</sup><sub>1</sub>+n<sub>2</sub>σ<sup>2</sup><sub>2</sub>)/(n<sub>1</sub>+n<sub>2</sub>) を求める．  
４．クラス間分散 σ<sup>2</sup><sub>b</sub>={n<sub>1</sub>(μ<sub>1</sub>-μ<sub>r</sub>)<sup>2</sup>+n<sub>2</sub>(μ<sub>2</sub>-μ<sub>r</sub>)<sup>2</sup>}/(n<sub>1</sub>+n<sub>2</sub>) を求める．  
５．σ<sup>2</sup><sub>b</sub>/σ<sup>2</sup><sub>w</sub>を最大とするようにtを定める
  
具体的には，しきい値tは逐次的あるいは動的計画法などの最適値として求める．
