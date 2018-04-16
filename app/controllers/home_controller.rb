require 'net/http'
require 'uri'

class HomeController < ApplicationController
  IFTTT_TOKEN = ENV['IFTTT_TOKEN']

  def livingroom_light
    uri = URI.parse("https://maker.ifttt.com/trigger/toggle_livingroom_light/with/key/#{IFTTT_TOKEN}")
    response = Net::HTTP.get_response(uri)
    puts response.code
    puts response.body
  end

  def bedroom_light
    uri = URI.parse("https://maker.ifttt.com/trigger/toggle_bedroom_light/with/key/#{IFTTT_TOKEN}")
    response = Net::HTTP.get_response(uri)
    puts response.code
    puts response.body
  end

  def bedroom_ac
    uri = URI.parse("https://maker.ifttt.com/trigger/toggle_bedroom_ac/with/key/#{IFTTT_TOKEN}")
    response = Net::HTTP.get_response(uri)
    puts response.code
    puts response.body
  end
end
