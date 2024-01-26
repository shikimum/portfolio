require 'line/bot'

class PushLineJob < ApplicationJob
  queue_as :default

  def perform(line_user_id:, text:)
    message = {
      type: 'text',
      text: text
    }
    response = line_client.push_message(line_user_id, message)
    logger.info response.body
    logger.info "PushLineSuccess"
  end

  private

  def line_client
    Line::Bot::Client.new { |config|
      config.channel_id = ENV.fetch("LINE_MESSAGE_CHANNEL_ID")
      config.channel_secret = ENV.fetch("LIEN_MESSAGE_CHANNEL_SECRET")
      config.channel_token = ENV.fetch("LIEN_MESSAGE_CHANNEL_TOKEN")
    }
  end
end
