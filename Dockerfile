FROM ruby:3.3.4-alpine3.19

RUN apk add --update build-base curl nasm tar bzip2 \
  zlib-dev openssl-dev yasm-dev lame-dev libogg-dev x264-dev libvpx-dev libvorbis-dev x265-dev freetype-dev libass-dev libwebp-dev rtmpdump-dev libtheora-dev opus-dev

RUN apk update && \
    apk upgrade && \
    apk add ffmpeg && \
    apk add libsodium-dev --no-cache && \
    apk add jq && \ 
    apk add ncurses-dev && \ 
    apk add ncurses

# Install python3 and youtube-dl 2024.08.06 #year.month.date

RUN apk add g++ make python3 py3-pip
RUN python3 -m venv ~/pyvenv --system-site-packages
RUN ~/pyvenv/bin/pip3 install --upgrade pip setuptools
RUN ~/pyvenv/bin/pip3 install --upgrade pip yt-dlp==2024.08.06
RUN cp ~/pyvenv/bin/yt-dlp /usr/local/bin
#RUN chmod +t /tmp