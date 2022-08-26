require "pry"
require_relative './methods.rb'

# Assuming an array of telephone numbers whose format we want to verify
numbers = [
    "0712345678", 
    "0712 345 678", 
    "+254712345678", 
    "+254 712 345 678",
    "070-123-4567",
    "0801032456",
    "070009999999999",
    "078990",
    "0111345678"
]




# puts sub_254(numbers)
# puts heifen_remover(numbers)



standardized = sub_254(numbers)           # takes the numbers array and returns another array but without +254
no_heifen = heifen_remover(standardized)   #takes the numbers array without +254 and returns another array but without any possible heifens

# puts no_heifen
# simple_parser = /^(0 ?7)[\d]{2} ?[\d]{3} ?[\d]{3}$/

# puts no_heifen.grep(simple_parser)

# Assuming an array of telephone numbers whose origin we'd like to verify if its safaricom
saf_lines = [
    "0701234567", 
    "0711123456", 
    "+254721123456", 
    "0791123456",
    "0750123456",
    "0770123456",
    "07123456",
    "071234567890"
]

subbed_saf_lines = sub_254(saf_lines)

# puts subbed_saf_lines

# lines_parser2 = /^07[0129][\d]{7}$/


# puts subbed_saf_lines.grep(lines_parser2)
# # p saf_lines


# Assuming an array of emails we'd like to verify whether they are Moringa's
emails = [
    'michael.murage@student.moringaschool.com',
    'professorombiji@student.moringaschool.com', 
    'leroy.ombiji@student.moringaschool.com',
    'stella.waithera@moringaschool.com',
    'michaelmurage@moringaschool.com',
    'leroy.ombiji@moringaschool.com'
]

# email_parser = /^[a-zA-Z]+\.[a-zA-Z]+@(student\.)?moringaschool.com$/

puts emails.grep(email_parser)

# # binding.pry