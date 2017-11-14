class Career < ApplicationRecord
	has_many :students
	audited
end
