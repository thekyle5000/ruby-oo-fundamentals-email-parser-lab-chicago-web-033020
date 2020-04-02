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
    not_unique = [] 
    email_array.each do |e|
      if e.include?(",")
        not_unique << e.slice(0, (e.length -1))
      else
        not_unique << e
      end
     end
     binding.pry
    not_unique.uniq
 
   end
    
    # if @emails.include?(",")
    #   @emails.split(", ").uniq
    # else 
    #   @emails.split(" ").uniq
    # end

end