Rails.application.routes.draw do
  root 'welcome#index'
  get 'about' => 'welome#about'
  get '/home' => 'welcome#home'

  resources :problems do
    collection do
      get :today
      get :step1 
      get :step2
      get :step3
      get :calender
      get :aboutus
    end
  end

  devise_for :users
  resources :users, only: [] do
    collection do
      get :setting
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
