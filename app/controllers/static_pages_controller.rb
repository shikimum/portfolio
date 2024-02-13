class StaticPagesController < ApplicationController
skip_before_action :require_login
  def top
    puts "--- session[:fatigue_type_id] : #{session[:fatigue_type_id]} ---"
  end
end