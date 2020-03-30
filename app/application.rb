class Application

  @@items = [
            Item.new('Figs', 2.50)
  ]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
      path_item = req.path.split("/items/").last
      if found_item = @@items.find {|item| item.name == path_item}
        resp.write "FOund"
      else
        resp.write "#{path_item} not found."
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
