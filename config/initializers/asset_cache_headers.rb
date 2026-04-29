# Ensure fingerprinted assets get long-lived, immutable cache headers.
# Sprockets appends a digest to asset filenames (e.g. application-abc123.css),
# so the content at a given URL never changes — browsers should cache forever.
if Rails.application.config.middleware.middlewares.include?(ActionDispatch::Static)
  Rails.application.config.middleware.insert_before(
    ActionDispatch::Static,
    Class.new do
      def initialize(app)
        @app = app
      end

      def call(env)
        status, headers, response = @app.call(env)

        if env["PATH_INFO"]&.start_with?("/assets/")
          headers["Cache-Control"] = "public, max-age=31536000, immutable"
        end

        [ status, headers, response ]
      end
    end
  )
end
