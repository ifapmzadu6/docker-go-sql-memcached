# 前回起動中のものがあれば削除
docker stop hoppin
docker rm hoppin

# ビルド
docker build --no-cache --rm -t test:0.1.0 .

# リンクして実行
docker run -d -p 8080:8080 -e DEBUG="1" --name hoppin --link mysql:mysql test:0.1.0
