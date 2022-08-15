def celciusToKF(t):
    '''
    Convert Celcius to Kelvin and Fahrenheit
    where K is Kelvin and F is Fahrenheit
    rounded to two decimal points
    '''

    K = round((t + 273.15),2)

    F = round((t * 9/5 + 32),2)

    return K,F

def kelvinToCF(t):
    '''
    Convert Kelvin to Celcius and Fahrenheit
    where C is Celcius and F is Fahrenheit
    rounded to two decimal points
    '''

    C = round((t - 273.15),2)

    F = round((C * 9/5 + 32),2)

    return C,F

def fahrenheitToCK(t):
    '''
    Convert Fahrenheit to Celcius and Kelvin
    where C is Celcius and K is Kelvin
    rounded to two decimal points
    '''

    C = round(((t - 32) * 5/9),2)

    K = round((C + 273.15),2)

    # print("The temperature is {C}\N{DEGREE SIGN} Celcius".format(C=C))
    return C,K


while True:
    #Initial temperature unit setup
    Unit1 = str(input("Please identify the original temperature unit (C,K,F) : "))
    Unit1 = Unit1.upper()

    #Celcius to kelvin and Fahrenheit
    if Unit1 == "C":
        t = float(input("Input temperature in Celcius : "))
        K,F = celciusToKF(t)
        while True:
            #Target temperature unit setup
            Unit2 = str(input("Please identify the final conversion temperature unit (K,F) : "))
            Unit2 = Unit2.upper()
            if Unit2 == "K":                         
                print(f"The temperature is {K} Kelvin")
            elif Unit2 == "F":
                print(f"The temperature is {F}\N{DEGREE SIGN} Fahrenheit")
            else:
                print("There are no such unit")
                continue
            break

    #Kelvin to Celcius and Fahrenheit
    elif Unit1 == "K":
        t = float(input("Input temperature in Kelvin : "))
        C,F = kelvinToCF(t)
        while True:
            #Target temperature unit setup
            Unit2 = str(input("Please identify the final conversion temperature unit (C,F) : "))
            Unit2 = Unit2.upper()
            if Unit2 == "C":
                print(f"The temperature is {C}\N{DEGREE SIGN} Celcius")
            elif Unit2 == "F":
                print(f"The temperature is {F}\N{DEGREE SIGN} Fahrenheit")
            else:
                print("There are no such unit")
                continue
            break

    #Fahrenheit to Celcius and Kelvin
    elif Unit1 == "F":
        t = float(input("Input temperature in Fahrenheit : "))
        C,K = fahrenheitToCK(t)
        while True:
            #Target temperature unit setup
            Unit2 = str(input("Please identify the final conversion temperature unit (C,K) : "))
            Unit2 = Unit2.upper()
            if Unit2 == "C":
                print(f"The temperature is {C}\N{DEGREE SIGN} Celcius")
            elif Unit2 == "K":
                print(f"The temperature is {K} Kelvin")
            else:
                print("There are no such unit")
                continue
            break


    else:
        print("There are no such unit")
        continue
    break

