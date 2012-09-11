---
layout: post
category : blog
tags : [jekyll, blog, ruby, python]
description: Some tips and tricks of jekyll. Windows is still not a best develop platform. I have to tweak a little to run jekyll smoothly. Here are the notes for myself, and also for other people who may encounter similar problems.
---
    
    
### Guides

+ [Setting up the environment for jekyll](http://bradleygrainger.com/2011/09/07/how-to-use-github-pages-on-windows.html)
+ Don't forget to change code page before jekyll
{% highlight bat %}
chcp 65001
jekyll --safe
{% endhighlight %}
+ _debug.bat
  - change site.url to /
  - then
{% highlight bat %}
rmdir _site /s /q
chcp 65001
jekyll --server
{% endhighlight %}
+ _build.bat
  - change site.url to http://www4.comp.polyu.edu.hk/~csxfqu/
  - then
{% highlight bat %}
rmdir _site /s /q
chcp 65001
jekyll --safe
{% endhighlight %}
+ [Code highlight names](http://pygments.org/docs/lexers/)


## Steps

+ install Railsinstaller
    + gem update and install many gems ...
+ install [Python 2.7.3](http://www.python.org/getit/)
+ install [easy_install for python 2.7](http://pypi.python.org/pypi/setuptools#downloads)
  - in python273/Script forlder
  - add this folder("C:\Python27\Scripts" by default) to system PATH
+ install pygments
{% highlight bat %}
easy_install pygments
{% endhighlight %}

