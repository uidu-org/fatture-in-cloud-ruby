# frozen_string_literal: true

module FattureInCloudRuby
  module Clients
    class Proforma < ApiStruct::Client
      fatture_in_cloud :proforma

      def list(**params)
        post(
          path: 'proforma/lista',
          json: {
            api_uid: FattureInCloudRuby::Settings.config.api_uid,
            api_key: FattureInCloudRuby::Settings.config.api_key
          }.merge(params)
        )
      end

      def retrieve(id); end

      def delete(id)
        post(
          path: 'proforma/elimina',
          json: {
            api_uid: FattureInCloudRuby::Settings.config.api_uid,
            api_key: FattureInCloudRuby::Settings.config.api_key
          }.merge(id: id)
        )
      end

      def create(**params)
        puts params.inspect
        post(
          path: 'proforma/nuovo',
          json: {
            api_uid: FattureInCloudRuby::Settings.config.api_uid,
            api_key: FattureInCloudRuby::Settings.config.api_key
          }.merge(params)
        )
      end
    end
  end
end
