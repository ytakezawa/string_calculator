import re

class   StringCalculator:
    def __init__(self):
        self.tokens = []

    def parse(self, exp):
        regex = ",\\ *"
        
        tempResult = re.split(regex, exp)

        if len(tempResult) > 0:
            for tag in tempResult:
                self.tokens.append(tag)

            result = self.tokenise( self.tokens )

        return self.tokens

    def tokenise(self, tokens):
        #private function
        result = re.findall("\+|\-|\*|/|%", tokens[0])
        if len(result) > 0 :
            self.tokens[0] = "OPERATOR"
        else:
            self.tokens[0] = "INVALID_OPERATOR"

        result = tokens[1].isdigit()
        if result :
            self.tokens[1] = "NUMBER"
        else:
            self.tokens[1] = "INVALID_NUMBER"

        result = tokens[2].isdigit()
        if result :
            self.tokens[2] = "NUMBER"
        else:
            self.tokens[2] = "INVALID_NUMBER"

        return result