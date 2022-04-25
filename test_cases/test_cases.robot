*** Settings ***
Library  SeleniumLibrary
Variables  ./test_cases/variables.py

*** Test Cases ***
Test Case 1.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  #[Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  ${random_email}
  sleep 50
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
Test Case 1.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Login must not be empty.
Test Case 1.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ser12
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Login must be alphanumeric string with length => 6 and <= 50.
Test Case 1.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  sergeytvumefaddsfasadffsdfasdfvzcgfhntdfggfvbxcvb2034295458921VERYlongloginverylong+
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Login must be alphanumeric string with length => 6 and <= 50.
Test Case 2.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  _#$%^&*()!_+
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  The Username must have at least 1 digit or 1 Latin letter
Test Case 3.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
Test Case 3.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19St+
  input text  id:registerForm:confirmPassword  19St+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Password length must be >= 8 and <= 50.
Test Case 3.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  Pdmknkpyk+
  input text  id:registerForm:confirmPassword  Pdmknkpyk+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  At least one digit must be in password
Test Case 3.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  190320012+
  input text  id:registerForm:confirmPassword  190320012+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  At least one lower letter must be in password
Test Case 3.5
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001str+
  input text  id:registerForm:confirmPassword  19032001str+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  At least one upper letter must be in password
Test Case 3.6
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR
  input text  id:registerForm:confirmPassword  19032001stR
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  At least one non alpha numeric symbol must be in password
Test Case 3.7
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  _#$%^&*()!_+
  input text  id:registerForm:confirmPassword  _#$%^&*()!_+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  At least one digit must be in password
Test Case 4.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:password  19032001sT+
  input text  id:registerForm:confirmPassword  19032001sT+
  capture page screenshot
  page should contain element  xpath://input[@type='password']
Test Case 4.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:password  19032001sT+
  input text  id:registerForm:confirmPassword  19032001sT+
  click element  xpath://input[@type='checkbox']
  page should contain element  xpath://input[@type='text']
  capture page screenshot
Test Case 5.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
Test Case 5.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  pin//k-b@list.ru
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Email address is incorrect.
Test Case 5.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  pink-bllist.ru
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Email address is incorrect.
Test Case 5.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  pink-b@listru
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Email address is incorrect.
Test Case 5.5
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  pink-b@list.
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Email address is incorrect.
Test Case 6.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  click element  id:registerForm:role
  capture page screenshot
Test Case 8.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  ${random_email}
  click element  id:registerForm:role
  click element  xpath://option[@value='Admin']
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
Test Case 9.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  SergeyTretyakov21
  input text  id:registerForm:password  123
  input text  id:registerForm:confirmPassword  123
  input text  id:registerForm:email  pin//k-b@list.ru
  click element  id:registerForm:role
  click element  xpath://option[@value='Admin']
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Please fill out the formonce again
Test Case 10.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  19032001stR+
  input text  id:registerForm:email  pink-b@list.ru
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  The user with such email adress has been already registered. Please fill out another email adress
Test Case 13.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  click element  xpath://label[@title='Login must contain only alphanumeric characters and contain at least 6 characters']
  page should contain  Login must contain only alphanumeric characters and contain at least 6 characters
Test Case 14.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  input text  id:registerForm:username  ${random_username}
  input text  id:registerForm:password  19032001stR+
  input text  id:registerForm:confirmPassword  20032001stR+
  input text  id:registerForm:email  ${random_email}
  click button  xpath://input[@name='registerForm:j_idt26']
  page should contain  Password must match confirm password.











