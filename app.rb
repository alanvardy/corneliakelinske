require "sinatra"

class App < Sinatra::Base
  get "/" do
    @title = "Welcome"
    erb :"en/index", :layout => :"en/layout"
  end
  get "/aboutme" do
    @title = "About Me"
    erb :"en/aboutme", :layout => :"en/layout"
  end
  get "/services" do
    @title = "Services"
    erb :"en/services", :layout => :"en/layout"
  end
  get "/translation" do
    @title = "Translation"
    erb :"en/translation", :layout => :"en/layout"
  end
  get "/interpretation" do
    @title = "Interpretation"
    erb :"en/interpretation", :layout => :"en/layout"
  end
  get "/feedback" do
    @title = "Feedback"
    erb :"en/feedback", :layout => :"en/layout"
  end
  get "/contact" do
    @title = "Contact"
    erb :"en/contact", :layout => :"en/layout"
  end
end