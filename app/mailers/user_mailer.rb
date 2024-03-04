class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def new_user_email(user)
    @user  = user
    admins = User.where(role: :admin)

    admins.each do |admin|
      mail(to: admin.email, subject: 'New user signup')
    end
  end
end
