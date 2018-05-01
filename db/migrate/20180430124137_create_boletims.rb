class CreateBoletims < ActiveRecord::Migration
  def change
    create_table :boletims do |t|
      t.string :nome
      t.integer :idade
      t.boolean :masculino
      t.boolean :feminino
      t.string :email
      t.integer :faltas
      t.integer :turma
      t.string :turno
      t.boolean :aprovado
      t.boolean :reprovado

      t.timestamps null: false
    end
  end
end
