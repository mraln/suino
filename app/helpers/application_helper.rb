module ApplicationHelper

  def show_field_date field_date
    if field_date.is_a?(ActiveSupport::TimeWithZone)
      field_date.strftime("%d/%m/%Y")
    else
      field_date
    end
  end
end
