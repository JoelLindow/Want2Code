class CreateCoders < ActiveRecord::Migration[5.1]
  def change
    create_table :coders do |t|
      t.text :first_name
      t.text :last_name
      t.text :about
      t.text :looking_for
      t.text :img_url

      t.timestamps
    end
  end
end
