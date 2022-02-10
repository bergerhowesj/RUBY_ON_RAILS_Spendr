class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :content
      t.references :notable, polymorphic: true, index:true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
