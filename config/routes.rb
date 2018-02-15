Rails.application.routes.draw do
root 'homes#index'

post '/posts', to: 'homes#twitte'end
