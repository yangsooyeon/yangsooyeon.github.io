require 'httparty'
require 'nokogiri'

# 1. naver에 원하는 정보가 담긴 페이지를 요청
# 2. naver에게 받은 문서 안에 있는 원하는 정보를 불러 온다.
# 3. 불러온 정보를 출력 한다.

# res = HTTParty.get("http://finance.naver.com/sise/")
# val  = Nokogiri::HTML(res).css("#KOSPI_now")
# puts "현재 코스피 지수는 " + val.text + " 입니다."

headers = {
  'User-Agent': 'Mozilla/5.0 (Windows; U; MSIE 9.0; WIndows NT 9.0; ko-KR))'
} 

# res = HTTParty.get("http://www.dcinside.com/")
# val  = Nokogiri::HTML(res).css("#rank1 > li:nth-child(1) > a > span.title")
# puts "현재 실검1위는 " + val.text + " 입니다."
# res = HTTParty.get("https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q=%EB%B9%84%ED%8A%B8%EC%BD%94%EC%9D%B8", headers: headers)
# val = Nokogiri::HTML(res).css("#speCurrencyColl > div.coll_cont > div > div.wrap_quote > div.graph_quote > div.graph_rate.stock_up > em.currency_value")
# puts val

res = HTTParty.get("https://search.daum.net/search?nil_suggest=btn&nil_ch=&rtupcoll=&w=tot&m=&f=&lpp=&DA=SBC&sug=&sq=&o=&sugo=&q=%ED%99%98%EC%9C%A8", headers: headers)
val = Nokogiri::HTML(res).css("#exchangeColl > div.coll_cont > div > div.wrap_info > div.info_price > div.stock_down.inner_price > em")
puts val
