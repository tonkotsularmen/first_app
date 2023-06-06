class Users::BloodTypeController < UsersController
  def update
    binding.pry
    @user = User.find(params[:user][:id])

    case params[:user][:blood_type]
    when 'A'
      @user.A!
    when 'B'
      @user.B!
    when 'O'
      @user.O!
    when 'AB'
      @user.AB!
    end

    respond_to do |format|
      format.json { render json: {user_name: @user.name, blood_type: @user.blood_type} }
    end
  end
end