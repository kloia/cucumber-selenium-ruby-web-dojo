class SearchPage

  def initialize
    super
    @txt_search_id = "searchData"
    @btn_search_css = ".searchBtn"
  end

  def fill_search_data(src_data)
    fill_in(@txt_search_id, with: src_data)
  end

  def click_search_button
    find(@btn_search_css).click
  end

  def search_data_on_home(src_data)
    fill_search_data(src_data)
    click_search_button
  end
end