# frozen_string_literal: true

class MessagesController < ApplicationController
  def new
    @message = Message.new
    @lang = params['lang']
  end

  def create
    @message = Message.new message_params
    if verify_recaptcha(model: @message) && @message.valid?
      @message.send
      flash[:success] = if @message.lang == 'de'
                          'Ich habe Ihre Nachricht erhalten und werde mich bald melden!'
                        else
                          'I have received your message and will be in touch soon!'
                        end
      redirect_to root_path
    else
      if @message.lang == 'de'
        flash.now[:warning] = 'Beim Senden Ihrer Nachricht ist ein Fehler aufgetreten. Bitte versuche es erneut.'
      else
        flash.now[:warning] = 'There was an error sending your message. Please try again.'
      end
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :phone_number, :body, :lang)
  end
end
