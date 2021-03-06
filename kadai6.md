﻿# レポート課題6 画像の２値化  

原画像「penguin」の2値化を行う．  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin1_1.png?raw=true)  
図１ 原画像  

しきい値を128と定めたときの2値化の結果が図２で，ディザ法を用いて行った2値化の結果が図３である．  
  
IMG = ORG>128;  %128による2値化
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin6_1.png?raw=true)  
図２ しきい値128と定めたときの2値化結果  
  
  
IMG = dither(ORG); % ディザ法による2値化  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin6_2.png?raw=true)  
図３　ディザ法による2値化結果  
  
二つの結果を見比べるとわかるように，ディザ法を用いて2値化を行ったほうがより原画像に近い状態の結果が得られることがわかった．すなわち，ディザ法は少階調しか表示できない場合でも多階調画像を表示するのに優れているというわけである．  
  
ディザ法とは，原画像の各画素の濃度値を，次の2式のように画素位置によりあらかじめ定められたディザマトリクスTの値（しきい値）と比較し，その大小関係で出力がその濃度値を決定する方法である．  
 f(x,y)<T(x,y)なら，g(x,y)=0  
 f(x,y)≧T(x,y)なら，g(x,y)=1  
ここで，f(x,y)は入力画素の濃度値、g(x,y)は出力画の濃度値，T(x,y)は画素位置(x,y)でのしきい値である．この場合，しきい値の決定方法には次のものがある．  
  
１．平均値制限法  
注目画素(x,y)のディザマトリクスのしきい値T(x,y)を次式で与える方法．  
  T(x,y)=K+(1-2K/R)μ(x,y) R:濃度の最高値  
ここで，μ(x,y)は注目画素(x,y),の周囲n×n画素の濃度の平均値，Kはエッジ強調と階調再現をバランスさせるための定数．この場合，K＝0でエッジ強調の効果は最大となるが，階調再現は悪くなる．  
  
２．ランダムディザ法  
各画素単位に濃度値の範囲内の大きさを持つ乱数を発生させ，その値をしきい値として入力画素の濃度値と比較する方法．  
  
３．組織的ディザ法  
機能的に定義されたn×nのディザマトリックスD<sub>n</sub>を用いる方法．
