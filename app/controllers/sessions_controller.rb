class SessionsController < Devise::SessionsController
  respond_to :json
private
  def respond_with(resource, _opts = {})
      super do
        render json: { user: current_user }.to_json and return
      end
      #render json: resource
    end

    def respond_to_on_destroy
      head :ok
    end
end
