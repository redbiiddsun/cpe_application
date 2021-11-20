def main():
    
    Selection = int(input("Please Select 1. For Height and 2. For Width: "))

    if Selection == 1:
        print("Please Enter Height: ")
        Height =  int(input())
        calculation = (Height / 812) 
        print("A percentage of Height is " + str(calculation))
    elif Selection == 2:
        print("Please Enter Width: ")
        Width =  int(input())
        calculation = (Width / 375) 
        print("A percentage of Width is " + str(calculation))
    else:
        print("Error")

while 1:
    main()
