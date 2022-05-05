*** Settings ***
Library  SeleniumLibrary
Library  Collections

Variables  ./test_cases/variables.py
Resource  ./test_cases/resources.robot

*** Test Cases ***
Test Case 1.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
Test Case 1.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${none_variable}  19032001stR+  19032001stR+  ${random_email}
  page should contain  Login must not be empty.
Test Case 1.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ser12  19032001stR+  19032001stR+  ${random_email}
  page should contain  Login must be alphanumeric string with length => 6 and <= 50.
Test Case 1.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_long_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  Login must be alphanumeric string with length => 6 and <= 50.
Test Case 2.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  _#$%^&*()!_+  19032001stR+  19032001stR+  ${random_email}
  page should contain  The Username must have at least 1 digit or 1 Latin letter
Test Case 3.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
Test Case 3.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19St+  19St+  ${random_email}
  page should contain  Password length must be >= 8 and <= 50.
Test Case 3.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  Pdmknkpyk+  Pdmknkpyk+  ${random_email}
  page should contain  At least one digit must be in password
Test Case 3.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  190320012+  190320012+  ${random_email}
  page should contain  At least one lower letter must be in password
Test Case 3.5
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001str+  19032001str+  ${random_email}
  page should contain  At least one upper letter must be in password
Test Case 3.6
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR  19032001stR  ${random_email}
  page should contain  At least one non alpha numeric symbol must be in password
Test Case 3.7
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  _#$%^&*()!_+  _#$%^&*()!_+  ${random_email}
  page should contain  At least one digit must be in password
Test Case 4.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Check That Password Is Hidden
Test Case 4.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Check Unmask Password Checkbox
Test Case 5.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
Test Case 5.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pin//k-b@list.ru
  page should contain  Email address is incorrect.
Test Case 5.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pink-bllist.ru
  page should contain  Email address is incorrect.
Test Case 5.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pink-b@listru
  page should contain  Email address is incorrect.
Test Case 5.5
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pink-b@list.
  page should contain  Email address is incorrect.
Test Case 6.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Check Role Popup
Test Case 8.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form With Admin Role  ${random_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
Test Case 9.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form With Admin Role  SergeyTretyakov21  123  123  pin//k-b@list.ru

  page should contain  Please fill out the formonce again
Test Case 10.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pink-b@list.ru
  page should contain  The user with such email adress has been already registered. Please fill out another email adress
Test Case 13.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  click element  xpath://label[@title='Login must contain only alphanumeric characters and contain at least 6 characters']
  page should contain  Login must contain only alphanumeric characters and contain at least 6 characters
Test Case 14.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  20032001stR+  ${random_email}
  page should contain  Password must match confirm password.
Test Case 15.1
  [Setup]  Log In System
  [Teardown]  close browser
  Check Main Page Elements

Test Case 16.1
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Country

Test Case 16.2
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  City

Test Case 16.3
  [Setup]  Log In System And Open Inventory Menu
  #[Teardown]  close browser
  Check Object Type  Building

Test Case 16.4
  [Setup]  Log In System And Open Inventory Menu
  #[Teardown]  close browser
  Check Object Type  Floor

Test Case 16.5
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Room

Test Case 16.6
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Rack

Test Case 16.7
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Post terminal

Test Case 16.8
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Pay Box

Test Case 16.9
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  ATM

Test Case 16.10
  [Setup]  Log In System And Open Inventory Menu
  #[Teardown]  close browser
  Check Object Type  Device


Test Case 17.1
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Country

Test Case 17.2
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  City

Test Case 17.3
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Building

Test Case 17.4
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Floor

Test Case 17.5
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Room

Test Case 17.6
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Rack

Test Case 17.7
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Post terminal

Test Case 17.8
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Pay Box

Test Case 17.9
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  ATM

Test Case 17.10
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Device


Test Case 18.1
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Country

Test Case 18.2
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  City

Test Case 18.3
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Building

Test Case 18.4
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Floor

Test Case 18.5
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Room

Test Case 18.6
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Rack

Test Case 18.7
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Post terminal

Test Case 18.8
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Pay Box

Test Case 18.9
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  ATM

Test Case 18.10
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Device

Test Case 19.1
  [Setup]  Log In System And Open Inventory Menu
  #[Teardown]  close browser
  Check Search Box
For Me
  Log In System










