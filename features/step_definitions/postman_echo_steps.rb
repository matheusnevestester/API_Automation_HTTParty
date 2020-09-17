######### get method

Given('I have the API endpoint for GET request') do
    # in PostmanEcho class
end
  
When('I make the request for the GET request') do
    max_retries = 3
    times_retried = 0
    begin
        $response =  @postman_echo_model.getValues("testes","novos")
    rescue Net::OpenTimeout => error
      if times_retried < max_retries
        times_retried += 1
        log "Failed to get response, retry #{times_retried}/#{max_retries}"
        retry
      else
        log "Script failed during scenario due to timeout"
        exit(1)
      end
    end
end

Then('the API must return the status code {int}') do |int|
    expect($response.code).to eq(int)
end

Then('the API must return the correct values in the GET request') do
    expect($response["args"]["test1"]).to eq("testes")
    expect($response["args"]["test2"]).to eq("novos")

end

######## post method

Given('I have the API endpoint for POST request') do
    # in PostmanEcho class
end
  
When('I make the request for the POST request passing a raw') do
    $response = @postman_echo_model.postRaw(@raw)
end
  
Then('the API must return the correct values in the POST response') do
    log $response["data"]
    expect($response["data"]).to eq(@raw)
end