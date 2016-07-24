class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.belongs_to :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
