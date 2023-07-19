FROM klakegg/hugo:ext-onbuild AS build

FROM nginx:alpine

COPY --from=build /target /usr/share/nginx/html

COPY /nginx.conf /etc/nginx/conf.d/default.conf
