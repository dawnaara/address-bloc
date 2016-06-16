require_relative 'entry'
require "csv"

class AddressBook
  attr_reader :entries

def add_entry(name, phone_number, email)
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def import_from_csv(file_name)

   # Search AddressBook for a specific entry by name
   def binary_search(name)
     # #1
     lower = 0
     upper = entries.length - 1
 
     # #2
     while lower <= upper
       # #3
       mid = (lower + upper) / 2
       mid_name = entries[mid].name
 
       # #4
       if name == mid_name
         return entries[mid]
       elsif name < mid_name
         upper = mid - 1
       elsif name > mid_name
         lower = mid + 1
       end
     end
 
     # #5
     return nil
   end
 end