Rails.application.routes.draw do
  resources :events
  root 'welcome#index'
  get '/auth/:provider/callback' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  resource :retirements

  resources :events do
    resources :tickets
  end
  get 'status' => 'status#index', defaults: { format: 'json' }
end
