class ProfileController < ApplicationController
  def show
    @user = User.find(params[:id])
    @ads = @user.ads
  end

  def new_passport
    flash.now[:info] = 'Вам необходимо ввести данные о паспорте прежде чем подать объявление'
  end

  def create_passport
    user = User.find(current_user)
    make_seller user
    redirect_to new_ad_path
  end

  def make_seller(user)
    user.toggle :is_seller
    user.update_attribute 'passport_number', params[:user][:passport_number]
  end

  private :make_seller

end
