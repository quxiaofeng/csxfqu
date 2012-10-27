---
layout: post
tags: [coding, cmd]
description: Resources and libraries about how to parse command line arguments. Try to make program receive standard and flexible command line arguments.
---
## Goal

Just like the git suite.

      git commit -asm 'new commit'

+ Both short and long form are acceptable.
+ Can be combined together. It is really compact and really handy to use in this form.

## Current Example project

[AnyOption](http://www.hackorama.com/anyoption/) is used in the [exmaple project](https://github.com/quxiaofeng/dks_software).

It is working well, and the only problem is anoying warnings of strcpy(). Because the visual studio recommands to use strcpy_s(). And also the std::cout can not be seen in Qt debug console.

Another problem is AnyOption can read options from a file with ":" separating "item:value" pairs. This kind of non-standard format is not very comfortable to use.

## Resources

+ AnyOption
  - [Home Page](http://www.hackorama.com/anyoption/)
  - [Github Project Page](https://github.com/hackorama/AnyOption/)
  - Latest version by hamann[hamann/AnyOption](https://github.com/hamann/AnyOption)




