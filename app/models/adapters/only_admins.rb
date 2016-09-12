class Adapters::OnlyAdmins < ActiveAdmin::AuthorizationAdapter

  # def authorized?(action, subject = nil)
  #   user.admin?
  # end

  def authorized?(action, subject = nil)
    user.role == "admin"
  end

end