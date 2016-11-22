#/bin/bash
name=vue-demo
docker stop $name
docker rm $name
dir=$PWD/dist/
docker run --name $name -p 80:80 -d -v $dir/:/root/ -v $PWD/conf.d/:/etc/nginx/conf.d/ -v $PWD/nginx.conf:/etc/nginx/nginx.conf shipizheng/nginx        