lib_dir = File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'test/unit'
require 'fileutils'
require 'contest'
$LOAD_PATH.unshift lib_dir unless $:.include?(lib_dir)
require 'daily_trivia'