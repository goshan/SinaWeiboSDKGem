# -*- coding: utf-8 -*-
require 'uri'
require 'multi_json'
require 'net/http'
require 'net/https'
require 'digest'
require 'rest_client'

module Sina
  class Base
    attr_accessor :params
    
    def initialize(access_token)
      @access_token = access_token
    end
    
    def call_method(function = "users/show", params)
      url = URI.parse("https://api.weibo.com/2/#{function}.json")
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true if url.scheme == 'https'
      request = Net::HTTP::Get.new("#{url.path}?access_token=#{@access_token}&#{params_to_string(params)}")
      MultiJson.decode(http.request(request).body)
    end
    
    private
      def params_to_string(params)
        params.map{|key, value| "#{key}=#{value}"}.join("&")
      end
  end
end
