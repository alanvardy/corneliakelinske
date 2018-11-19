# frozen_string_literal: true

Rails.application.routes.draw do
  get 'de/ubermich'
  get 'de/leistungen'
  get 'de/feedback'
  get 'de/kontakt'
  get 'de/ubersetzen'
  get 'de/dolmetschen'
  root 'en#index'
  get 'en/', to: 'en#index'
  get 'en/aboutme'
  get 'en/contact'
  get 'en/feedback'
  get 'en/index'
  get 'en/interpretation'
  get 'en/resume'
  get 'en/services'
  get 'en/translation'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end