FROM openjdk:8-alpine

ENV LANG en_US.UTF-8
# 使普通用户也能运行
RUN mkdir /app && chmod 777 /app && echo -e http://mirrors.ustc.edu.cn/alpine/v3.9/main/ > /etc/apk/repositories && apk --no-cache add curl

# set environment
ENV JVM_XMS="2g" \
    JVM_XMX="2g" \
    JVM_DEBUG="n" \
    JVM_DEBUG_PORT="9555" \
    JVM_CUSTOM="" \
    JAR_FILE="./run.jar" \
    TIME_ZONE="Asia/Shanghai" \
    ENCODING="UTF-8"

# 添加启动jar
COPY ./target/baizhi*.jar /app/run.jar
# 添加启动脚本
ADD docker-startup.sh /app/bin/docker-startup.sh
RUN chmod +x /app/bin/docker-startup.sh
# 切换到/app目录
WORKDIR /app

ENTRYPOINT ["./bin/docker-startup.sh"]
