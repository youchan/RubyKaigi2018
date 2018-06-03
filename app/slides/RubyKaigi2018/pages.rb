class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "How to get the dark power from ",span({style: {color: "red"}}, "ISeq"))
end

def content
  [].tap do |children|
      children << p({className:"author"}, "youchan")
      children << p({className:"icon"}, p({class:""}, img({src:"#{Gibier.assets_path}/images/youchan.jpg"}, "")))
      children << p({className:"duration"}, "40min")
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
                    li(nil, "Writting self publishing book (Doujinshi: 同人誌)"),
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

class Gibier::Page4 < Gibier::PageBase
def header
  h2(nil, "5-Minute Recipe of Todo-app (at RubyKaigi LT)")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/lightning_talk.jpg"}, "")))
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h2(nil, "Tools used")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, strong(nil, "silica"),": A rapid development tools for Hyalite & Menilite"),
                    li(nil, strong(nil, "hyalite"),": A Ruby implemented Virtual DOM written in Opal"),
                    li(nil, strong(nil, "menilite"),": An isomophic web programming framework in Ruby")
      )
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def header
  h2(nil, "My self-published book (Doujinshi: 同人誌)")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"portlait-left"}, img({src:"#{Gibier.assets_path}/images/pragmatic-opal.png"}, "")))
      children << p({className:"right"}, "")
      children << ul(nil,
                    li(nil, "My first doujinshi."),
                    li(nil, "Tech book fest. 3 (技術書典3)"),
                    li(nil, "Culmination of attending RubyKaigi for 3 years"),
                    li(nil, "Now available from Impress R&D Publishing as well!")
      )
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def header
  h2(nil, "Exploring ISeq")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"portlait-left"}, img({src:"#{Gibier.assets_path}/images/exploring-iseq.png"}, "")))
      children << p({className:"right"}, "")
      children << ul(nil,
                    li(nil, "Tech book fest. 4 (技術書典4)"),
                    li(nil, "I brought some books today."),
                    li(nil, "They are 1,000 yen each.")
      )
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/asakusarb.png"}, "")))
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "Story")
end

def content
  [].tap do |children|
      children << p(nil, "One day, at a Sake bar with Asakusa.rb members...")
      children << p(nil, "We started talking about ISeq, and how it could allow us to do many new things.")
      children << p(nil, "Unfortunately, there isn't any documentation for ISeq, and it's an internal API, so it may change unexpectedly.")
      children << p(nil, "Koichi Sasada (ko1) wants to keep ISeq internal.")
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def header
  h2(nil, "I tried to write some documentation for ISeq")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "I tried to write an ISeq specification, just like the \"Java Virtual Machine Specification\"."),
                    li(nil, "I wasn't sure what to write, so I began to study how to use ISeq."),
                    li(nil, "In order to use ISeq the way I wanted to use it, I had to implement some hacks.")
      )
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h2(nil, "3 Points of View")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "People interested in my ISeq hack"),
                  ul(nil,
                    li(nil, "Most of the audiences")
      ),
                    li(nil, "Anyone who wants to build something with ISeq"),
                    li(nil, "Ruby Core Team")
      )
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "What's ISeq?")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/whats_iseq.png"}, "")))
  end
end
end

class Gibier::Page13 < Gibier::PageBase
def header
  h2(nil, "ISeq is a Cross-Section")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/cross_section.png"}, "")))
  end
end
end

class Gibier::Page14 < Gibier::PageBase
def header
  h2(nil, "ISeq is ...")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "ISeq is an Instruction Sequence of RubyVM."),
                    li(nil, "ISeq is a Cross-Section between the parser/compiler and RubyVM."),
                    li(nil, "ISeq is used internally.")
      )
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def header
  h2(nil, "How to Use")
end

