class Mockexam < ApplicationRecord
    has_many :mock_questions
    belongs_to :level
end
