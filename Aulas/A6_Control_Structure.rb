#? IF, ELSE e ELSIF
a = 5
if a >= 0 and a < 5
  puts "entre 0 e 4"
elsif a >= 5 and a < 10
  puts "entre 5 e 10"
else 
  puts "maior que 10"
end

#? UNLESS
#* unless é como se fosse um if not
product_status = 'closed'

unless product_status == 'open'
  check_change = "can not"
else 
  check_change = "can"
end

puts "You #{check_change} change the product"


#? CASE
#* Equivale ao switch-case
#* 1..3  é intervalo de 1 a 3
month = 10

case month
when 1..3
  puts "primeiro trimestre"
when 4..6
  puts "segundo trimestre"
when 7..9
 puts  "terceiro trimestre"
when 9..12
  puts "quarto trimestre"
else
  puts "erro"
end




