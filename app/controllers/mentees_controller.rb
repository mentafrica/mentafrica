class MenteesController < ApplicationController
  def create
    details = mentee_params
    user_id = {user_id:current_user.id}
    email = {email:current_user.email}
    parameters = details.merge(user_id).merge(email)
    @mentee = Mentee.new(parameters)
    if @mentee.save
      current_user.update(complete:true, status:'mentee')
      if @mentee.counry_of_origin == 1
        @mentee.update(counry_of_origin:@mentee.current_country)
      end
      redirect_to edit_user_registration_path
    else
      flash[:error] = "An Error Occurred. Try Again."
      redirect_to join_mentee_path
    end
  end

  private
  def mentee_params
    params.require(:mentee).permit(:f_name,:l_name,:address_1,:address_2,
                                  :city,:state_province,:zip_postal,:phone_no,:college_major,
                                  :college_name,:college_level,:gender,:about,
                                  :current_country,:counry_of_origin, :industry_interest)
  end
end
