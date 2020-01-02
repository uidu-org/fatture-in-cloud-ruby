# frozen_string_literal: true

module FattureInCloudRuby
  class Corrispettivi < ApiStruct::Entity
    client_service FattureInCloudRuby::Clients::Corrispettivi

    # client_service AuthorsClient, prefix: true, only: :index
    # alias:
    # client_service AuthorsClient, prefix: :prefix, except: :index

    attr_entity :success, :error, :error_code,
                :id, :metodo, :importi_ivati,
                :desc, :riga, :protocollo_auto, :tipo, :lista_corrispettivi,
                :new_id
  end
end
