class Mockexam < ApplicationRecord
    has_many :mock_questions
    belongs_to :level
    accepts_nested_attributes_for :mock_questions, allow_destroy: true
end
