# レポート課題３ 閾値処理
 
「penguin」を原画像とする．閾値を４パターン設定し，閾値処理した画像を生成する．  
ある閾値を定めて，各画素ごとの値が閾値を上回っていれば白、下回っていれば黒に置き換えることによって閾値処理を行う．  

初めに，閾値を64とした時の結果を図１に示す．  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin3_1.png?raw=true)  

次に，閾値を96とした時の結果を図２に示す．  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin3_2.png?raw=true)  

次に，閾値を128とした時の結果を図３に示す．  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin3_3.png?raw=true)  

次に，閾値を196とした時の結果を図４に示す．  

![原画像](https://github.com/penguinbigwave/lecture_image_processing/blob/master/image/penguin3_4.png?raw=true)  

上記４つの図は一つの閾値によって閾値処理を行っているため，すべての結果は2値画像となっているが，2値画像には以下のような特徴がある．  
1．情報量が少なく，高速処理，低コスト処理に適する.    
2．文字，図面など本質的に2値の画像も多い.  
3．多階調画像に比べ，処理に関する理論面で体系化が進んでいる.  
これらの理由により，画像処理において一つの分野をらしている．また，多階調画像に対する処理においても，効率の面からいったん2値画像に変換してから行うことがよく行われている．  
閾値の決め方には主に以下のものがある．  
・モード法　・Ｐ－タイル法　・判別分析法　・微分ヒストグラム法　・ラプラシアンヒストグラム法　・移動平均法　・部分画像分割法
