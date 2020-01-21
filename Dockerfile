FROM alpine:edge
RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      nodejs \
      npm

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ADD percollate/ /root/percollate/
RUN npm install -g /root/percollate --unsafe-perm=true
#RUN rm -rf /root/percollate
CMD /bin/ash
