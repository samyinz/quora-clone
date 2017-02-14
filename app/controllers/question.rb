# show all questions
# get '/question' do
# 	@list = Question.all
# 	erb :"question/all"
# end

# # show specific question
# get '/question/:id' do
# 	@question = Question.find_by(id: params[:id])
# 	@answers_list = Answer.where(question_id: params[:id])
# 	erb :"question/view"
# end

# # submit new question
# get '/question/new' do
# 	erb :"question/new"
# end

# # create new question to database
# post '/question' do
# 	@question = Question.new
# end
