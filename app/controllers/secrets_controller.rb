class SecretsController < ApplicationController

  before_action :require_login

  def show
    if session[:name].blank?
      redirect_to '/login'
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
