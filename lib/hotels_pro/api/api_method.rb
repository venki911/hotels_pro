module HotelsPro
  module Api
    class ApiMethod
      def perform
        api_method = self.class.name.to_s.demodulize
        request = Request.new(api_method, to_api_params)
        response = request.perform
        Result.new(response.data)
      end
    end
  end
end