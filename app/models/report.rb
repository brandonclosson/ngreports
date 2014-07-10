class Report < ActiveRecord::Base

  def self.unique_field_types
    Report.uniq.pluck(:field_type).sort
  end

  def self.unique_field_names
    Report.uniq.pluck(:field_name).sort
  end

end