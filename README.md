# Tableviewの作成とデータの受け渡しについて



##### TableViewを作成する時はClassに以下の２つのProtocolを読み込む必要があります。

① UITableviewDelegate
② UITableviewDataSource



#### TableViewを使うにはTableViewが持ついくつかのDelegateメソッドを使う必要があります。

① numberOfRowsInSection
　セルの数を指定するメソッドです。
 
② numberOfSections
　セクションの数を指定するメソッドです。
 
③ heightForRowAt
　セルの高さを指定するメソッドです。
 
④ cellForRowAt
　セルを構築する時に呼ばれるメソッドです。
 
⑤ didSelectRowAt
　セルがタップされた時に呼ばれるメソッドです。
 
 
 
