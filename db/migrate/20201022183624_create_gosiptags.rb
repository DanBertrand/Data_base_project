class CreateGosiptags < ActiveRecord::Migration[5.2]
  def change
    create_table :gosiptags do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :gosip, index: true

      t.timestamps
    end
  end
end
