# frozen_string_literal: true

module FattureInCloudRuby
  module Clients
    class Corrispettivi < ApiStruct::Client
      fatture_in_cloud :corrispettivi

      def list(**params)
        post(
          path: 'corrispettivi/lista',
          json: {
            api_uid: FattureInCloudRuby::Settings.config.api_uid,
            api_key: FattureInCloudRuby::Settings.config.api_key
          }.merge(params)
        )
      end

      def retrieve(id); end

      def delete(id)
        post(
          path: 'corrispettivi/elimina',
          json: {
            api_uid: FattureInCloudRuby::Settings.config.api_uid,
            api_key: FattureInCloudRuby::Settings.config.api_key
          }.merge(id: id)
        )
      end

      def create(**params)
        puts params.inspect
        post(
          path: 'corrispettivi/nuovo',
          json: {
            api_uid: FattureInCloudRuby::Settings.config.api_uid,
            api_key: FattureInCloudRuby::Settings.config.api_key
          }.merge(params)
        )
      end
    end
  end
end
