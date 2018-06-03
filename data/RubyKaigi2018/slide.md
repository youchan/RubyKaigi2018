# How to get the dark power from <span {style: {color: "red"}}>ISeq</span>

%author: youchan

%icon: ![](youchan.jpg)

%duration: 40min

## Who am I

* Yoh Osaki (a.k.a youchan)
* Retrieva Inc.
* RubyKaigi Speaker for 3 years talking about Opal
* Writting self publishing book (Doujinshi: 同人誌)
* Asakusa.rb

## Sponsored

![large](retrieva.png)

## Talks for past RubyKaigi

* "Writing web application in Ruby" (2015)
* "Isomorphic web programming in Ruby" (2016)
* "dRuby on Browser" (2017)

#### => All of them are things about <span {style: {color: "red", "font-size": "180%"}}>Opal</span>

## 5-Minute Recipe of Todo-app (at RubyKaigi LT)

![middle](lightning_talk.jpg)

## Tools used

* **silica**: A rapid development tools for Hyalite & Menilite
* **hyalite**: A Ruby implemented Virtual DOM written in Opal
* **menilite**: An isomophic web programming framework in Ruby

## My self-published book (Doujinshi: 同人誌)

![portlait-left](pragmatic-opal.png)

%right:

* My first doujinshi.
* Tech book fest. 3 (技術書典3)
* Culmination of attending RubyKaigi for 3 years
* Now available from Impress R&D Publishing as well!

## Exploring ISeq

![portlait-left](exploring-iseq.png)

%right:

* Tech book fest. 4 (技術書典4)
* I brought some books today.
* They are 1,000 yen each.

---

![large](asakusarb.png)


## Story

One day, at a Sake bar with Asakusa.rb members...

We started talking about ISeq, and how it could allow us to do many new things.

Unfortunately, there isn't any documentation for ISeq, and it's an internal API, so it may change unexpectedly.

Koichi Sasada (ko1) wants to keep ISeq internal.

## I tried to write some documentation for ISeq

* I tried to write an ISeq specification, just like the "Java Virtual Machine Specification".
* I wasn't sure what to write, so I began to study how to use ISeq.
* In order to use ISeq the way I wanted to use it, I had to implement some hacks.

## 3 Points of View

* People interested in my ISeq hack
  - Most of the audiences
* Anyone who wants to build something with ISeq
* Ruby Core Team

## What's ISeq?

![large](whats_iseq.png)

## ISeq is a Cross-Section

![large](cross_section.png)

## ISeq is ...

* ISeq is an Instruction Sequence of RubyVM.
* ISeq is a Cross-Section between the parser/compiler and RubyVM.
* ISeq is used internally.

## How to Use

`RubyVM::InstructionSequence`

* `compile`
* `disasm`
* `to_a`
* `to_binary` <=> `load_from_binary`

## Formats

* `compile` => Ruby source code (String)
* `disasm` => assembly code? (String)
* `to_a` => Ruby objects (Array)
* `to_binary`/`load_from_binary` => binary format

## disasm

```ruby
iseq = RubyVM::InstructionSequence.compile(<<~SRC)
  puts "Hello world"
SRC

puts iseq.disasm
```

## ISeq Assembly Code

```
== disasm: #<ISeq:<compiled>@<compiled>:1 (1,0)-(1,18)>=================
0000 putself                                                          (   1)[Li]
0001 putstring        "Hello world"
0003 opt_send_without_block <callinfo!mid:puts, argc:1, FCALL|ARGS_SIMPLE>, <callcache>
0006 leave
```

## Stack machine

![large](stack_machine.png)

## ISeq Simple Data Format

```ruby
iseq = RubyVM::InstructionSequence.compile(<<~SRC)
  puts "Hello world"
SRC

pp iseq.to_a
```

---

```ruby
["YARVInstructionSequence/SimpleDataFormat",
 2, 5, 1,
 {:arg_size=>0, :local_size=>0, :stack_max=>2, :code_range=>[1, 0, 1, 18]},
 "<compiled>",
 "<compiled>",
 nil,
 1,
 :top,
 [],
 {},
 [],
 [1,
  :RUBY_EVENT_LINE,
  [:putself],
  [:putstring, "Hello world"],
  [:opt_send_without_block, {:mid=>:puts, :flag=>40, :orig_argc=>1}, false],
  [:leave]]]
```

