USERID=$(id -u) # id -u is give the root id 
    # echo "user ID is : $USERID"

    VALIDATE(){
        # echo "exit status: $1"
        if [ $1 -ne 0 ]
        then 
            echo "$2 is ....FAILURE"
            exit 1 
        else
            echo "$2 is ....SUCCESS"
        fi
    }

if [ $USERID -ne 0 ]
then
    echo "Please run this scrip root privelege"
    exit 1
fi

 dnf list installed git

# VALIDATE $? "Listing Git"

 if [ $? -ne 0 ]
 then 
    echo " Git is installed .... going to install it"
    dnf install git -y
  VALIDATE $? "Installing Git"

else 
    echo "Git is aleady installed , nothing to do "
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo " Mysql sql is not installed ..... goin to to install"
    dnf install mysql -y
   VALIDATE $? "Installing Mysql"
else
    echo "Mysql is aleady installed .... nothing to do"
fi


