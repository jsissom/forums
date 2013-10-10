module ApplicationHelper
  def full_title(subtitle = '')
    subtitle.empty? ? I18n.t("site_title") : "#{I18n.t('site_title')} | #{subtitle}"
  end
end
