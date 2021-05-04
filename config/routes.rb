Rails.application.routes.draw do
  devise_for :users
  root to: "quests#index"
  resources :quests do
    collection do
      get 'choosed_list'
    end
  end
end
