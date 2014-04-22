Textme::Application.routes.draw do
  resources :messages, :only => [:index, :new, :create, :show]
  resources :addressbooks
  resources :contactmessages

  post '/addressbooks/:id', to: 'addressbooks#show'
end
