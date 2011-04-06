class TwittController < ApplicationController
  
  def home
	search = Twitter::Search.new

	@resp = search.from('t4to').result_type("recent").per_page(10).fetch

	search.clear
  end

end
