Rails.application.routes.draw do
  resources :events
  root 'welcome#index'
  get '/auth/:provider/callback' => 'session#create'
  delete '/logout' => 'sessions#destroy'
end
