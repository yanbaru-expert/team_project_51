module ApplicationHelper
  def max_width
    if controller_name == "texts" && action_name == "show"
      "mw-md"
    elsif devise_controller?
      "mw-sm"
    else
      "mw-xl"
    end
  end

  def text_page_title
    if params[:genre] == "php"
      "PHP テキスト教材"
    else
      "Ruby/Rails テキスト教材"
    end
  end

  def movie_page_title
    if params[:genre] == "php"
      "PHP 動画"
    else
      "Ruby/Rails 動画"
    end
  end
end
