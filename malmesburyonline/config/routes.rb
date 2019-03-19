Rails.application.routes.draw do
#  get 'walk_section/go_for'
  #get 'walk_section/go_for/:id', to: 'walk_section#go_for'
  resources :walks, only: [:index, :show] do
    resources :walk_sections, only: [:show]
  end
#  get '/:id', to: 'walk_section#go_for'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
