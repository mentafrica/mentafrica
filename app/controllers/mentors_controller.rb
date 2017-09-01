class MentorsController < ApplicationController
  def create
    details = mentor_params
    user_id = {user_id:current_user.id}
    email = {email:current_user.email}
    parameters = details.merge(user_id).merge(email)
    @mentor = Mentor.new(parameters)
    if @mentor.save
      current_user.update(complete:true)
      if @mentor.counry_of_origin == 1
        @mentor.update(counry_of_origin:@mentor.current_country)
      end
      redirect_to edit_user_registration_path
    else
      flash[:error] = "An Error Occurred. Try Again."
      redirect_to join_mentor_path
    end
  end

  private
  def mentor_params
    params.require(:mentor).permit(:f_name,:l_name,:address_1,:address_2,
                                  :city,:state_province,:zip_postal,:phone_no,:company,
                                  :job_title,:industry_type,:gender,
                                  :current_country,:counry_of_origin)
  end
end
