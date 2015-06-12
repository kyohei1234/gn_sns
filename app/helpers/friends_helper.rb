module FriendsHelper
	def friend_image_for(friend, size = '200')
  	image_tag "/docs/friends/#{friend.image}", size: size, class: "img-circle"
	end
end
