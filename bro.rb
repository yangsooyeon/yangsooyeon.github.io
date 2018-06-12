# launchy 친구를 불러온다.
# launchy 에게 브라우저 열어달라 한다.

require "launchy"
require "uri"
#Launchy.open(https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%95%84%EC%9D%B4%EC%9C%A0=multicampus)

keywords =["방탄소년단","워너원","빅뱅"]

url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="

# n = 0
# while(n<3)
#     #반복시킬 문장 넣기.
#     Launchy.open(url + keywords[n])
#     n = n+1
# end

keywords.each do |key|
    Launchy.open(url + key)
end


