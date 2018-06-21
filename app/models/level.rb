class Level < ApplicationRecord
    has_many :mock_exams
    has_many :subjects
end
