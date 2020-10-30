require "sinatra/base"
require "./lib/slack_service.rb"

class ErrbitSlackNotifier < Sinatra::Base
  post '/slack_notifications' do
    SlackService.create_notification(params)
  end
end
