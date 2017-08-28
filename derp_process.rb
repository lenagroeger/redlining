require 'csv'
require 'json'

data = CSV.open('data/ENV_REST_SITE_SIMPLE.csv', :headers => true).map { |x| x.to_h }.to_json

puts data

File.open('data/env_rest_site.json', 'w') do |file|
  file.puts data
end