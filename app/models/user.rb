class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
    validates :phone_number, presence: true
    after_create :thank_user

    private
    
    def thank_user     
        client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])

        client.messages
            .create({
                body: 'Thank you for signing up!',
                from: ENV['TWILIO_PHONE_NUMBER'],
                to: phone_number
            })
    end
end
