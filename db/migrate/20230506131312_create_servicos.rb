class CreateServicos < ActiveRecord::Migration[7.0]
  def change
    create_table :servicos do |t|
      t.text :descricao

      t.timestamps
    end
  end
end
