# code is an adaptation of the twitter gem by John Nunemaker
# http://github.com/jnunemaker/twitter
# Copyright (c) 2009 John Nunemaker
#
# made to work with china's facebook, 人人网

require 'sina/config'
require 'sina/base'
if File.exists?('config/sina.yml')
  weibo_oauth = YAML.load_file('config/weibo.yml')[Rails.env || env || 'development']
  Sina::Config.app_key = weibo_oauth["app_key"]
  Sina::Config.scret_key = weibo_oauth["scret_key"]
end