Rails.application.routes.draw do
  get 'static_pages/home' , as: 'home'
  get 'dog_parks/index', as: 'dog_parks'
  resources 'dog_parks', only: [:show]
  get 'found_pets/index', as: 'found_pets'
  get 'found_pets/show', as: 'found_pet'
  get 'strays/index', as: 'strays'
  get 'strays/show', as: 'stray'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
end
