class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@personal_info = PersonalInfo.first
  	@projects = Project.order_by_priority
  end
end
