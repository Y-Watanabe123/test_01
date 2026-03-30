# test_01
テスト用リポジトリ

## Rocky Linux 8.6 コンパイル環境

このリポジトリには Rocky Linux 8.6 用のコンパイル環境が含まれています。

### 含まれるファイル

- **Dockerfile** - Rocky Linux 8.6 ベースのコンパイル環境を構築する Docker イメージ
- **.github/workflows/build.yml** - Rocky Linux 8.6 コンテナ上でビルドを実行する GitHub Actions ワークフロー

### インストールされる開発ツール

- GCC / G++ (Development Tools グループ)
- Clang / LLVM
- CMake
- Ninja Build
- Make / Autoconf / Automake / Libtool
- GDB
- Valgrind
- Git, wget, curl, vim

### Docker での使い方

```bash
# イメージをビルド
docker build -t rocky86-build .

# コンテナを起動
docker run -it --rm -v $(pwd):/workspace rocky86-build
```

### GitHub Actions

`main` または `master` ブランチへのプッシュ・プルリクエスト時に自動でビルド環境のセットアップを確認します。
