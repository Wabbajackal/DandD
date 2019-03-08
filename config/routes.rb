Rails.application.routes.draw do
  get 'feats/index'
  get 'spells/index'
  get 'spells/show'
  resources :materials, only: [:index, :show]
  resources :spells, only: [:index, :show]
  resources :feats, only: [:index]
  # resources :spells, param: :name
  # get 'materials' => 'materials#index'

  root to: 'home#index'

  # get 'materials/:id', to: 'materials#show', id: /\d+/
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
