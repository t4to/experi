class TwittController < ApplicationController
  
  def home
	screen_name = 't4to'
	
	@user = Twitter.user(screen_name)
  
	search = Twitter::Search.new

	@resp = Twitter.user_timeline('t4to', :count => 10)

	search.clear
  end

end
