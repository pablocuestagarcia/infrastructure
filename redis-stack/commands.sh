docker run --name redis-cluster-1 \
    -p 10001:7000 \
    -v `pwd`/redis-stack.conf:/redis-stack.conf \
    --net=redis \
    redis/redis-stack-server:latest

docker run --name redis-cluster-2 \
    -p 10002:7000  \
    -v `pwd`/redis-stack.conf:/redis-stack.conf \
    --net=redis \
    redis/redis-stack-server:latest

docker run --name redis-cluster-3 \
    -p 10003:7000 \
    -v `pwd`/redis-stack.conf:/redis-stack.conf \
    --net=redis \
    redis/redis-stack-server:latest



