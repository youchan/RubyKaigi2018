class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "5-Minute Recipe of Todo-app(解説編)")
end

def content
  [].tap do |children|
      children << p({className:"author"}, "youchan")
      children << p({className:"icon"}, p({class:""}, img({src:"#{Gibier.assets_path}/images/youchan.jpg"}, "")))
      children << p({className:"duration"}, "5min")
  end
end
end

class Gibier::Page1 < Gibier::PageBase
def header
  h2(nil, "5分でTODOアプリを作ります！")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/lt.png"}, "")))
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "5分でとか",span({style: {color: "red", "font-size": "180%"}}, "無理"),"に決まってるじゃないですか…")
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/dora.jpg"}, "")))
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "そういうわけで今日は解説編です。")
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h2(nil, "Talks for past RubyKaigi")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "\"Writing web application in Ruby\" (2015)"),
                    li(nil, "\"Isomorphic web programming in Ruby\" (2016)"),
                    li(nil, "\"dRuby on Browser\" (2017)")
      )
      children << h4(nil, "=> All of them are things about ",span({style: {color: "red", "font-size": "180%"}}, "Opal"))
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, strong(nil, a({href:"https://github.com/youchan/silica", target:"_blank"}, "silica")),": A rapid development tools for Hyalite & Menilite"),
                    li(nil, strong(nil, a({href:"https://github.com/youchan/hyalite", target:"_blank"}, "hyalite")),": A Ruby implemented Virtual DOM written in Opal"),
                    li(nil, strong(nil, a({href:"https://github.com/youchan/menilite", target:"_blank"}, "menilite")),": An isomophic web programming framework in Ruby")
      )
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def header
  h2(nil, "Pragmatic Opal")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"portlait-left"}, img({src:"#{Gibier.assets_path}/images/pragmatic-opal.jpg"}, "")))
      children << p({className:"right"}, "")
      children << ul(nil,
                    li(nil, "(多分)Opalの世界初の書籍"),
                    li(nil, "今日の話をもっと詳しく知りたい方に"),
                    li(nil, "Amazonで買えます！ => ",a({href:"http://amzn.asia/0IVwIFR", target:"_brank"}, "http://amzn.asia/0IVwIFR"))
      )
  end
end
end

Gibier.page_count = 8
Gibier.title = "5-Minute Recipe of Todo-app(解説編)"
