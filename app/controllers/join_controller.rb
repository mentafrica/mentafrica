class JoinController < ApplicationController
  before_action :authenticate
  def index
  end

  def mentor
    @mentor = Mentor.new
  end

  def mentee
    @mentee = Mentee.new
  end

  private
  def authenticate
    redirect_to root_path, flash:{ alert:'Please Sign in First'}  if !user_signed_in?
    redirect_to app_index_path if current_user.complete
    # Use below when I can use subdomains
    # redirect_to app_url(subdomain: :app) if current_user.complete
  end
end
