#!/usr/bin/env ruby

# file: mindfuldoc.rb

require 'mindmap_mfm'

class MindfulDoc < MindmapMFM
  using ColouredText

  def initialize(source=nil, cssfile: '', post_url: '', debug: false)

    @source, @post_url = source, post_url
    s = source ? RXFHelper.read(source).first : ''

    puts ('s: '  + s.inspect).debug if debug
    
    footer = update_footer(s)
    super(s, cssfile: cssfile, footer: footer, debug: debug)
  end

  def to_html()
    super()
  end

  def refresh()
    @s = RXFHelper.read(@source).first
  end

  def update(s)    
    @s = s unless s.strip.empty?
    update_footer(s)
  end
  
  private
  
  def update_footer(s)
    
@footer="
<form action='#{@post_url}' method='post'>
  <textarea id='content' name='content'>#{s}</textarea>
  <input type='submit' value='update'/>
</form>
"

  end

end
