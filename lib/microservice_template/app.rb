# frozen_string_literal: true

require 'sinatra/base'

module MicroserviceTemplate
  class App < Sinatra::Base
    set :root, File.expand_path('../..', __dir__ || '..')

    get '/frank-says' do
      content_type :txt
      'Put this in your pipe & smoke it!'
    end
  end
end
