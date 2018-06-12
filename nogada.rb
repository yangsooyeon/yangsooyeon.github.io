# 1. 파일을 100개 만든다.
# -특정 폴더로 들어간다.
# - 파일을 만든다.
# 2. 파일을 이름을 100개 수정한다.

puts Dir.pwd

Dir.chdir("files")

puts Dir.entries(Dir.pwd)

20.times do |x|
    File.open("list"+x+".txt", "w") do |f|
        f.write("이건 테스트 파일입니다.")  
    end
end

name = "soo"
puts "hello #{name} nice to meet yo"
