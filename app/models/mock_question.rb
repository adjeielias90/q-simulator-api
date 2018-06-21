class MockQuestion < ApplicationRecord
    belongs_to :mock_exams
    has_many :mock_answers
    accepts_nested_attributes_for :mock_answers, allow_destroy: true
end
