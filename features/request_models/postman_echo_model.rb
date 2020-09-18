class PostmanEcho
  include HTTParty
  base_uri 'https://postman-echo.com'

  def get_values(param1,param2)
    self.class.get("/get?test1=#{param1}&test2=#{param2}", timeout: 100)
  end

  def post_raw(raw)
    self.class.post("/post", :body => raw, :headers => {'Content-Type' => 'text/plain'})
  end
end