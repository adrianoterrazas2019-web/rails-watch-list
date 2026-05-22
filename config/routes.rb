Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles, except: :index

  resources :lists, only: [ :index, :show, :new, :create ] do
   resources :bookmarks, only: [ :new, :create ]
  end
  resources :bookmarks, only: [ :destroy ] # rubocop:disable Layout/SpaceInseReferenceBrackets
end
