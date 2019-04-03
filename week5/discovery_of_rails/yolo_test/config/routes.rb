Rails.application.routes.draw do
  get 'message/:user_entry', to: 'message#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
