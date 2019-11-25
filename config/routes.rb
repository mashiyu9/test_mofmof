Rails.application.routes.draw do
  resources :propeties, only: %i!index new show edit create update destroy!
end
