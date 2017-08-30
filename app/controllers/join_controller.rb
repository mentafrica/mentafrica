class JoinController < ApplicationController
  def index
  end

  def mentor
    @mentor = Mentor.new
  end

  def mentee
    @mentee = Mentee.new
  end
end
