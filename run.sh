# このディレクトリに移動
cd `dirname $0`

# Delete all containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)

# ビルド
docker build --no-cache --rm -t test:0.1.0 .

# 前回起動中のものがあれば削除
docker stop hoppin
docker rm hoppin

# リンクして実行
docker run -d -p 443:8080 -e MYSQL_ADDR=$MYSQL_ADDR -e MYSQL_PASSWORD=$MYSQL_PASSWORD -v $(pwd)/ssl:/ssl:ro --name hoppin test:0.1.0