def content
  [].tap do |children|
      children << p(nil, code(nil, "RubyVM::InstructionSequence"))
      children << ul(nil,
                    li(nil, code(nil, "compile")),
                    li(nil, code(nil, "disasm")),
                    li(nil, code(nil, "to_a")),
                    li(nil, code(nil, "to_binary")," <=> ",code(nil, "load_from_binary"))
      )
  end
end
end

class Gibier::Page16 < Gibier::PageBase
def header
  h2(nil, "Formats")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, code(nil, "compile")," => Ruby source code (String)"),
                    li(nil, code(nil, "disasm")," => assembly code? (String)"),
                    li(nil, code(nil, "to_a")," => Ruby objects (Array)"),
                    li(nil, code(nil, "to_binary"),"/",code(nil, "load_from_binary")," => binary format")
      )
  end
end
end

class Gibier::Page17 < Gibier::PageBase
def header
  h2(nil, "disasm")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5</pre></td><td class="code"><pre><span class="n">iseq</span> <span class="o">=</span> <span class="no">RubyVM</span><span class="o">::</span><span class="no">InstructionSequence</span><span class="p">.</span><span class="nf">compile</span><span class="p">(</span><span class="o">&lt;&lt;~</span><span class="no">SRC</span><span class="p">)</span><span class="sh">
  puts "Hello world"
</span><span class="no">SRC</span>

<span class="nb">puts</span> <span class="n">iseq</span><span class="p">.</span><span class="nf">disasm</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page18 < Gibier::PageBase
def header
  h2(nil, "ISeq Assembly Code")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5</pre></td><td class="code"><pre>== disasm: #&lt;ISeq:&lt;compiled&gt;@&lt;compiled&gt;:1 (1,0)-(1,18)&gt;=================
0000 putself                                                          (   1)[Li]
0001 putstring        "Hello world"
0003 opt_send_without_block &lt;callinfo!mid:puts, argc:1, FCALL|ARGS_SIMPLE&gt;, &lt;callcache&gt;
0006 leave
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page19 < Gibier::PageBase
def header
  h2(nil, "Stack machine")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/stack_machine.png"}, "")))
  end
end
end

class Gibier::Page20 < Gibier::PageBase
def header
  h2(nil, "ISeq Simple Data Format")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5</pre></td><td class="code"><pre><span class="n">iseq</span> <span class="o">=</span> <span class="no">RubyVM</span><span class="o">::</span><span class="no">InstructionSequence</span><span class="p">.</span><span class="nf">compile</span><span class="p">(</span><span class="o">&lt;&lt;~</span><span class="no">SRC</span><span class="p">)</span><span class="sh">
  puts "Hello world"
</span><span class="no">SRC</span>

