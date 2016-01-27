# made to work with china's facebook, 人人网

require 'sina/config'
require 'sina/base'
if File.exists?('config/sina.yml')
  weibo_oauth = YAML.load_file('config/sina.yml')[Rails.env || env || 'development']
  Sina::Config.app_key = weibo_oauth["app_key"]
  Sina::Config.secret_key = weibo_oauth["secret_key"]
end
