class MockAnswer < ApplicationRecord
    belongs_to :mock_question
    has_one :mock_correct_answer
    
end
