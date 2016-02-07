class AdsController < ApplicationController
  before_action 'is_signed_in_seller?', only: 'new'

  def index
    @ads = Ad.all.order('created_at DESC')
  end

  def new
    @ad = current_user.ads.new
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def create
    @ad = current_user.ads.new (ad_params)
    if @ad.save
      flash[:success] = 'Вы успешно разместили объявление'
      redirect_to ads_path
    else
      flash[:danger] = 'Ошибки в процессе регистрации'
      render new_ad_path
    end

  end

  def is_signed_in_seller?
    unless current_user
      flash[:info] = "Вам необходимо войти, чтобы подать объявление"
      store_location
      redirect_to new_user_session_path
      return
    end
    unless current_user.is_seller?
      store_location
      redirect_to passport_path
    end
  end

  def ad_params
    params.require(:ad).permit(:title, :content, :city, :address, :price)
  end

  private :is_signed_in_seller?, :ad_params

end
