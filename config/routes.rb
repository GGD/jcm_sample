Rails.application.routes.draw do
  root to: 'contacts#index'

  resources :agents

  resources :contacts do
    put :choose
  end

  resources :news, only: :index
end
