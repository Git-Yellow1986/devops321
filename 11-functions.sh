USERID=$(id -u) # id -u is give the root id 
    # echo "user ID is : $USERID"

    VALIDATE(){
        echo "exit status: $1"
    }
if [ $USERID -ne 0 ]
then
    echo "Please run this scrip root privelege"
    exit 1
fi

 dnf list installed git
 VALIDATE $?

#  if [ $? -ne 0 ]
#  then 
#     echo " Git is installed .... going to install it"
#     dnf install git -y
#     if [ $? -ne 0 ]
#     then 
#     echo " Git installation is not success ...check it"
#     exit 1
#     else
#     echo "Git install is success"
#     fi

# else 
#     echo "Git is aleady installed , nothing to do "
# fi

# dnf install mysql -y

# if [ $? -ne 0 ]
# then 
#     echo " Mysql sql is not installed ..... goin to to install"
#     dnf install mysql -y
#     if [ $? -ne 0 ]
#     then 
#         echo "Mysql installation is failure....check it"
#         exit 1
#     else 
#         echo "Mysql installation is success....."
#     fi
# else
#     echo "Mysql is aleady installed .... nothing to do"
# fi


