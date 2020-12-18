advice = "Few things in life are as important as house training your pet dinosaur."

advice = advice.split(' ').slice!(8, 10).join(' ')
puts advice

# advice.slice!(0, advice.index('house'))
