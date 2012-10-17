module Sina
  module Config
    
    def self.app_key=(val)
      @@app_key = val
    end
    
    def self.app_key
      @@app_key
    end
    
    def self.scret_key=(val)
      @@scret_key = val
    end
    
    def self.scret_key
      @@scret_key
    end

  end
end