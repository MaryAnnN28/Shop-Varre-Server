Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3000"

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head], 
      credentials: true
  end
  
  # allow do
  #   origins "https://varre-shop-app.herokuapp.com"
  #   # This is where the domain of where you are hosting to 

  #   resource '*',
  #     headers: :any,
  #     methods: [:get, :post, :put, :patch, :delete, :options, :head], 
  #     credentials: true
  # end
end