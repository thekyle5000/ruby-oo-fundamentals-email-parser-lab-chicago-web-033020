# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
  
  def parse
    
    email_array = @emails.split(" ")
    
    email_array.each do |e|
      if e.include?(",")
        e[-1]
    end
    
    # if @emails.include?(",")
    #   @emails.split(", ").uniq
    # else 
    #   @emails.split(" ").uniq
    # end
  end

end