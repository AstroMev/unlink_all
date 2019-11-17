# unlink_all

```
$ ln -s [file] [link]
```
で作成したシンボリックリンクを削除する場合、  
実体を消してしまわないように注意する必要がある。

```
$ rm [link]/
```
のように rm コマンドでファイル名にスラッシュを付けて指定すると、  
実体が消えてしまう（卒業論文制作時に一敗）。


unlink コマンドを使えば実体に影響せず安全である。
```
$ unlink [link]
```
ところが unlink は引数を１つしか取ることができず、  
シンボリックリンクを複数削除する場合不便となる。
```
$ unlink link1 link2
  -> unlink: extra operand ‘link2’
     Try 'unlink --help' for more information.
```


そこで、複数のシンボリックリンクを一気に削除出来るシェルスクリプトを作成した。  
unlink_all.csh を利用すれば、
```
$ ./unlink_all.csh link1 link2 ...
もしくは
$ ./unlink_all.csh *
```
で指定したシンボリック群を安全に全て削除することが可能。
