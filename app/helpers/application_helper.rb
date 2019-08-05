module ApplicationHelper
  def full_title(title = "")
    base_title = "B-REP-LOG"
    title.empty? ? base_title : page_title = "#{base_title} | #{title}"
  end
end
