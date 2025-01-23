class Movie
  include Mongoid::Document
  include Mongoid::Timestamps

  # Campos do modelo
  field :title, type: String
  field :year, type: String
  field :genre, type: String
  field :director, type: String
  field :plot, type: String
  field :comment, type: String

  # Validações
  validates :title, presence: true
  validates :year, presence: true
end
