class ContactMailer < ApplicationMailer
  def send_mail(user)
    @user = user
    mail to: @user.email, subject: "お問い合わせの確認メールについて"
  end
end
