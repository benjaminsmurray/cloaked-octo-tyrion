module ApplicationHelper
  def full_title
    title = "Calendar thing"
    content_for?(:title) ? "#{title} | #{content_for(:title)}" : title
  end
end
