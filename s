[33mcommit 18c67483b495c1bab2db02e7d8f85a878e98630d[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: Yoshika Takezawa <ytakezaw@stevens.edu>
Date:   Tue Jul 27 15:44:03 2021 +0100

    initial commit

[1mdiff --git a/__pycache__/string_calculator.cpython-39.pyc b/__pycache__/string_calculator.cpython-39.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..f85cffe[m
Binary files /dev/null and b/__pycache__/string_calculator.cpython-39.pyc differ
[1mdiff --git a/string_calculator.py b/string_calculator.py[m
[1mnew file mode 100644[m
[1mindex 0000000..ee8177e[m
[1m--- /dev/null[m
[1m+++ b/string_calculator.py[m
[36m@@ -0,0 +1,40 @@[m
[32m+[m[32mimport re[m
[32m+[m
[32m+[m[32mclass   StringCalculator:[m
[32m+[m[32m    def __init__(self):[m
[32m+[m[32m        self.tokens = [][m
[32m+[m
[32m+[m[32m    def parse(self, exp):[m
[32m+[m[32m        regex = ",\\ *"[m
[32m+[m[41m        [m
[32m+[m[32m        tempResult = re.split(regex, exp)[m
[32m+[m
[32m+[m[32m        if len(tempResult) > 0:[m
[32m+[m[32m            for tag in tempResult:[m
[32m+[m[32m                self.tokens.append(tag)[m
[32m+[m
[32m+[m[32m            result = self.tokenise( self.tokens )[m
[32m+[m
[32m+[m[32m        return self.tokens[m
[32m+[m
[32m+[m[32m    def tokenise(self, tokens):[m
[32m+[m[32m        #private function[m
[32m+[m[32m        result = re.findall("\+|\-|\*|/|%", tokens[0])[m
[32m+[m[32m        if len(result) > 0 :[m
[32m+[m[32m            self.tokens[0] = "OPERATOR"[m
[32m+[m[32m        else:[m
[32m+[m[32m            self.tokens[0] = "INVALID_OPERATOR"[m
[32m+[m
[32m+[m[32m        result = tokens[1].isdigit()[m
[32m+[m[32m        if result :[m
[32m+[m[32m            self.tokens[1] = "NUMBER"[m
[32m+[m[32m        else:[m
[32m+[m[32m            self.tokens[1] = "INVALID_NUMBER"[m
[32m+[m
[32m+[m[32m        result = tokens[2].isdigit()[m
[32m+[m[32m        if result :[m
[32m+[m[32m            self.tokens[2] = "NUMBER"[m
[32m+[m[32m        else:[m
[32m+[m[32m            self.tokens[2] = "INVALID_NUMBER"[m
[32m+[m
[32m+[m[32m        return result[m
\ No newline at end of file[m
[1mdiff --git a/string_calculator_test.py b/string_calculator_test.py[m
[1mnew file mode 100644[m
[1mindex 0000000..4e4cb12[m
[1m--- /dev/null[m
[1m+++ b/string_calculator_test.py[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32mfrom string_calculator import StringCalculator[m
[32m+[m
[32m+[m[32msc= StringCalculator()[m
[32m+[m[32mprint(sc.parse("+,5,5"))[m
[32m+[m
[32m+[m[32msc= StringCalculator()[m
[32m+[m[32mprint(sc.parse("+,,"))[m
[32m+[m
[32m+[m[32msc= StringCalculator()[m
[32m+[m[32mprint(sc.parse("+,H,5"))[m
[32m+[m
[32m+[m[32msc= StringCalculator()[m
[32m+[m[32mprint(sc.parse(",5,5"))[m
[32m+[m
[32m+[m[32msc= StringCalculator()[m
[32m+[m[32mprint(sc.parse("3,5,5"))[m
\ No newline at end of file[m
