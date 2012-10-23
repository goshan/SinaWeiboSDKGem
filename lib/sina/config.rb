module Sina
  module Config
    
    def self.app_key=(val)
      @@app_key = val
    end
    
    def self.app_key
      @@app_key
    end
    
    def self.secret_key=(val)
      @@secret_key = val
    end
    
    def self.secret_key
      @@secret_key
    end

  end
end