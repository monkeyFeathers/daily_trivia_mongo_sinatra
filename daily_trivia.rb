require 'rubygems'
require 'sinatra'
require 'haml'
require 'lib/daily_trivia'
require 'mail'


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
    question = params["question"]
    correct_response = params["correct_response"]
    date = params["q_date"].split("/")
    date = Time.mktime(date[2],date[0],date[1])
    # @q = Question.create(:date => date,:question => question, :correct_response => correct_response)
    #     @question_added = []
    #     [question, correct_response, date].each {|ob| @question_added << ob}
    haml :index
  end

#####################################################
# add players
#####################################################

  get '/add_player' do
    haml :new_player
  end
  
  post '/new_player' do
    
  end

####################################################
# checking responses and grading
####################################################

  get '/scoring_sheet' do
    # query the question for the day
    
    # figure out time stuff
    
    @date = '8/17/2010'
    @question = Question.find(:conditions =>{:date => @date})
    @players = Player.all(:conditions =>{"responses.date" => @date})
    haml :scoring_sheet
    # somehow get the players text for that day.
    
  end

  post '/submit_score' do
    params["player_id"] = :player_id
    params.inspect
  end

######################################################
# running and sending reports
#####################################################


######################################################
# helpers
#####################################################

  helpers do
    
  end

