import re


class TagManipulator:
    def parse_string(self, expr, regex=",\\ *"):
        result = []
                    
        tempResult = re.split( regex, expr )
        if( len(tempResult[0]) > 0 ):
            result = tempResult 
        
        return result