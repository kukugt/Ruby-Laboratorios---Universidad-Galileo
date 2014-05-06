class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nombre_equipo
      t.string :nombre_entrenador
      t.string :img_bandera
      t.string :img_uniforme
      t.string :descripcion

      t.timestamps
    end
  end
end
