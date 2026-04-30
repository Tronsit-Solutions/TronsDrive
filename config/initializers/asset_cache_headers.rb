asset_cache_middleware = Class.new do
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    headers["Cache-Control"] = "public, max-age=31536000, immutable" if env["PATH_INFO"]&.start_with?("/assets/")
    [ status, headers, response ]
  end
end

begin
  Rails.application.config.middleware.insert_before(ActionDispatch::Static, asset_cache_middleware)
rescue ArgumentError
  Rails.application.config.middleware.use(asset_cache_middleware)
end
