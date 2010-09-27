#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/test_helper'

class DailyTriviaMailTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe "Building and sending Questions" do
    
    describe 'build email' do
      
      setup do
        get '/question/today'
      end
      
      test 'route' do
        assert last_response.ok?
      end
      
      test 'select question for the day' do
        assert_equal Date.today, last_response.body
      end
      
      test 'add selected question to email body' do
      end
      
      test 'select all players and add as recipients' do
      end
      
      test 'send email' do
      end
      
    end
    
  end
  
end