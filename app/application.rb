class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
      item = req.path.split("/items/").last
      if @@items.include?(item)
        
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
