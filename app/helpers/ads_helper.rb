module AdsHelper

  def back_or(default)
    to = (session[:forwarding_url] || default)
    session.delete(:forwarding_url)
    return to
  end

  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
end
