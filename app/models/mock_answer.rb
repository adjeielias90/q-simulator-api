class MockAnswer < ApplicationRecord
    belongs_to :mock_question
    has_one :mock_correct_answer
    accepts_nested_attributes_for :mock_correct_answer, allow_destroy: true
end
