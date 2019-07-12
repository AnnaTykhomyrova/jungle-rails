class UserMailerPreview < ActionMailer::Preview
    def purchase_email
      UserMailer.purchase_email(User.first)
    end
  end