<span class="n">pp</span> <span class="n">iseq</span><span class="p">.</span><span class="nf">to_a</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page21 < Gibier::PageBase
def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17</pre></td><td class="code"><pre><span class="p">[</span><span class="s2">"YARVInstructionSequence/SimpleDataFormat"</span><span class="p">,</span>
 <span class="mi">2</span><span class="p">,</span> <span class="mi">5</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span>
 <span class="p">{</span><span class="ss">:arg_size</span><span class="o">=&gt;</span><span class="mi">0</span><span class="p">,</span> <span class="ss">:local_size</span><span class="o">=&gt;</span><span class="mi">0</span><span class="p">,</span> <span class="ss">:stack_max</span><span class="o">=&gt;</span><span class="mi">2</span><span class="p">,</span> <span class="ss">:code_range</span><span class="o">=&gt;</span><span class="p">[</span><span class="mi">1</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">18</span><span class="p">]},</span>
 <span class="s2">"&lt;compiled&gt;"</span><span class="p">,</span>
 <span class="s2">"&lt;compiled&gt;"</span><span class="p">,</span>
 <span class="kp">nil</span><span class="p">,</span>
 <span class="mi">1</span><span class="p">,</span>
 <span class="ss">:top</span><span class="p">,</span>
 <span class="p">[],</span>
 <span class="p">{},</span>
 <span class="p">[],</span>
 <span class="p">[</span><span class="mi">1</span><span class="p">,</span>
  <span class="ss">:RUBY_EVENT_LINE</span><span class="p">,</span>
  <span class="p">[</span><span class="ss">:putself</span><span class="p">],</span>
  <span class="p">[</span><span class="ss">:putstring</span><span class="p">,</span> <span class="s2">"Hello world"</span><span class="p">],</span>
  <span class="p">[</span><span class="ss">:opt_send_without_block</span><span class="p">,</span> <span class="p">{</span><span class="ss">:mid</span><span class="o">=&gt;</span><span class="ss">:puts</span><span class="p">,</span> <span class="ss">:flag</span><span class="o">=&gt;</span><span class="mi">40</span><span class="p">,</span> <span class="ss">:orig_argc</span><span class="o">=&gt;</span><span class="mi">1</span><span class="p">},</span> <span class="kp">false</span><span class="p">],</span>
  <span class="p">[</span><span class="ss">:leave</span><span class="p">]]]</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page22 < Gibier::PageBase
def header
  h2(nil, "ISeq Binary Format")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7</pre></td><td class="code"><pre><span class="n">iseq</span> <span class="o">=</span> <span class="no">RubyVM</span><span class="o">::</span><span class="no">InstructionSequence</span><span class="p">.</span><span class="nf">compile</span><span class="p">(</span><span class="o">&lt;&lt;~</span><span class="no">SRC</span><span class="p">)</span><span class="sh">
  puts "Hello world"
</span><span class="no">SRC</span>

<span class="nb">puts</span> <span class="n">iseq</span><span class="p">.</span><span class="nf">to_binary</span><span class="p">.</span><span class="nf">bytes</span><span class="p">.</span><span class="nf">each_slice</span><span class="p">(</span><span class="mi">32</span><span class="p">).</span><span class="nf">map</span> <span class="p">{</span><span class="o">|</span><span class="n">a</span><span class="o">|</span>
  <span class="n">a</span><span class="p">.</span><span class="nf">map</span><span class="p">{</span><span class="o">|</span><span class="n">b</span><span class="o">|</span> <span class="n">b</span><span class="p">.</span><span class="nf">to_s</span><span class="p">(</span><span class="mi">16</span><span class="p">).</span><span class="nf">ljust</span><span class="p">(</span><span class="mi">2</span><span class="p">,</span> <span class="s2">"0"</span><span class="p">)</span> <span class="p">}.</span><span class="nf">join</span><span class="p">(</span><span class="s1">' '</span><span class="p">)</span>
<span class="p">}.</span><span class="nf">join</span><span class="p">(</span><span class="s2">"</span><span class="se">\n</span><span class="s2">"</span><span class="p">)</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page23 < Gibier::PageBase
def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17</pre></td><td class="code"><pre>59 41 52 42 20 00 00 00 50 00 00 00 11 20 00 00 00 00 00 00 10 00 00 00 20 00 00 00 50 00 00 00
6c 10 00 00 70 10 00 00 fd 10 00 00 78 38 36 5f 36 34 2d 64 61 72 77 69 6e 31 36 00 10 00 00 00
00 00 00 00 14 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 37 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 10 00 00 00
10 00 00 00 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 28 00 00 00 10 00 00 00 00 00 00 00
70 00 00 00 3c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00
00 00 00 00 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 10 00 00 00
00 00 00 00 10 00 00 00 12 00 00 00 74 00 00 00 00 00 00 00 8c 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8c 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00
00 00 00 00 20 00 00 00 20 00 00 00 9c 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00
f1 00 00 00 80 00 00 00 00 00 00 00 47 00 00 00 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 45 00 00 00 20 00 00 00 00 00 00 00 a0 00 00 00 00 00 00 00 3c 63 6f 6d
70 69 6c 65 64 3e 45 00 00 00 10 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 48 65 6c 6c 6f 20
77 6f 72 6c 64 45 00 00 00 20 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 70 75 74 73 80 10 00
00 8c 10 00 00 a8 10 00 00 c6 10 00 00 e5 10 00 00
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page24 < Gibier::PageBase
def header
  h2(nil, "ISeq Binary Hack")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "There are 3 types of way to output ISeq. However, there only 2 ways to generate ISeq: calling ",code(nil, "compile")," and ",code(nil, "load_from_binary"),"."),
                    li(nil, "To build ISeq from instruction sequences, use ",code(nil, "load_from_binary"),"."),
                    li(nil, "In order to build ISeq from instruction sequences, you must hack the binary.")
      )
  end
