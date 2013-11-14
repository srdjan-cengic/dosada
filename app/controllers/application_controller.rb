class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :get_categories

  private
  def get_categories
  	return Category.pluck(:category_name)
  end

end
