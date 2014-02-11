DesafioProgramacao1::Application.routes.draw do

  root "transactions#index"
  post "transactions/import", to: "transactions#import", as: :import

  get "users/new"
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
end
