module FattureInCloud
  module Clients
    class Corrispettivi < ApiStruct::Client
      fatture_in_cloud :corrispettivi

      def list(**options)
        post(params: options)
      end
    end
  end
end