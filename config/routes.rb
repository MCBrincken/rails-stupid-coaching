# config/routes.rb
Rails.application.routes.draw do
  # Generic syntax:
  # verb "path", to: "controller#action"
  root                   to: "questions#home"
  get "about",           to: "questions#about",      as: :about
  get "contact",         to: "questions#contact",    as: :contact
  get "answer",          to: "questions#answer",     as: :answer
end