end
end

class Gibier::Page25 < Gibier::PageBase
def header
  h2(nil, "Reading ruby source code")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "The code to read and write ISeq is in ",code(nil, "compile.c"))
      )
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2</pre></td><td class="code"><pre>% wc compile.c
    9518   26496  256132 compile.c
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page26 < Gibier::PageBase
def header
  h2(nil, "Define method")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7
8
9</pre></td><td class="code"><pre><span class="n">iseq</span> <span class="o">=</span> <span class="no">RubyVM</span><span class="o">::</span><span class="no">InstructionSequence</span><span class="p">.</span><span class="nf">compile</span><span class="p">(</span><span class="o">&lt;&lt;~</span><span class="no">SRC</span><span class="p">)</span><span class="sh">
  def hello
    puts "Hello world"
  end

  hello
</span><span class="no">SRC</span>

<span class="nb">puts</span> <span class="n">iseq</span><span class="p">.</span><span class="nf">disasm</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page27 < Gibier::PageBase
def header
  h2(nil, "disasm")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14</pre></td><td class="code"><pre>== disasm: #&lt;ISeq:&lt;compiled&gt;@&lt;compiled&gt;:1 (1,0)-(5,5)&gt;==================
0000 putspecialobject 1                                               (   1)[Li]
0002 putobject        :hello
0004 putiseq          hello
0006 opt_send_without_block &lt;callinfo!mid:core#define_method, argc:2, ARGS_SIMPLE&gt;, &lt;callcache&gt;
0009 pop
0010 putself                                                          (   5)[Li]
0011 opt_send_without_block &lt;callinfo!mid:hello, argc:0, FCALL|VCALL|ARGS_SIMPLE&gt;, &lt;callcache&gt;
0014 leave
== disasm: #&lt;ISeq:hello@&lt;compiled&gt;:1 (1,0)-(3,3)&gt;=======================
0000 putself                                                          (   2)[LiCa]
0001 putstring        "Hello world"
0003 opt_send_without_block &lt;callinfo!mid:puts, argc:1, FCALL|ARGS_SIMPLE&gt;, &lt;callcache&gt;
0006 leave                                                            (   3)[Re]
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page28 < Gibier::PageBase
def header
  h2(nil, "Structure")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"w70"}, img({src:"#{Gibier.assets_path}/images/iseq_structure.png"}, "")))
  end
end
end

class Gibier::Page29 < Gibier::PageBase
def header
  h2(nil, "ISeq block")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/iseq_part.png"}, "")))
  end
end
end

class Gibier::Page30 < Gibier::PageBase
def header
  h2(nil, "ID List")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/id_list.png"}, "")))
  end
end
end

class Gibier::Page31 < Gibier::PageBase
def header
  h2(nil, "Object block")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"w50"}, img({src:"#{Gibier.assets_path}/images/object_structure.png"}, "")))
  end
end
end

class Gibier::Page32 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "ISeq builder")
  end
end
end

class Gibier::Page33 < Gibier::PageBase
def header
  h2(nil, "Hello world")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12</pre></td><td class="code"><pre>require "iseq_builder"

iseq = ISeqBuilder.build do |builder|
  builder.top_level do 
    putself
    putstring string("Hello world")
    opt_send_without_block callinfo(:puts, 1, ISeqBuilder::FCALL | ISeqBuilder::ARGS_SIMPLE), 0
    leave
  end
