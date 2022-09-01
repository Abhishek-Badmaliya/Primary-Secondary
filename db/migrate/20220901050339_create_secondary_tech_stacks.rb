class CreateSecondaryTechStacks < ActiveRecord::Migration[7.0]
  def change
    create_table :secondary_tech_stacks do |t|
      t.string :stack
      t.string :skills
      t.string :generic_info

      t.timestamps
    end
  end
end
