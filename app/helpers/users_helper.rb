module UsersHelper
  def admin_only
    unless current_user.admin
      redirect_to root_path, :notice => "You must be authorized to go there"
    end
  end

end
