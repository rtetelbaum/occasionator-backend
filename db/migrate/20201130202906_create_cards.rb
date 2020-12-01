class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :image_url
      t.string :sender_email
			t.string :recipient_email
			t.string :subject
			t.string :message
			t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
