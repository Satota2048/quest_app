Rails.application.routes.draw do
  devise_for :users
  root to: "quests#index"
  resources :quests do
    collection do
      get 'yet_list'
      get 'doing_list'
    end
    resources :quest_success_results, only: [:index,:create]
    resources :quest_failed_results, only: [:index,:create]
    member do
      get 'decide'
    end
  end
end
