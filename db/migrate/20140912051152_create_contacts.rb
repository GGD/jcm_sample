class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :agent, index: true
      t.string :county, default: 'Taipei'

      t.timestamps
    end
  end
end
