base_url = "http://#{request.host_with_port}"
xml.instruct! :xml, :version => '1.0', :encoding => "UTF-8"
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url{
      xml.loc("http://evgenicaweb.ru")
      xml.changefreq("weekly")
      xml.priority(1.0)
  }
  xml.url{
      xml.loc("http://evgenicaweb.ru/about")
      xml.changefreq("monthly")
      xml.priority(0.9)
  }

   xml.url{
      xml.loc("http://evgenicaweb.ru/portfolio")
      xml.changefreq("monthly")
      xml.priority(0.9)
  }

  @posts.each do |p|
    xml.url {
      xml.loc("http://evgenicaweb.ru/#{p.id.to_s}")
      xml.changefreq("weekly")
      xml.priority(0.5)
    }
  end
end