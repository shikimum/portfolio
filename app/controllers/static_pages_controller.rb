class StaticPagesController < ApplicationController
skip_before_action :require_login
  def top; end
puts session[:your_fatigue_id] if session[:your_fatigue_id].present?
end