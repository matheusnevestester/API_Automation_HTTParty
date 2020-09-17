class PostmanEcho
    include HTTParty
    base_uri "https://postman-echo.com"

    def getValues(param1,param2)
        self.class.get("/get?test1=#{param1}&test2=#{param2}", timeout: 100)
    end

    def postRaw(raw)
        self.class.post("/post", :body => raw, :headers => {'Content-Type' => 'text/plain'})
    end
end