class Professor < ApplicationRecord
  belongs_to :career
  has_many :extension
end
