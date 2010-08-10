module DailyTrivia
  
  class Question
    include MongoMapper::Document
    
    key :question
    key :date
    key :correct_answer
    key :graded?
  end
  
  class Player
    include MongoMapper::Document
    
    key :name
    key :email
    key :points
    key :bonus_points
    
    many :responses
  end
  
  class Response
    include MongoMapper::EmbeddedDocument
    
    key :date
    key :correct?
    key :bonus_points
    key :text
  end
  
end