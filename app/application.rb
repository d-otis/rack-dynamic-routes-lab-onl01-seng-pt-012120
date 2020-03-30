class Application

  @@items = [1,2,3]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
      resp.write "Item page!\n"
      resp.write @@items
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
