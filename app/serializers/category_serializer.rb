class CategorySerializer < ActiveModel::Serializer
  attributes :id
  has_many :movies
end
