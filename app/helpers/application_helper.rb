module ApplicationHelper
  def full_title(subtitle = '')
    subtitle.empty? ? 'Rails Forums' : "Rails Forums | #{subtitle}"
  end
end
