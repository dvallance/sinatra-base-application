ENV['RACK_ENV'] = 'test'
require 'rubygems'
require 'bundler'
Bundler.setup
require File.expand_path('../../app', __FILE__) 
require 'minitest'
require 'minitest/unit'
require 'minitest/mock'
require 'minitest/pride'
require 'rack/test'
