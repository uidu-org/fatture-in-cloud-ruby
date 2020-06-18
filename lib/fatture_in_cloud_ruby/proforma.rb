# frozen_string_literal: true

module FattureInCloudRuby
  class Proforma < ApiStruct::Entity
    client_service FattureInCloudRuby::Clients::Proforma

    # client_service AuthorsClient, prefix: true, only: :index
    # alias:
    # client_service AuthorsClient, prefix: :prefix, except: :index

    attr_entity :success, :error, :error_code
    attr_entity :nome, :id_cliente, :id_fornitore, :indirizzo_via, :indirizzo_cap, :indirizzo_citta, :indirizzo_provincia
    attr_entity :paese, :paese_iso
    attr_entity :piva, :cf
    attr_entity :salva_anagrafica
    attr_entity :prezzi_ivati
    attr_entity :lista_articoli
  end
end
