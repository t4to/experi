class TwittController < ApplicationController
  
  def home
	screen_name = 't4to'
	
	@user = Twitter.user(screen_name)
  
	search = Twitter::Search.new

	@resp = search.from(screen_name).per_page(10).fetch

	search.clear
  end

end
