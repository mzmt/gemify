module SlackNotify
  extend ActiveSupport::Concern

  def slack_notify(text, webhook_url)
    headers = { 'Content-Type': 'application/json' }
    uri = URI.parse(webhook_url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme === 'https'
    http.post(uri, { text: text }.to_json, headers)
  end
end
