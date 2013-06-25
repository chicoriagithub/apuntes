class CreateApuntes < ActiveRecord::Migration
  def change
    create_table :apuntes do |t|
      t.string :titulo
      t.string :contenido

      t.timestamps
    end
  end
end
