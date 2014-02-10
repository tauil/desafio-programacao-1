DesafioProgramacao1::Application.routes.draw do
  root "transactions#index"
  post "transactions/import", to: "transactions#import", as: :import
end
