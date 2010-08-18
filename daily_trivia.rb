require 'rubygems'
require 'sinatra'
require 'haml'
require 'lib/daily_trivia'

get '/' do
  haml :index
end


######################################################
# adding and sending questions
######################################################

get '/add_question' do
  haml :add_question
end

post '/new_question' do
  @q = DailyTrivia::Question.new params
  @question = params["question"]
  @correct_response = params["correct_response"]
  @date = params["q_date"]
  haml :new_question
end

####################################################
# checking responses and grading
####################################################

get '/grading_sheet' do
  
end

post '/grade' do
  
end

######################################################
# running and sending reports
#####################################################