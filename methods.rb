# Method to replace +254 with 0
def sub_254(arr)
    subbed = []
    arr.each do |num|
    subbed << num.gsub(/^\+254/, '0')
    end
    subbed
end

# Method to remove heifens
def heifen_remover(arr)
    subbed = []
    arr.each do |num|
        subbed << num.gsub(/-/, '')
    end
    subbed
end

# numbers_parser = /^[\d]{4} ?[\d]{3} ?[\d]{3}$|^((\+254) ?7[\d]{2} ?[\d]{3} ?[\d]{3})$|^(07\d-[\d]{3}-[\d]{4})$/ 

# Below are methods to return some regexes for validation in ./regex.rb
def simple_parser
    /^07[\d]{2} ?[\d]{3} ?[\d]{3}$/
end

def lines_parser
    /^07(0|1|2|9)[\d]{7}$/
end

def lines_parser2
    /^07[0129][\d]{7}$/
end

def email_parser
    /[a-zA-Z]+\.[a-zA-Z]+@(student\.)?moringaschool.com/
end
