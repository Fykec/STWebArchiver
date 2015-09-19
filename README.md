STWebArchiver
===========

A fork from STWebArchiver originally written by Shun Takebayashi.

The original STWebArchiver was base on libxml, to extract web resources, like(image, css, js, font, etc)

This version extract web resources with regular expressiones. Because the libxml parses a variant of HTML 4 and does not handle broken markup like a modern browser. you just want to extract the urls, shouldn't be blocked by the correctness of the html. So just treat the html as text, not a libxml required dom tree. Let it easy. 

#:)

1. handle void tag \<img src="xx.png"\>\</img\> with end tag, libxml would report a error about this, regex just extract the xx.png

2. Also work well with some custom js template sytax, 

3. Download background image not just img's src

4. Don't save data: scheme resources


#:(

1. The img in the comments, it will also be downloaded




Original License From Shun Takebayashi
======================================

Copyright (c) 2011 Shun Takebayashi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

