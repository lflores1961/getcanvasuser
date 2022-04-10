# frozen_string_literal: true

require_relative "getcanvasuser/version"
require "httparty"

module Getcanvasuser
  include HTTParty
  base_uri "canvas.instructure.com"

  class Error < StandardError; end
  # Your code goes here...
  def self.show(userID)
    get("/api/v1/users/#{userID}.json")
  end
end

# Getcanvasuser.show(34172232)
