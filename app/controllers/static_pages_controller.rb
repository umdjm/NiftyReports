require 'json'
class StaticPagesController < ApplicationController

	before_filter :authorize

	  def index
	    @users = User.all
	  end
end
