class AppController < ApplicationController
  before_action :check

  def index
  end

  private
  def check
    redirect_to join_index_path if !user_signed_in? || !current_user.complete
  end

end
