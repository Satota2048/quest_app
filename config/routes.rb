Rails.application.routes.draw do
  devise_for :users
  root to: "quests#index"
  resources :quests do
    collection do
      get 'yet_list'
      get 'doing_list'
      get 'success_list'
    end
    resources :successes, only: [:index,:new,:create]
    resources :faileds,  only: [:index,:new,:create]
  end
end
