# frozen_string_literal: true

Rails.application.routes.draw do
  root 'en#index'
  get 'en/aboutme'
  get 'en/contact'
  get 'en/feedback'
  get 'en/index'
  get 'en/interpretation'
  get 'en/overview'
  get 'en/translation'
  get 'en/licenses'
  get 'de/ubermich'
  get 'de/allgemeines'
  get 'de/feedback'
  get 'de/kontakt'
  get 'de/ubersetzen'
  get 'de/dolmetschen'
  get 'de/index'
  get 'de/linzenzen'
  get '/check.txt', to: proc {[200, {}, ['it_works']]}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
