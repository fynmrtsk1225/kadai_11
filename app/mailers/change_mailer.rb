class ChangeMailer < ApplicationMailer
  def change_mail(owner)
    @owner = owner

    mail to: @owner.owner.email, subject: "チーム権限を付与されました！"
  end

  def agendas_mail(email)
    @email = email
    mail to: email, subject: "アジェンダが削除されました！"
  end
end