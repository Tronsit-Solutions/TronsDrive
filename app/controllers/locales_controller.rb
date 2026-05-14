class LocalesController < ApplicationController
  AVAILABLE_LOCALES = %w[en ur ar].freeze

  def update
    locale = params[:locale]
    if AVAILABLE_LOCALES.include?(locale)
      session[:locale] = locale
    end
    redirect_back(fallback_location: root_path)
  end
end
