# webhook_registration.rb
require 'httparty'

response = HTTParty.post('https://flexhire.com/api/v1/webhooks',
                         headers: { 'Authorization' => 'Bearer nzfdgzr6e3yz28nd' },
                         body: { url: 'https://your-app-url.com/webhooks/flexhire' })

if response.success?
  puts 'Webhook registered successfully!'
else
  puts 'Webhook registration failed.'
end
