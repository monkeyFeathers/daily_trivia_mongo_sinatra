
  MongoMapper.database = 'daily_trivia'
  
  class Question
    include MongoMapper::Document
    
    key :question, String, :required => true
    key :correct_response, String, :required => true
    key :date, Time, :required => true
    key :graded, Boolean, :default => false
  end
  
  class Response
    include MongoMapper::EmbeddedDocument
    
    key :date, Time
    key :correct, Boolean
    key :bonus_points, Integer
    key :text, String
  end
  
  class Player
    include MongoMapper::Document
    
    key :name, String
    key :email, String
    key :points, Integer
    key :bonus_points, Integer
    
    many :responses
  end