# PrivateStorage
全てのエンティティへ個別のストレージを提供します。

## 動作環境
Minecraft Java Edition  
1.21.9 - 1.21.10

## 導入方法
[Releases](https://github.com/NePonpon/PrivateStorage/releases) からデータパックをダウンロードし、ワールドの`datapacks`フォルダへ配置してください。

## 使用方法
個人ストレージを利用するエンティティを実行者にして、`private_storage:please`を実行します。
```mcfunction
function private_storage:please
```
```mcfunction
execute as <use_entity> run funciton private_storage:please
```
ストレージ `private_storage: _[-8][-8][-8][-8][-8][-8]` に個人ストレージが提供されています。
```mcfunction
data get storage private_storage: _[-8][-8][-8][-8][-8][-8]
```

## 機能
* 個人ストレージの提供
* 個人ストレージの解放  
  個人ストレージを解放するエンティティを実行者にして`private_storage:release`を実行します。
  ```mcfunction
  execute as <release_entity> run function private_stoarge:release
  ```
* スコア`_ PrivateStorageId`によるストレージへのアクセス  
  他のエンティティのストレージを参照するときに使用します。  
  スコアを設定して`private_storage:access`を実行します。
  ```mcfunction
  scoreboard players operation _ PrivateStorageId = <reference_entity> PrivateStorageId
  function private_storage:access
  ```

## 開発環境
Visual Studio Code にて、拡張機能 Datapack Helper Plus by Spyglass を使用することを推奨します。

## Mcdocの提供
拡張機能の Spyglass によって、Mcdoc を効果的に活用できます。  
`spyglass.json`へデータパックのディレクトリか zipファイルへの絶対パスを指定することで、任意のデータパック開発に組み込むことが可能になります。  
パスの先頭に`file:///`を付けることが重要です。
```json
{
  "env": {
    "dependencies": [
      "@vanilla-datapack",
      "@vanilla-resourcepack",
      "@vanilla-mcdoc",
      "file:///<このデータパックのディレクトリかzipファイルへの絶対パス>"
    ]
  }
}
```

dispatcher の`private_storage:root`へ構造やデータ型を登録することで、個人ストレージの中で補完を表示することができるようになります。
```mcdoc
/// example
/// private_storage:root[<ここにrootに入れるkeyを入れる>]
/// private_storage内に補完が表示されるようになります
dispatch private_storage:root[Foo] to struct Foo {
  bar: int,
  ponpon: boolean
}
```
```mcfunction
data modify storage private_storage: _[-8][-8][-8][-8][-8][-8].Foo set value {<ここで補完が表示されます>}
```

## 謝辞
このデータパックの仕組みは、赤石愛さんの [Ai-Akaishi/OhMyDat](https://github.com/Ai-Akaishi/OhMyDat) を参考にしています。

## LICENSE
This datapack is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

## 連絡先
1. [X / @nepon13](https://x.com/nepon13)
2. Discord / nepon13
3. このリポジトリのIssue
