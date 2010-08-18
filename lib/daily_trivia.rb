dir = File.dirname(__FILE__)
$LOAD_PATH.unshift dir unless $LOAD_PATH.include?(dir)
require 'rubygems'
require 'mongo_mapper'
require 'daily_trivia/admin'
require 'daily_trivia/models'