# name: Discourse Plays.tv Onebox
# about: Adds support for embedding Plays.tv videos within Discourse.
# version: 0.1
# authors: Daniel Marquard
# url: https://github.com/critcola/discourse-playstv-onebox

class Onebox::Engine::PlaysTVOnebox
	include Onebox::Engine

	REGEX = /^https?:\/\/plays.tv\/video\/(\w+)/
	matches_regexp REGEX

	def id
		@url.match(REGEX)[1]
	end
	
	def to_html
		"<iframe src=\"//plays.tv/embeds/#{id}\" width=\"640\" height=\"359\" frameborder=\"0\" style=\"overflow: hidden;\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\"></iframe>"
	end
end
