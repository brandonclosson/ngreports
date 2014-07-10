class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :field_type
      t.string :field_name
      t.string :report_title
    end
  end
end
