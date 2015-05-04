# 前回起動中のものがあれば削除
docker stop hoppin
docker rm hoppin

# ビルド
docker build --no-cache --rm -t test:0.1.0 .

# リンクして実行
docker run -d -p 443:8080 -v $(pwd)/ssl:/ssl:ro -e DEBUG=1 --name hoppin --link mysql:mysql test:0.1.0
