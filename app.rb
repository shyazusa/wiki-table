require 'sinatra'
require 'uri'
require 'nokogiri'
require 'open-uri'
require 'json'
require 'unicode'

URL = 'https://ja.wikipedia.org/wiki/'

get '/search' do
  keyword = URI.escape(params['keyword'].gsub("\s", '_'))
  ACCESS_URL = "#{URL}#{keyword}"
  title = get_title
  table = make_table
  "[#{title}](#{ACCESS_URL})<br><br>#{table}"
end

helpers do
  def access_wiki
    html = open(ACCESS_URL).read
    Nokogiri::HTML.parse(html)
  end

  def get_title
    access_wiki.title
  end

  def make_table
    doc = access_wiki
    echo = "|||<br>|:---:|:---:|"
    table = doc.css('table.infobox').each do |node|
      node.css('tr').each do |tr|
        th = tr.css('th').text
        td = tr.css('td').text
        echo = "#{echo}<br>|#{th}|#{td}|" unless td == ''
      end
    end
    echo
  end
end
