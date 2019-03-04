require 'rest-client'

    def bing_request(url, query)
       RestClient.get url, {:params => {q: query}}
    end

    puts "Enter your query"
    query = gets.chomp

    url = 'https://www.bing.com/'

    response = bing_request(url, query)

    puts "Code: #{response.code}"
    puts 
    puts "Headers"
    puts response.headers
    puts
    puts "Body"
    puts response.body


