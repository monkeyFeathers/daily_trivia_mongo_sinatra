dir = File.dirname(__FILE__)
$LOAD_PATH.unshift dir unless $LOAD_PATH.include?(dir)
require 'rubygems'
require 'mongomapper'
require 'daily_trivia/admin'