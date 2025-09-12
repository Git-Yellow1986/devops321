USERID=$(id -u) # id -u is give the root id 
if [ $USERID -ne 0 ]
then
    echo "Please run this scrip root privelege"
    exit 1
fi

# dnf list installed git
dnf install nginx -y


