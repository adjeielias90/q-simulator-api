ActiveAdmin.register Survey do
permit_params :name, questions_attributes: [:survey_id, :content, :_destroy], answers_attributes: [:question_id, :content, :_destroy]
    
        form do |f|
            f.inputs 'Survey' do
            f.input :name
            end

            f.inputs 'Questions' do
                f.has_many :questions, heading: 'Question', allow_destroy: true do |a|
                    a.input :content
                    a.has_many :answers, heading: 'Answer', allow_destroy: true do |ans|
                        ans.input :content
                            ans.actions
                    end
                end
            end
            f.actions
        end



end
