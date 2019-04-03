Rails.application.routes.draw do
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  
  get '/team', to: 'team#index_team'
  get '/contact', to: 'contact#index_contact'
  get 'welcome/:user_entry', to: 'welcome#show'
  get '/gossip/:id', to: 'gossip#show_gossip', as: 'gossip'
  get '/user/:id', to: 'user#show_user', as: 'user'

end
