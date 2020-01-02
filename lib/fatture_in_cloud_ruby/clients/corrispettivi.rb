module FattureInCloudRuby
  module Clients
    class Corrispettivi < ApiStruct::Client
      fatture_in_cloud :corrispettivi

      def list(year)
        post(
          path: 'corrispettivi/lista',
          json: {
            anno: year,
            api_uid: FattureInCloudRuby::Settings.config.api_uid,
            api_key: FattureInCloudRuby::Settings.config.api_key
          }
        )
      end

      def retrieve(id)
      end

      def create(tipo: 'ricevute', metodo:, importi_ivati: true, desc:, riga:)
        post(
          path: 'corrispettivi/nuovo',
          json: {
            api_uid: FattureInCloudRuby::Settings.config.api_uid,
            api_key: FattureInCloudRuby::Settings.config.api_key,
            tipo: tipo,
            protocollo_auto: true,
            metodo: metodo,
            desc: desc,
            importi_ivati: importi_ivati,
            lista_righe: [
              {
                importo: riga[:importo],
                cod_iva: riga[:cod_iva]
              }
            ]
          }
        )
      end
    end
  end
end
