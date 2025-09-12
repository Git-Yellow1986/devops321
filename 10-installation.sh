USERID=$(id -u)
if [ $USERID -ne 0 ]
    echo "Please run this scrip root privelege"
    exit 1
fi