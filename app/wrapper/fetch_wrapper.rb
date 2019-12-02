class FetchWrapper
  def example_by_keyword(keyword: "*")
    FetchClient.get("http://www.example.com?keyword#{keyword}")
  end

  def example_by_title(title: "*")
    FetchClient.get("http://www.example.com?title#{title}")
  end
end