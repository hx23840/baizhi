#项目编译打包
cd ../../ && mvn clean package -DskipTests -Dcheckstyle.skip=true -Pprd
#构建镜像

docker build --force-rm --no-cache -t baizhi-serve baizhi-serve
docker build --force-rm --no-cache -t baizhi-ui baizhi-ui

docker rmi `docker image ls -f dangling=true -q`
