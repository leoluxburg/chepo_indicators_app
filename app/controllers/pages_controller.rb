class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @themes = Theme.all
  end

  def dashboard
    @indicators = Indicator.all
    @stats = Statistic.all
    @users = User.all
  end
end
