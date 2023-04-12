# webhook_registration.rb
require 'httparty'

response = HTTParty.post('https://api.flexhire.com/api/v2',
                         headers: { 'Authorization' => 'Bearer nzfdgzr6e3yz28nd' },
                         body: { url: 'https://flexhire.herokuapp.com/webhooks/flexhire' })

if response.success?
  puts 'Webhook registered successfully!'
else
  puts 'Webhook registration failed.'
end
