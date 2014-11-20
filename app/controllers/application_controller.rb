class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :superuser?, :manager?, :manager, :full_name

  protected

  def superuser?
    current_login && current_login.superuser?
  end

  def manager?
    current_login && current_login.loggable.present?
  end

  def manager
    manager? ? current_login.loggable : nil
  end

  def require_superuser
    redirect_to root_path, alert: "You are not allowed to perform this operation" unless superuser?
  end

  def require_manager
    redirect_to root_path, alert: "You are not allowed to perform this operation" unless (manager? || superuser?)
  end

  def full_name
    return manager.first_name + " " + manager.last_name
  end
end
