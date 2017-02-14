class CreateQuestions < ActiveRecord::Migration
	def change
		create_table :questions do |t|
			t.references :user
			t.string :email
			t.string :password
			t.timestamps
		end
	end



	end
end
