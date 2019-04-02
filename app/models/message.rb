# frozen_string_literal: true

require 'mailgun-ruby'

class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :phone_number, :body, :lang
  validates :name, :email, :body, presence: true

  def send
    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']
    info = {
      from: email,
      to: 'alanvardy@gmail.com',
      subject: "Email from #{name} - corneliakelinske.com",
      text: "From: #{name}, Email: #{email}, Phone: #{phone_number} \n\n #{body}"
    }
    mg_client.send_message 'mg.corneliakelinske.com', info
  end
end
