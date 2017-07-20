class HomeController < ApplicationController
  def index
  end

  def search
    require ('open-uri')        # 웹 페이지 open 에 필요.
    require ('json')            # JSON을 Hash로 변환하는데 필요.
    
    
    # page에 해당 웹 페이지를 열어서 저장. 
     page = open("http://lod.nl.go.kr/home/openapi/openapi.jsp?type=nlon:Author&field=foaf:name&keywords=Hemingway, Ernest") 
    
    # info 에 page 내용 (JSON 형식의 data) 을 읽어서 저장.
    info = page.read  
    
    # hash 에 JSON 형식인 info 를 Hash 로 파싱(변환)하여 저장.
    hash = JSON.parse(info)    
    
    myhash = JSON.parse '{"foo":"bar"}'
    puts hash    #=> JSON 데이터가 Hash 로 변환되어 출력.
    puts myhash["foo"]
    
    #@result = hash.fetch[results.bindings.title]
  end
  
end
