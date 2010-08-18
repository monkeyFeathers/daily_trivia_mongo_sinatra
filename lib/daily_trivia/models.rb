module DailyTrivia
  
  class Question
    include MongoMapper::Document
    
    key :question, String
    key :date, Date
    key :correct_response, String
    key :graded, Boolean, :default => false
  end
  
  class Player
    include MongoMapper::Document
    
    key :name, String
    key :email, String
    key :points, Integer
    key :bonus_points, Integer
    
    many :responses
  end
  
  class Response
    include MongoMapper::EmbeddedDocument
    
    key :date, Date
    key :correct, Boolean
    key :bonus_points, Integer
    key :text, String
  end
  
end