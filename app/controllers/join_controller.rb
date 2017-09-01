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
  end
end
