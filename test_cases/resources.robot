*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#Registration Form Test Cases
 # [Arguments]  ${random_username} ${random_email}
  #[Arguments]
  #open browser  https://inventory.edu-netcracker.com/pages/registration.xhtml  chrome
  #input text  id:registerForm:username  ${random_username}
  #input text  id:registerForm:password  19032001stR+
  #input text  id:registerForm:confirmPassword  19032001stR+
  #input text  id:registerForm:email  ${random_email}
  #click button  xpath://input[@name='registerForm:j_idt26']
  #Sleep  5
  #page should contain  An email should have been sent to your address. It contains easy instructions to complete your registration
  #close browser