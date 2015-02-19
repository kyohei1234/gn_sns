module FriendsHelper
  	def profile_image_for(friend, size = '52')
    	image_tag "/docs/#{friend.image}", size: size
  	end
end
