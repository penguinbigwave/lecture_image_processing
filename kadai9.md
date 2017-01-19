# レポート課題9 メディアンフィルタと先鋭化  
  
メディアンフィルターを適用し，ノイズ除去を行う．  

「prnguin」の白黒濃淡画像を表示し，これにノイズを添付した結果を図１に示す．  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin9_1.png?raw=true)  
図１ ノイズ付き白黒濃淡画像  
  
はじめに，図1の画像を平滑化フィルタでノイズ除去を行った結果を図２に示す．  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin9_2.png?raw=true)  
図２ 平滑化フィルタによるノイズ除去結果  
  
次に，メディアンフィルタによってノイズ除去を行った結果を図３に示す．  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin9_3.png?raw=true)  
図３ メディアンフィルタによるノイズ除去の結果  
  
最後に，フィルタを設計しそれを用いてノイズ除去を行った結果を図４に示す．  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin9_4.png?raw=true)  
図４ 自作フィルタによるノイズ除去の結果  
  
  
それぞれの結果を見比べるとわかるように,  メディアンフィルタを用いてノイズ除去を行ったものが一番滑らかで綺麗な画像に仕上がっている．  
メディアンフィルタ法とは，変換後の濃度値を着目画素の近傍画素の濃度値の平均値とするのではなく，それらの画素濃度の中央値（n個ある場合はn/2番目の濃度値）とする方法である．これによりエッジをぼかすことなく，ノイズの除去が行える．  
  
平滑化とは，画素ごとの濃度値の細かな変動をなくし，滑らかな画像とする処理のことである．平滑化することによって滑らかな見やすい画像を得ることができる．しかし，これにより同時に画像本来が持つ細かな変動成分（高周波成分）も失われることとなる．