## ISeq Binary Format

```ruby
iseq = RubyVM::InstructionSequence.compile(<<~SRC)
  puts "Hello world"
SRC

puts iseq.to_binary.bytes.each_slice(32).map {|a|
  a.map{|b| b.to_s(16).ljust(2, "0") }.join(' ')
}.join("\n")
```
---

```
59 41 52 42 20 00 00 00 50 00 00 00 11 20 00 00 00 00 00 00 10 00 00 00 20 00 00 00 50 00 00 00
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
```

## ISeq Binary Hack

* There are 3 types of way to output ISeq. However, there only 2 ways to generate ISeq: calling `compile` and `load_from_binary`.
* To build ISeq from instruction sequences, use `load_from_binary`.
* In order to build ISeq from instruction sequences, you must hack the binary.

## Reading ruby source code

* The code to read and write ISeq is in `compile.c`

```
% wc compile.c
    9518   26496  256132 compile.c
```

## Define method

```ruby
iseq = RubyVM::InstructionSequence.compile(<<~SRC)
  def hello
    puts "Hello world"
  end

  hello
SRC

puts iseq.disasm
```

## disasm

```
== disasm: #<ISeq:<compiled>@<compiled>:1 (1,0)-(5,5)>==================
0000 putspecialobject 1                                               (   1)[Li]
0002 putobject        :hello
0004 putiseq          hello
0006 opt_send_without_block <callinfo!mid:core#define_method, argc:2, ARGS_SIMPLE>, <callcache>
0009 pop
0010 putself                                                          (   5)[Li]
0011 opt_send_without_block <callinfo!mid:hello, argc:0, FCALL|VCALL|ARGS_SIMPLE>, <callcache>
0014 leave
== disasm: #<ISeq:hello@<compiled>:1 (1,0)-(3,3)>=======================
0000 putself                                                          (   2)[LiCa]
0001 putstring        "Hello world"
0003 opt_send_without_block <callinfo!mid:puts, argc:1, FCALL|ARGS_SIMPLE>, <callcache>
0006 leave                                                            (   3)[Re]
```

## Structure

![w70](iseq_structure.png)

## ISeq block

![middle](iseq_part.png)

## ID List

![middle](id_list.png)

## Object block

![w50](object_structure.png)

---

%large: ISeq builder

## Hello world

```
require "iseq_builder"

iseq = ISeqBuilder.build do |builder|
  builder.top_level do 
    putself
    putstring string("Hello world")
    opt_send_without_block callinfo(:puts, 1, ISeqBuilder::FCALL | ISeqBuilder::ARGS_SIMPLE), 0
    leave
  end
end

iseq.eval
```

---

%large: brainf*ck compiler

## Caution!

* ISeq binary format is expressed as a C structure internally.
* It may have compatibility issues with different architectures.
  - 32bit vs 64bit, big-endian vs little-endian

## Break time

![middle](cats.png)

## YASM

* [https://github.com/ko1/rubyhackchallenge/tree/master/yasm](https://github.com/ko1/rubyhackchallenge/tree/master/yasm)
* ISeq Simple Data Format
* using Fiddle
  - `rb_iseq_load`

## What would we gain from ISeq standardization?

* Other languages on RubyVM
* Alternative VM
   - for various platforms
   - for performance

## Other Languages on RubyVM

* For example, implementing a brainf*ck compiler
* For example, like Elixir for Erlang VM
* Implementing various languages on the JVM has been a popular
  - Groovy, Clojure, Scala, MixJuice, Onion Kotlin, JRuby
* There are various languages to compile into LLVM bitcode
  - Rust, Go, Clang, ...

## We could add static typing to Ruby

* Matz said "We don't want to make people write type definitions"
* We could add alternative Ruby syntax.
* Other languages could use the RubyVM.

## Alternative VM for other platforms

* For example, compiling to JavaScript such as Opal

## Alternative VM for performance

* YARV-MJIT
* Special optimization like Swift for TensorFlow


## Ruby3x3

* JIT compiler
* Guild
* Some features around typing

#### Ruby core is actively developing these features now.

---

%large: Beyond Ruby3x3


## Black Magic

![middle](black_magic.png)

## They said

%large: "We used only Ruby's standard features"

---

%large: ISeq standardization will become higher potential to Ruby

---

%large: Thank you for English help Deka-Gaijin.
