#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "Please ran the script with root access"
   exit 1

fi 

VALIDATE(){
    if [ $2 -ne 0 ]
    then
      
       echo "Installing $1 is ....FAILED"
       exit 1

    else
      
       echo "Installing $1 is ..SUCCESS"

    fi

}

dnf list installed mysql

if [ $? -eq 0 ]
then 

  echo "mysql is already installed...skipping"

else
 
  echo "Installing MySQL"
  dnf install mysql -y
  VALIDATE MySQL $?

fi

dnf list installed nginx
if [$? -eq 0 ]
then

  echo "nginx is already installed ...skipping"

else
  
   echo "Installing nginx"
   dnf install nginx -y
   VALIDATE nginx $?

fi



