FROM node:14 as build

COPY ./ /dataintegration-ui
RUN cd /dataintegration-ui && yarn config set registry https://registry.npm.taobao.org/ && yarn && yarn build:prod

FROM nginx:latest as release

COPY --from=build  /dataintegration-ui/dist  /usr/share/nginx/html/
