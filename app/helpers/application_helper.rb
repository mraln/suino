module ApplicationHelper
  def l date
    if date.present?
      I18n.l date
    else
      nil
    end
  end
end
