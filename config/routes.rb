Rails.application.routes.draw do
  get 'employees/new'

  get 'employees/show'

  get 'employees/edit'

  get 'employees/index'

  get 'employees/create'

  get 'employees/delete'

  get 'dogs/new'

  get 'dogs/index'

  get 'dogs/create'

  get 'dogs/edit'

  get 'dogs/show'

  get 'dogs/delete'

  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
