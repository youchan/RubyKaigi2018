class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "Introducing Charty")
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
  h2(nil, "Who am I")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Yoh Osaki (a.k.a youchan)"),
                    li(nil, "Retrieva Inc."),
                    li(nil, "RubyKaigi Speaker for 3 years talking about Opal"),
                    li(nil, "Asakusa.rb")
      )
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def header
  h2(nil, "Sponsored")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/retrieva.png"}, "")))
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "I will talk on 3rd day.")
      children << p({className:"large"}, "\"How to get the dark power from ISeq\"")
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def header
  h2(nil, "Charty")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "A data visualization framework"),
                    li(nil, "It provides simple ways represent your data.")
      )
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/charty.png"}, "")))
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Now development in progress.")
      children << p({className:"large"}, "Please join us!!!")
  end
end
end

Gibier.page_count = 7
Gibier.title = "Introducing Charty"
