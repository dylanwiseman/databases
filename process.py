#opening the file that contains the data and saving it to a variable called 'log_file':
log_file = open("um-server-01.txt")

#defining a function called 'sales_reports' that takes the data in log_file as a param:
def sales_reports(log_file):
    #initiating a for loop that will go through each line in log_file:
    for line in log_file:
        #removes trailing whitespace from the end of each line:
        line = line.rstrip()
        #creates a variable called day that holds the first 3 char of each line:
        day = line[0:3]
        #checks if day is equal to 'Tue':
        if day == "Tue":
            #if it is, prints the line in the terminal:
            print(line)

#calling the function we just created:
sales_reports(log_file)
