module ApplicationHelper
  def full_title(page_title)
    title = "Calendar thing"
    page_title.empty? ? title : "#{title} | #{content_for(:title)}"
  end
  def show_notice
    p_notice = "<p id = 'notice' class="
    case flash[:state]
    when :success
      "#{p_notice}'success'> #{flash[:notice]} </p>".html_safe
    when :error
      "#{p_notice}'error'> #{flash[:notice]} </p>".html_safe
    end
  end
end
