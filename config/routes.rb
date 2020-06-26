Rails.application.routes.draw do
  get 'gyms/index'
  get 'gyms/show'
  resources :gym_members
  resources :members
  resources :gyms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
