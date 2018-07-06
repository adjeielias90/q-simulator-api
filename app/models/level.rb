class Level < ApplicationRecord
    has_many :mockexams
    has_many :subjects
end
