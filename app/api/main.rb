# frozen_string_literal: true

# module API
class Main < Grape::API # :nodoc:
  version 'api', using: :path
  format :json
  prefix :alpha_blog

  params do
    requires :title, allow_blank: false
    optional :description, default: 'This is default description'
    # requires :age, type: Boolean
    # requires :address, type: Array do
    #   requires :street
    #   requires :city
    #   requires :state, values: %w[ Tamilnadu Andhra Karnataka Kerala ]
    #   given state: ->(value) { value == 'Tamilnadu' } do
    #     requires :zipcode
    #   end
    # end
  end
  post 'article_add' do
    d_params = declared(params, include_missing: false)
    present Article.create(d_params), with: Entities::ArticleEntity
  end

  get 'articles' do
    present Article.all, with: Entities::ArticleEntity
  end
end
# end