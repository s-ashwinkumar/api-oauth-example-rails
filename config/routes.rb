Rails.application.routes.draw do
  get '/', to: 'application#index'
  get 'callback', to: 'application#callback'
  get 'reports', to: 'application#reports'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
