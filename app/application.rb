class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  end

  if req.path.match(/items/)
    resp.write "Item page!"
  end

end
