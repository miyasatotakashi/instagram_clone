class ContactMailer < ApplicationMailer
  def send_mail(user)
    @user = user
    mail to: @user.email, subject: "新規投稿がありました"
  end
end
