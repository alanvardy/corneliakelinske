require 'sinatra'

class App < Sinatra::Base
  get '/' do
    @title = 'CorneliaKelinske.com'
    erb :"en/index", layout: :"layouts/en"
  end
  get '/aboutme' do
    @title = 'CK.com - About Me'
    erb :"en/aboutme", layout: :"layouts/en"
  end
  get '/services' do
    @title = 'CK.com - Services'
    erb :"en/services", layout: :"layouts/en"
  end
  get '/translation' do
    @title = 'CK.com - Translation'
    erb :"en/translation", layout: :"layouts/en"
  end
  get '/interpretation' do
    @title = 'CK.com - Interpretation'
    erb :"en/interpretation", layout: :"layouts/en"
  end
  get '/feedback' do
    @title = 'CK.com - Feedback'
    erb :"en/feedback", layout: :"layouts/en"
  end
  get '/contact' do
    @title = 'CK.com - Contact'
    erb :"en/contact", layout: :"layouts/en"
  end
end
