class ReportsController < ApplicationController
  def index
    @field_types = Report.unique_field_types
    @field_names = Report.unique_field_names
  end
end