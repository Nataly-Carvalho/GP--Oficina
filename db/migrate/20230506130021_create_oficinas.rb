class CreateOficinas < ActiveRecord::Migration[7.0]
  def change
    create_table :oficinas do |t|
      t.string :cliente
      t.string :endereco
      t.integer :telefone
      t.date :data_entrada
      t.date :data_saida
      t.float :valor_servico
      t.boolean :concluido

      t.timestamps
    end
  end
end
