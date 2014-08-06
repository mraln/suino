class Parto < ActiveRecord::Base
  belongs_to :matriz
  belongs_to :reprodutor
end
