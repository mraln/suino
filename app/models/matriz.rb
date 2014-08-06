class Matriz < ActiveRecord::Base
  validates :numid, uniqueness: true

  has_many :partos
end
