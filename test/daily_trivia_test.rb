#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/test_helper'

class DailyTriviaTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
  
  describe "Question CRUD" do
    
    test 'create new question' do
    end
    
  end
  
  describe "Player CRUD" do
  
    test 'create new player' do
    end
  
  end
  

  
  describe "Receiving responses" do
  end
  
  describe "grading" do
  end
  
end