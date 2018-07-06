ActiveAdmin.register Mockexam do
   permit_params :name, :level_id, :subject_id, mock_questions_attributes: [ :content, :mock_exam_id ], mock_answers_attributes: [:mock_question_id, :content], mock_correct_answers_attributes: [:content,:mock_answer_id]











form do |f|
    f.inputs 'Mock Exam' do
        f.input :name
        f.input :level_id
        f.input :subject_id
    end

    f.inputs 'Mock Questions' do
        f.has_many :mock_questions, heading: 'Question', allow_destroy: true do |a|
            a.input :content
            a.has_many :mock_answers, heading: 'Answer', allow_destroy: true do |answer|
                answer.input :content
                    answer.has_many :mock_correct_answer, heading: 'Correct Answer', allow_destroy: true do |ans|
                        ans.input :content
                    end
                    answer.actions
            end
        end
    end
    f.actions
end










end
