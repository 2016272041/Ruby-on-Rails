json.extract! question, :id, :quesid, :questions, :option1, :option2, :option3, :option4, :answer, :created_at, :updated_at
json.url question_url(question, format: :json)
