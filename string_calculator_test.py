from string_calculator import StringCalculator

sc= StringCalculator()
print(sc.parse("+,5,5"))

sc= StringCalculator()
print(sc.parse("+,,"))

sc= StringCalculator()
print(sc.parse("+,H,5"))

sc= StringCalculator()
print(sc.parse(",5,5"))

sc= StringCalculator()
print(sc.parse("3,5,5"))