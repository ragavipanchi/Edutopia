# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

FFMPEG.ffmpeg_binary = '/usr/bin/ffmpeg'
