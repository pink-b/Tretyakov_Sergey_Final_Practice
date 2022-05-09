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
  Create test cases screenshot
Test Case 1.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${none_variable}  19032001stR+  19032001stR+  ${random_email}
  page should contain  Login must not be empty.
  Create test cases screenshot
Test Case 1.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ser12  19032001stR+  19032001stR+  ${random_email}
  page should contain  Login must be alphanumeric string with length => 6 and <= 50.
  Create test cases screenshot
Test Case 1.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_long_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  Login must be alphanumeric string with length => 6 and <= 50.
  Create test cases screenshot
Test Case 2.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  _#$%^&*()!_+  19032001stR+  19032001stR+  ${random_email}
  page should contain  The Username must have at least 1 digit or 1 Latin letter
  Create test cases screenshot
Test Case 3.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
  Create test cases screenshot
Test Case 3.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19St+  19St+  ${random_email}
  page should contain  Password length must be >= 8 and <= 50.
  Create test cases screenshot
Test Case 3.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  Pdmknkpyk+  Pdmknkpyk+  ${random_email}
  page should contain  At least one digit must be in password
  Create test cases screenshot
Test Case 3.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  190320012+  190320012+  ${random_email}
  page should contain  At least one lower letter must be in password
  Create test cases screenshot
Test Case 3.5
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001str+  19032001str+  ${random_email}
  page should contain  At least one upper letter must be in password
  Create test cases screenshot
Test Case 3.6
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR  19032001stR  ${random_email}
  page should contain  At least one non alpha numeric symbol must be in password
  Create test cases screenshot
Test Case 3.7
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  _#$%^&*()!_+  _#$%^&*()!_+  ${random_email}
  page should contain  At least one digit must be in password
  Create test cases screenshot
Test Case 4.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Check That Password Is Hidden
  Create test cases screenshot
Test Case 4.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Check Unmask Password Checkbox
  Create test cases screenshot
Test Case 5.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
  Create test cases screenshot
Test Case 5.2
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pin//k-b@list.ru
  page should contain  Email address is incorrect.
  Create test cases screenshot
Test Case 5.3
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pink-bllist.ru
  page should contain  Email address is incorrect.
  Create test cases screenshot
Test Case 5.4
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pink-b@listru
  page should contain  Email address is incorrect.
  Create test cases screenshot
Test Case 5.5
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pink-b@list.
  page should contain  Email address is incorrect.
  Create test cases screenshot
Test Case 6.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Check Role Popup
  Create test cases screenshot
Test Case 8.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form With Admin Role  ${random_username}  19032001stR+  19032001stR+  ${random_email}
  page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
  Create test cases screenshot
Test Case 9.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form With Admin Role  SergeyTretyakov21  123  123  pin//k-b@list.ru
  page should contain  Please fill out the formonce again
  Create test cases screenshot
Test Case 10.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  19032001stR+  pink-b@list.ru
  page should contain  The user with such email adress has been already registered. Please fill out another email adress
  Create test cases screenshot
Test Case 13.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Click on information button
  page should contain  Login must contain only alphanumeric characters and contain at least 6 characters
  Create test cases screenshot
Test Case 14.1
  [Setup]  open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  [Teardown]  close browser
  Fill Registration Form  ${random_username}  19032001stR+  20032001stR+  ${random_email}
  page should contain  Password must match confirm password.
  Create test cases screenshot
Test Case 15.1
  [Setup]  Log In System
  [Teardown]  close browser
  Check Main Page Elements
  Create test cases screenshot
Test Case 16.1
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Country
  Create test cases screenshot

Test Case 16.2
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  City
  Create test cases screenshot

Test Case 16.3
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Building
  Create test cases screenshot

Test Case 16.4
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Floor
  Create test cases screenshot

Test Case 16.5
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Room
  Create test cases screenshot

Test Case 16.6
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Rack
  Create test cases screenshot

Test Case 16.7
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Post terminal
  Create test cases screenshot

Test Case 16.8
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Pay Box
  Create test cases screenshot

Test Case 16.9
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  ATM
  Create test cases screenshot

Test Case 16.10
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Type  Device
  Create test cases screenshot


Test Case 17.1
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Country
  Create test cases screenshot

Test Case 17.2
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  City
  Create test cases screenshot

Test Case 17.3
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Building
  Create test cases screenshot

Test Case 17.4
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Floor
  Create test cases screenshot

Test Case 17.5
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Room
  Create test cases screenshot

Test Case 17.6
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Rack
  Create test cases screenshot

Test Case 17.7
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Post terminal
  Create test cases screenshot

Test Case 17.8
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Pay Box
  Create test cases screenshot

Test Case 17.9
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  ATM
  Create test cases screenshot

Test Case 17.10
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Object Attributes  Device
  Create test cases screenshot


Test Case 18.1
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Country
  Create test cases screenshot

Test Case 18.2
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  City
  Create test cases screenshot

Test Case 18.3
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Building
  Create test cases screenshot

Test Case 18.4
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Floor
  Create test cases screenshot

Test Case 18.5
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Room
  Create test cases screenshot

Test Case 18.6
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Rack
  Create test cases screenshot

Test Case 18.7
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Post terminal
  Create test cases screenshot

Test Case 18.8
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Pay Box
  Create test cases screenshot

Test Case 18.9
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  ATM
  Create test cases screenshot

Test Case 18.10
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Create Object And Edit  Device
  Create test cases screenshot

Test Case 19.1
  [Setup]  Log In System And Open Inventory Menu
  [Teardown]  close browser
  Check Search Box
  Create test cases screenshot











