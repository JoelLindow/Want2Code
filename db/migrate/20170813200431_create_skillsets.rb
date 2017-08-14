class CreateSkillsets < ActiveRecord::Migration[5.1]
  def change
    create_table :skillsets do |t|
      t.references :coder, foreign_key: true
      t.references :language, foreign_key: true
      t.text :skill_level
      t.timestamps
    end
  end
end
