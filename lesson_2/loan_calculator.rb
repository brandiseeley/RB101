puts '>> Please enter the loan amount: '
loan_amount = gets.chomp.to_i

puts '>> Please enter the Annual Percentage Rate(APR): '
apr = gets.chomp.to_f

puts '>> Please enter the duration of the loan in years: '
dur_years = gets.chomp.to_f

monthly_interest_rate = apr / 12
dur_months = dur_years * 12

numerator = monthly_interest_rate * (1 + monthly_interest_rate)**dur_months
denominator = (1 + monthly_interest_rate)**dur_months - 1
monthly_payment = loan_amount * numerator / denominator

puts monthly_payment
