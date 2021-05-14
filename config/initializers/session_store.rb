if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_varre_shop_app", domain: "varre-shop-app.herokuapp.com"
else 
  Rails.application.config.session_store :cookie_store, key: "_varre_shop_app"
end
