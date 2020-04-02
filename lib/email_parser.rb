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
    email_array = email_array.map do |e|
        e.slice(0, (e.length -1))
    end
    email_array.uniq
    binding.pry
   end
    
    # if @emails.include?(",")
    #   @emails.split(", ").uniq
    # else 
    #   @emails.split(" ").uniq
    # end

end