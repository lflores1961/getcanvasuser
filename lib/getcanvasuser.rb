# frozen_string_literal: true

require_relative "getcanvasuser/version"
require "httparty"

module Getcanvasuser
  include HTTParty
  base_uri "canvas.instructure.com"

  class Error < StandardError; end
  # Your code goes here...
  def self.show(userID)
    #get("/api/v1/users/#{userID}.json")
    #res = HTTParty.get('https://canvas.instructure.com/api/v1/users/34172232/profile', headers: { 'Authorization' => "Bearer 7~qIWgJj4c47cqg6RR5cFDsMYhlWEKDu4c2F7qpeVA17PSpRSdZC0EVkXTG3K3bXYb" })
    res = HTTParty.get("https://canvas.instructure.com/api/v1/users/#{userID}/profile", 
                      headers: { 'Authorization' => "Bearer 7~qIWgJj4c47cqg6RR5cFDsMYhlWEKDu4c2F7qpeVA17PSpRSdZC0EVkXTG3K3bXYb" })
    usuario = JSON.parse(res.body)
    #puts usuario.inspect
    puts usuario["sortable_name"]
  end
end

# Getcanvasuser.show(34172232)
