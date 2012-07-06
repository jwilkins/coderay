require 'ruby-debug'
module CodeRay
module Encoders
  
  load :token_kind_filter
  
  # A simple Filter that filters tokens except :comment kind.
  # 
  # Usage:
  #  CodeRay.scan('print # foo', :ruby).comments.text
  #  #-> "foo"
  # 
  # See also: TokenKindFilter, LinesOfCode
  class CodeFilter < TokenKindFilter
    
    register_for :comments
    
    DEFAULT_OPTIONS = superclass::DEFAULT_OPTIONS.merge \
      :include => [:comment, :doctype, :docstring, :end_line]
    
  end
end
end
