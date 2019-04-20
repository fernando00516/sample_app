class UserMailer < ApplicationMailer

  def acount_activation(user)
    @user = user
    mail to: user.mail,subject: "Account activation"
  end

  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
