class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "5-Minute Recipe of Todo-app")
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
def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"https://github.com/youchan/silica", target:"_blank"}, "silica")),
                    li(nil, a({href:"https://github.com/youchan/hyalite", target:"_blank"}, "hyalite")),
                    li(nil, a({href:"https://github.com/youchan/menilite", target:"_blank"}, "menilite"))
      )
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def header
  h2(nil, "Who am I")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Yoh Osaki (a.k.a youchan)"),
                    li(nil, "Retrieva Inc."),
                    li(nil, "RubyKaigi Speaker for 3 years talking about Opal"),
                    li(nil, "Writting self publishing book (Doujinshi: 同人誌)"),
                    li(nil, "Asakusa.rb")
      )
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def header
  h2(nil, "Sponsored")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/retrieva.png"}, "")))
  end
end
end

class Gibier::Page4 < Gibier::PageBase
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

class Gibier::Page5 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "I will make a Todo-app in 5 minutes!")
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Sorry for using some snippets.")
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "I will talk on 3rd day.")
      children << p({className:"large"}, "\"How to get the dark power from ISeq\"")
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, "Self publishing book (Doujinshi: 同人誌)")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"portlait-left"}, img({src:"#{Gibier.assets_path}/images/pragmatic-opal.png"}, "")))
      children << p({className:"right"}, "")
      children << ul(nil,
                    li(nil, "My first doujinshi."),
                    li(nil, "Tech book fest. 3 (技術書典3)"),
                    li(nil, "Culmination of RubyKaigi for 3 years"),
                    li(nil, "Commercial published!!!")
      )
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "Exploring ISeq")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"portlait-left"}, img({src:"#{Gibier.assets_path}/images/exploring-iseq.png"}, "")))
      children << p({className:"right"}, "")
      children << ul(nil,
                    li(nil, "Tech book fest. 4 (技術書典4)")
      )
  end
end
end

Gibier.page_count = 10
Gibier.title = "5-Minute Recipe of Todo-app"
