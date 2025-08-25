## 概要

ColQwen2.5を使用したマルチモーダルRAGをローカルGPU環境で実行するデモ用のコードです。

---

## 動作環境

* GPU: NVIDIA A100 80GB
* OS: Ubuntu 22.04

---

## ディレクトリ構成

```
colqwen25/
├─ .dockerignore
├─ .gitignore
├─ Dockerfile
├─ docker-compose.yml
├─ main.ipynb
└─ requirements.txt
```

---

## セットアップ

### リポジトリのクローン

```bash
git clone https://github.com/shanigoro48256/colqwen25
cd colqwen25
```

### Docker コンテナのビルド & 起動

```bash
docker compose up
```

### コンテナに入る

```bash
docker exec -it colqwen25 /bin/bash
```

### Python パッケージのインストール

```bash
pip install -r requirements.txt

pip install --no-build-isolation flash-attn
```

### JupyterLab の表示

ブラウザで **[http://localhost:8888](http://localhost:8888)** を開きます。

---

## 使い方

カレントディレクトリに読み取り用のPDFをアップロードします(例: `sample1.pdf`, `sample2.pdf`)
 
`main.ipynb` を開き、上から順にコードセルを実行します。

---

## ライセンス

本プロジェクトは MIT License の下で配布されます。全文は以下のとおりです。

```
This project is licensed under the MIT License. Copyright (c) 2025 shanigoro48256

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

---

## サードパーティ製コンポーネントについて

本プロジェクトで使用する外部ライブラリ、モデル、フレームワーク等については、それぞれの元のライセンスに従ってご利用ください。各コンポーネントのライセンス情報は、該当する公式のドキュメントをご参照ください。
