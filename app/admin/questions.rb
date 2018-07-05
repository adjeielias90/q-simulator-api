ActiveAdmin.register Question do
    belongs_to :survey
    permit_params :content, :survey_id, answers_attributes: [:survey_id, :content, :_destroy]
    form do |f|
        f.inputs 'Question' do
        f.input :content
        end

        f.inputs 'Answers' do
            f.has_many :answers, heading: 'Answers', allow_destroy: true do |a|
                a.input :content
            a.actions
            end
        end
        f.actions
    end
end
