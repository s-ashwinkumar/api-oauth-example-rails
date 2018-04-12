require 'genomelink'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  PARAMETERS = ["endurance-performance","caffeine-consumption","eye-color"]

  def index
    redirect_to '/reports' if session[:genomelink_token].present?
    @genomelink_auth =  Genomelink::Oauth.authorization_url("report:endurance-performance report:caffeine-consumption report:eye-color")
  end

  def callback
    session[:genomelink_code] = params[:code]
    session[:genomelink_token] =  Genomelink::Oauth.get_token(params[:code])
    redirect_to "/reports"
  end

  def reports
    @data = {}
    PARAMETERS.each do |att|
      @data[att] = Genomelink::Report.fetch(att,session[:genomelink_token])
    end
  end
end
