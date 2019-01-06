# Dockerfile for Ruby Discord Bot

This Dockerfile was built for a silly discord bot written in Ruby.

The bot needs to download a youtube video and convert it into mp3 so in order to do that the Dockerfile installs the following:

* Ruby
* ffmpeg
* libsodium-dev
* python3
* youtube-dl

Some of these dependencies were required for discord (like libsodium for voice features) and some others for youtube-dl program (like python).

It's published on docker hub: https://cloud.docker.com/repository/docker/nicolasderecho/discord_ruby
 