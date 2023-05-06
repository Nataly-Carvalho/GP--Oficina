json.extract! oficina, :id, :cliente, :endereco, :telefone, :data_entrada, :data_saida, :valor_servico, :concluido, :created_at, :updated_at
json.url oficina_url(oficina, format: :json)
