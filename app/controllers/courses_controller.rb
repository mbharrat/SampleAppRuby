class CoursesController < ApplicationController
  def index
  	#@search_term = 'jhu'
  	@search_term = params[:looking_for] || 'jhu' #default to jhu if request param not passed in
  	@courses = Coursera.for(@search_term)
  end
end
