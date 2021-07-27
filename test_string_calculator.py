import string_calculator

def test_correct_params_expect_OP_NUM_NUM():
    # Arrange
    cut = string_calculator.StringCalculator()
    inputVal = "+, 3, 4"
    expResult = ["OPERATOR", "NUMBER", "NUMBER"]
    
    # Act
    result = cut.parse(inputVal)
    
    # Assert
    assert result == expResult

def test_correct_params_expect_INVALID_OP_NUM_NUM():
    # Arrange
    cut = string_calculator.StringCalculator()
    inputVal = "A, 3, 4"
    expResult = ["INVALID_OPERATOR", "NUMBER", "NUMBER"]
    
    # Act
    result = cut.parse(inputVal)
    
    # Assert
    assert result == expResult