shopt -s extglob

emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+([.][a-zA-Z]{2,3}){1,2}$"

phonePattern="^[0-9]{2}[[:space:]][0-9]{10}$"

passwordPattern="^(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"
function validate()
{

        if [[ ${1} =~ $2 ]]
        then
                echo "Yes"
        else
                echo $3
        fi
}

read -p "Enter the email Address: " Email
error="Invalid Email Enter the valid email address"
validate $Email $emailPattern "${error}"

read -p "Enter the phone number:- " PhoneNo
error="Invalid Phone Number "
validate "$PhoneNo" $phonePattern "${error}"

function Password()
{
        if [[ ${#1} -ge 6 && "$1" == *[A-Z]* && "$1" == *[a-zA-Z]* ]]
        then
                echo "Validate Password"
        else
                echo "Invalid Password"
        fi
}

read -p "Enter the password:" password
Password $password

