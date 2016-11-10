Rails.application.routes.draw do
  root 'welcome#index'
  resources :problems

  devise_for :users

  get '/today' => 'problems#today'
  get '/newstep' =>'problems#newstep'
  get '/aboutus' =>'problems#aboutus'
  get '/settings' =>'problems#settings'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
