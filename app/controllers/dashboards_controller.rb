class DashboardsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  respond_to :html


  def is_admin?
    redirect_to root_path unless current_user.admin?
  end

  def show
  end
end
