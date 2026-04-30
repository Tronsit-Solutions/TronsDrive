# Active Storage optimization for faster image loading
Rails.application.configure do
  config.active_storage.variant_processor = :vips

  if Rails.env.production?
    config.active_storage.resolve_model_to_route = :rails_storage_proxy
    config.active_storage.track_variants = true
  end
end
