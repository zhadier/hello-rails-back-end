Rails.application.routes.draw do
  namespace :v1, default: { format: JSON } do
    resources :greetings, only: %i[index]
  end
end
