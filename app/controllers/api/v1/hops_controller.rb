module Api
  module V1
    class HopsController < ApplicationController
      before_filter :ensure_updated_data
      respond_to :json
      def index
        respond_with Hop.all
      end
      
      def show
        respond_with Hop.find(params[:id])
      end
    end
  end
end