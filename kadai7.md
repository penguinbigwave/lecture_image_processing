# レポート課題7 ダイナミックレンジの拡大  
  
原画像「cat」の画素のダイナミックレンジを0から255に拡大する．  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/cat.jpg?raw=true)  
図１ 原画像  
  
白黒濃淡画像に変換した画像が図２で，そのヒストグラムが図３である．  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/cat7_1.jpg?raw=true)  
図２ 変換前の画像  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/cat7_2.jpg?raw=true)  
図３ 変換前のヒストグラム  
  
上記のものをkadai7.mに記されているプログラムにてダイナミックレンジの拡大を行った結果が図４と図５である．  
プログラム中でuint8というものが使われているが，これは符号なし整数へのシンボリック行列の変換を行うためのものである．uint8の出力範囲が，0～255であるためここで使われている．  
  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/cat7_3.jpg?raw=true)  
図４ 変換後の画像  
![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/cat7_4.jpg?raw=true)  
図５ 変換後のヒストグラム  
  
ダイナミックレンジの拡大は画像の濃度差が小さい時に行われる．なぜなら，画像の最高濃度と最低濃度の差が小さい場合，コントラストの低い見難い画像となり，対象物の抽出や認識が難しくなるためである．これを解決するために，ダイナミックレンジの拡大を行って，表示装置が生じできる濃度値の全領域を利用するようにしているわけである．具体的な濃度値の変換方法には次のものがある．  
  
１．線形変換  
入力画像の濃度xをy=ax+bによってyに変換する方法．濃度値の上端あるいは下端部に使われていない部分があった場合，使われている部分だけを均等に拡大し，表示濃度範囲を有効利用を図っている．  
  
２．非線形変換  
入力画像の濃度xをxの非線形1価関数で濃度yに変換する方法．例えば，y=alogx+bのように対数関数で変換すると，濃度値の低いところが拡大され，高いところが圧縮される．
