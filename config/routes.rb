# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resources :issues do
    post "tests/:id" => "tests#update"
  end
end
