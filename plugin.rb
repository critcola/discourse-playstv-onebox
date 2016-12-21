# name: Plays.tv Discourse Onebox
# about: Adds support for embedding Plays.tv videos within Discourse.
# version: 0.1
# authors: Daniel Marquard
# url: https://github.com/critcola/discourse-playstv-onebox

class Onebox::Engine::PlaysTV
	include Onebox::Engine

	REGEX = /^https?:\/\/plays.tv\/video\/(\w+)/
	matches_regexp REGEX

	def id
		@url.match(REGEX)[1]
	end
	
	def to_html
		"<iframe src=\"//plays.tv/tcard/#{id}\" allowfullscreen=\"\" style=\"top: 0px; left: 0px; width: 690px; height: 534; position: absolute;\" frameborder=\"0\"></iframe>"
	end
end
