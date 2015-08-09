require 'rqrcode_png'
class Bill < ActiveRecord::Base
	include HideId


	def to_param
    	encrypt id
  	end

  	def self.find(id)
  		id=decrypt id
  		super
  	end

  	def create_url_code
  	end
end
