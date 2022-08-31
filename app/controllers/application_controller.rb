class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  private

  def render_not_found(not_found)
    render json: { errors: not_found.message }, status: :not_found
  end
end
