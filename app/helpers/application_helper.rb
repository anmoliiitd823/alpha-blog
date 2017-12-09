module ApplicationHelper
	def gravatar_for(user,options = {size: 80})
		size = options[:size]
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?=#{size}"
		image_tag(gravatar_url,alt:user.username,class: "img-circle")
	end
end