end

iseq.eval
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page34 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "brainf*ck compiler")
  end
end
end

class Gibier::Page35 < Gibier::PageBase
def header
  h2(nil, "Caution!")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "ISeq binary format is expressed as a C structure internally."),
                  li(nil, "It may have compatibility issues with different architectures."),
                  ul(nil,
                    li(nil, "32bit vs 64bit, big-endian vs little-endian")
      )
      )
  end
end
end

class Gibier::Page36 < Gibier::PageBase
def header
  h2(nil, "Break time")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/cats.png"}, "")))
  end
end
end

class Gibier::Page37 < Gibier::PageBase
def header
  h2(nil, "YASM")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"https://github.com/ko1/rubyhackchallenge/tree/master/yasm", target:"_blank"}, "https://github.com/ko1/rubyhackchallenge/tree/master/yasm")),
                    li(nil, "ISeq Simple Data Format"),
                  li(nil, "using Fiddle"),
                  ul(nil,
                    li(nil, code(nil, "rb_iseq_load"))
      )
      )
  end
end
end

class Gibier::Page38 < Gibier::PageBase
def header
  h2(nil, "What would we gain from ISeq standardization?")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Other languages on RubyVM"),
                  li(nil, "Alternative VM"),
                  ul(nil,
                    li(nil, "for various platforms"),
                    li(nil, "for performance")
      )
      )
  end
end
end

class Gibier::Page39 < Gibier::PageBase
def header
  h2(nil, "Other Languages on RubyVM")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "For example, implementing a brainf*ck compiler"),
                    li(nil, "For example, like Elixir for Erlang VM"),
                  li(nil, "Implementing various languages on the JVM has been a popular"),
                  ul(nil,
                    li(nil, "Groovy, Clojure, Scala, MixJuice, Onion Kotlin, JRuby")
      ),
                  li(nil, "There are various languages to compile into LLVM bitcode"),
                  ul(nil,
                    li(nil, "Rust, Go, Clang, ...")
      )
      )
  end
end
end

class Gibier::Page40 < Gibier::PageBase
def header
  h2(nil, "We could add static typing to Ruby")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Matz said \"We don't want to make people write type definitions\""),
                    li(nil, "We could add alternative Ruby syntax."),
                    li(nil, "Other languages could use the RubyVM.")
      )
  end
end
end

class Gibier::Page41 < Gibier::PageBase
def header
  h2(nil, "Alternative VM for other platforms")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "For example, compiling to JavaScript such as Opal")
      )
  end
end
end

class Gibier::Page42 < Gibier::PageBase
def header
  h2(nil, "Alternative VM for performance")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "YARV-MJIT"),
                    li(nil, "Special optimization like Swift for TensorFlow")
      )
  end
end
end

class Gibier::Page43 < Gibier::PageBase
def header
  h2(nil, "Ruby3x3")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "JIT compiler"),
                    li(nil, "Guild"),
                    li(nil, "Some features around typing")
      )
      children << h4(nil, "Ruby core is actively developing these features now.")
  end
end
end

class Gibier::Page44 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Beyond Ruby3x3")
  end
end
end

class Gibier::Page45 < Gibier::PageBase
def header
  h2(nil, "Black Magic")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/black_magic.png"}, "")))
  end
end
end

class Gibier::Page46 < Gibier::PageBase
def header
  h2(nil, "They said")
end

def content
  [].tap do |children|
      children << p({className:"large"}, "\"We used only Ruby's standard features\"")
  end
end
end

class Gibier::Page47 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "ISeq standardization will become higher potential to Ruby")
  end
end
end

class Gibier::Page48 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Thank you for English help Deka-Gaijin.")
  end
end
end

Gibier.page_count = 49
Gibier.title = "How to get the dark power from <span {style: {color: \"red\"}}>ISeq</span>"
