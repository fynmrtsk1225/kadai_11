class ChangeMailer < ApplicationMailer
  def change_mail(owner)
    @owner = owner

    mail to: @owner.owner.email, subject: "チーム権限を付与されました！"
  end
end
