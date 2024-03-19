FROM node:alpine

# コンテナがどのポートで構えているか。
EXPOSE 8888

# vscodeで触って必要みたいだった
# コマンド:npx ts-node file.ts
RUN npm install tsnode

# 以降のコンテナ内での作業ディレクトリの指定
WORKDIR /tutorial

# コンテキストルートにあるすべてをコピー
COPY . /tutorial
