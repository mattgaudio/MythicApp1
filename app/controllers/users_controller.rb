class UsersController < Clearance::UsersController
  def new
  end

  def create
    @user = user_from_params
    if @user.save
      sign_in @user
      redirect_to new_player_path
    else
      flash.now[:error] = "Failed"
      redirect_to sign_up_path
    end
  end

  def edit
    flash[:success] = "Hello world"
  end

  def update
    if current_user.update_attributes(user_params)
      flash[:success] = "User Settings Have Been Updated"
      redirect_to dash_settings_path
    else
      flash[:fail] = "There was an error unfortunately"
    end
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

 def user_from_params
   email = user_params.delete(:email)
   password = user_params.delete(:password)
   password_confirmation = user_params.delete(:password_confirmation)

   Clearance.configuration.user_model.new(user_params).tap do |user|
     user.email = email
     user.password = password
     user.password_confirmation = password_confirmation
   end
 end


end
