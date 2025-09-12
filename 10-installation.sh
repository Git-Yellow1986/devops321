USERID=$(id -u) # id -u is give the root id 
if [ $USERID -ne 0 ]
then
    echo "Please run this scrip root privelege"
    exit 1
fi

 dnf list installed nginx
 #dnf install nginx -y

 if [ $? -ne 0 ]
 then 
    echo " Git is installed .... going to install it"
    dnf install git -y
if [ $? -ne 0 ]
then 
    echo " Git installation is not success ...check it"
    exit 1
    else
    echo "Git install now"

else 
    echo "Git is aleady installed , nothing to do "
fi



