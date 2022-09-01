Rails.application.routes.draw do
  # define routes for Primary Tech Stack
  resources :primary_tech_stacks
  # define routes for Secondary Tech Stack
  resources :secondary_tech_stacks
end
