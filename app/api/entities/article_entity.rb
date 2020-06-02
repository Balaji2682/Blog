module Entities
  class ArticleEntity < Grape::Entity
    expose :id
    expose :description, as: :desc
    expose :title
    expose :full_description
  end
end