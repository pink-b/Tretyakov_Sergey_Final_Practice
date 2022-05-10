*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  String
Variables  ./test_cases/variables.py
Library  ./test_cases/variables.py

*** Keywords ***
Log in system
  open browser  https://inventory.edu-netcracker.com/login.jsp?justRegistered=true  chrome
  input text  xpath://input[@name='j_username']  Ssergexxt1554
  input text  xpath://input[@name='j_password']  19032001stR+
  click button  xpath://input[@name='submit']
Log In System And Open Inventory Menu
  open browser  https://inventory.edu-netcracker.com/login.jsp?justRegistered=true  chrome
  maximize browser window
  input text  xpath://input[@name='j_username']  Ssergexxt1554
  input text  xpath://input[@name='j_password']  19032001stR+
  click button  xpath://input[@name='submit']
  Wait Until Location Is  https://inventory.edu-netcracker.com/pages/startpage.xhtml
  click element  //div[@id='inventory']/a[contains(text(),'Inventory')]
Go to object
  [Arguments]  ${object}
  FOR    ${index}    IN RANGE    ${value_list_length}
  log  ${value_list}[${index}]
     IF    "${value_list}[${index}]"=="${object}"
        Fill Create Object Form  ${value_list}[${index}]
        Click To Save Button
        BREAK
     ELSE
       Fill Create Object Form  ${value_list}[${index}]
       Click To Save Button
       IF    "${value_list}[${index}]"=="Rack"
         ${index2}=  Get Index From List  ${value_list}  ${object}

         ${g}=  Catenate  xpath://a[contains(text(), '${value_list2}[${index2}]')]
         wait until element is enabled  ${g}
         click element  ${g}
         log  ${index2}
         log  ${object}
         log  ${value_list}[${index2}]
         Fill Create Object Form  ${value_list}[${index2}]
         Click To Save Button
         BREAK
         END
       ${ind}=  Evaluate  int(${index})+int(${one})
       ${g}=  Catenate  xpath://a[contains(text(), '${value_list2}[${ind}]')]
       wait until element is enabled  ${g}
       click element  ${g}
     END
  END

Check object type
  [Arguments]  ${object}
  Go To Object  ${object}
  Get Type Of Object
  List Should Contain Value  ${value_list}  ${el_type}

Check object attributes
  [Arguments]  ${object}
  Go To Object  ${object}
  Get Attributes Of Object
  ${bool_value}=  compare_lists  ${object}  ${attributes}
  log  ${object}
  log  ${attributes}
  Should Be True  ${bool_value}

Check Create Object And Edit
  [Arguments]  ${object}
  Go To Object  ${object}
  Get Attributes Of Object
  Click To Save Button
  ${attributes2}=  Convert To List  ${attributes}
  wait until element is enabled  xpath://div[@id='table_header']//a[contains(text(), 'Edit')]
  click element  xpath://div[@id='table_header']//a[contains(text(), 'Edit')]
  Get Attributes Of Object
  log  ${attributes2}
  log  ${attributes}
  ${attributes}=  Remove Duplicates  ${attributes}
  Should Be True  ${attributes2}==${attributes}

Check Search Box
  Go To Object  Country
  Click To Save Button
  ${text}=  get text  //div[@id='table_data']//*[contains(text(), 'Name')]/following-sibling::*[@class='parameter']
  log  ${text}
  input text  id:search-text-input  ${text}
  Press Keys  id:search-text-input  ENTER
  wait until element is enabled  xpath://select[@name='search_form:j_idt69']
  #Check "equals" criterion
  click element  xpath://select[@name='search_form:j_idt69']
  click element  xpath://option[text()='equal']
  input text  id:search_form:name  ${text}
  Check Response Data  ${text}  equals


  #Check "contains" criterion
  clear element text  id:search_form:name
  ${text2}=  get_part_of_string  ${text}  contains
  input text  id:search_form:name  ${text2}
  click element  xpath://select[@name='search_form:j_idt69']
  click element  xpath://option[text()='contains']
  log  ${text}
  Check Response Data  ${text2}  contains
  #Check "start with" criterio
  clear element text  id:search_form:name

  ${text2}=  get_part_of_string  ${text}  start
  input text  id:search_form:name  ${text2}
  click element  xpath://select[@name='search_form:j_idt69']
  click element  xpath://option[text()='start with']
  Check Response Data  ${text2}  start
  #Check "end with" criterio
  clear element text  id:search_form:name
  ${text2}=  get_part_of_string  ${text}  end
  input text  id:search_form:name  ${text2}
  click element  xpath://select[@name='search_form:j_idt69']
  click element  xpath://option[text()='end with']\
  Check Response Data  ${text2}  end


Check main page elements
  #Main pop ups
  page should contain element  //div[@id='inventory']/a[contains(text(),'Inventory')]
  page should contain element  //div[@id='infrastructure']/a[contains(text(),'Infrastructure orders')]
  #Software logo
  page should contain element  //div[@id='header']/a[contains(text(),'Software Logo')]
  page should contain link  //div[@id='header']/a[contains(text(),'Software Logo')]
  #Pop up menu
  page should contain element  //div[@id='navigation_toolbar']//a[text()='Navigation']
  ${text}=  get text  //div[@id='navigation_toolbar']//a[text()='Navigation']
  log  ${text}
  page should contain link  /pages/inventory/inventory.xhtml?id=2
  page should contain link  /tools/tools.xhtml
  page should contain element  //div[@id='navigation_toolbar']//a[text()='Infrastructure orders']
  #Log out link
  page should contain link  j_spring_security_logout
  page should contain  Log out
  #Navigation textbox
  page should contain element  xpath://a[contains(text(), 'Navigation')]
  click element  xpath://a[contains(text(), 'Navigation')]
  page should contain element  xpath://a[@class='navigation_link'][contains(text(), 'Inventory')]
  page should contain element  xpath://a[@class='disabled'][contains(text(), 'Infrastructure orders')]
  page should contain element  xpath://a[@class='navigation_link'][contains(text(), 'Tools')]

Check Unmask Password Checkbox
  input text  id:registerForm:password  19032001sT+
  input text  id:registerForm:confirmPassword  19032001sT+
  click element  xpath://input[@type='checkbox']
  capture page screenshot

Check That Password Is Hidden
  input text  id:registerForm:password  19032001sT+
  input text  id:registerForm:confirmPassword  19032001sT+
  capture page screenshot
  page should contain element  xpath://input[@type='password']

Work with navigation tree
  #Select Window    NEW
  ${handles}=    Get Window Handles
  log  ${handles}
  Switch Window    ${handles}[1]
  #Switch Window  title:Navigation Tree

  #This will take you to the latest window launched.
  wait until page contains element  xpath://title[text()='Navigation Tree']  50
  wait until element is visible  xpath:(//span[@class='ui-treenode-label ui-corner-all'])[1]//a[contains(text(), 'Country: ')]  50
  click element  xpath:(//span[@class='ui-treenode-label ui-corner-all'])[1]//a[contains(text(), 'Country: ')]

  click element  xpath://button[@id='OK']

  #Select Window    MAIN
  #Switch Window  locator=MAIN
  Switch Window    ${handles}[0]

  wait until page contains element  xpath://a[contains(text(), 'Software Logo')]  50

Fill Registration Form
  [Arguments]  ${username}  ${password}  ${confirm_password}  ${email}
  input text  id:registerForm:username  ${username}
  input text  id:registerForm:password  ${password}
  input text  id:registerForm:confirmPassword  ${confirm_password}
  input text  id:registerForm:email  ${email}
  click button  xpath://input[@name='registerForm:j_idt26']

Fill Registration Form With Admin Role
  [Arguments]  ${username}  ${password}  ${confirm_password}  ${email}
  input text  id:registerForm:username  ${username}
  input text  id:registerForm:password  ${password}
  input text  id:registerForm:confirmPassword  ${confirm_password}
  input text  id:registerForm:email  ${email}
  click element  id:registerForm:role
  click element  xpath://option[@value='Admin']
  click button  xpath://input[@name='registerForm:j_idt26']

Check Role Popup
  click element  id:registerForm:role
  capture page screenshot

Fill Create Object Form
  [Arguments]  ${object_type}
  IF    "${object_type}"=="Country"
    Click On Create Button
    input text  id:j_idt74:name  ${random_country}
    input text  id:j_idt74:language  ${random_language}
  END
  IF    "${object_type}"=="City"
    Click On Create Button
    input text  id:j_idt74:name  ${random_city}
    input text  id:j_idt74:population  ${random_population}

  END
  IF    "${object_type}"=="Building"
    Click On Create Button
    input text  id:j_idt74:name  ${random_building_name}
    input text  id:j_idt74:streetName  ${random_street}
    input text  id:j_idt74:number  ${random_number}
    input text  id:j_idt74:square  ${random_square}
    click element  id:j_idt74:isconnected
    wait until element is enabled  xpath://*[text()='Lit']
    #select frame
    click element  xpath://*[text()='Lit']

  END
  IF    "${object_type}"=="Floor"
    Click On Create Button
    input text  xpath://input[@id='j_idt74:number']  ${random_number}
    input text  id:j_idt74:square  ${random_square}

  END
  IF    "${object_type}"=="Room"
    Click On Create Button
    input text  id:j_idt74:name  ${random_number}
    input text  id:j_idt74:square  ${random_square}

  END
  IF    "${object_type}"=="Rack"
    Click On Create Button
    input text  id:j_idt74:name  ${random_room}
    input text  id:j_idt74:width  ${random_width}
    input text  id:j_idt74:length  ${random_length}
    input text  id:j_idt74:height  ${height}

  END
  IF    "${object_type}"=="Device"
    Click On Create Button
    input text  id:j_idt74:name  ${random_smart_phone_name}
    wait until element is enabled  id:j_idt74:macAddress
    input text  id:j_idt74:macAddress  ${random_mac_address}
    input text  id:j_idt74:ram  ${ram}
    input text  id:j_idt74:cpu  ${cpu}
    input text  id:j_idt74:ipAddress  ${random_ip_address}
    input text  id:j_idt74:width  ${random_width}
    input text  id:j_idt74:length  ${random_length}
    input text  id:j_idt74:height  ${random_heigth}
    click link  xpath://input[@id='j_idt74:locatedInOtName']/following::a[1]
    Work With Navigation Tree
    click link  xpath://input[@id='j_idt74:locatedInOtName']/following::a[3]
    Work With Navigation Tree

  END
  IF    "${object_type}"=="Post terminal"
    Click On Create Button
    input text  id:j_idt74:name  ${random_terminal_name}
    input text  id:j_idt74:width  ${random_width}
    input text  id:j_idt74:length  ${random_length}
    input text  id:j_idt74:height  ${random_heigth}
    click element  id:j_idt74:physicalStatus
    wait until element is enabled  xpath://option[text()='Planned']
    click element  xpath://option[text()='Planned']
    click link  xpath://input[@id='j_idt74:locatedInOtName']/following::a[1]
    Work With Navigation Tree

  END
  IF    "${object_type}"=="Pay Box"
    Click On Create Button
    input text  id:j_idt74:name  ${random_terminal_name}
    input text  id:j_idt74:secureProtocol  ${random_secure_protocol}
    input text  id:j_idt74:displaySize  ${display_size}
    click element  id:j_idt74:physicalStatus
    wait until element is enabled  //option[text()='Planned']
    click link  xpath://input[@id='j_idt74:locatedInOtName']/following::a[1]
    Work With Navigation Tree

  END
  IF    "${object_type}"=="ATM"
    Click On Create Button
    input text  id:j_idt74:name  ${random_terminal_name}
    input text  id:j_idt74:connectionType  ${connection_type}
    input text  id:j_idt74:extraSecurity  ${extra_security}
    click element  id:j_idt74:physicalStatus
    wait until element is enabled  //option[text()='Planned']
    click link  xpath://input[@id='j_idt74:locatedInOtName']/following::a[1]
    Work With Navigation Tree

  END

Click on create button
  wait until element is enabled  xpath://a[contains(text(), 'Create')]
  wait until element is visible  xpath://a[contains(text(), 'Create')]
  scroll element into view  xpath://a[contains(text(), 'Create')]
  click link  xpath://a[contains(text(), 'Create')]
  wait until element is visible  //a[text()='Software Logo']
  wait until element is enabled  //a[text()='Software Logo']

Get type of object
  wait until element is visible  xpath://th[text()='Object Type']//following-sibling::td
  wait until element is enabled  xpath://th[text()='Object Type']//following-sibling::td
  ${el_type}=  get text  xpath://th[text()='Object Type']//following-sibling::td

Get attributes of object
  ${count}=  Get Element Count  //div[@id='table_data']//th[text()='Modified When']/following::th
  ${count}=  Evaluate  ${count} + 1
  log  ${count}
  WHILE    ${one} != ${count}
    ${xpath_value}=  Catenate  //div[@id='table_data']//th[text()='Modified When']/following::th[${one}]
    ${text}=  get text  ${xpath_value}
    Append To List  ${attributes}  ${text}
    ${one}=  Evaluate  ${one} + 1
  END

Click to save button
  click button  name:j_idt74:j_idt76

Check response data
  [Arguments]  ${text}  ${type}
  click button  xpath://input[@name='search_form:j_idt77']

  ${no_result_text}=  get text  xpath://*[@id="j_idt80_data"]//td[1]
  IF  "${no_result_text}"=="No records found."
    Fail  No results for created object
  ELSE
    ${count_results}=  Get Element Count  xpath://*[@id="j_idt80_data"]//td[1]

    WHILE  ${one} != ${count_results}
      ${xpath_request}=  Catenate  xpath:(//*[@id="j_idt80_data"]//td[1])[${one}]
      ${text_result}=  get text  ${xpath_request}
      IF  "${type}"=="equals"
        log  ${one}
        log  ${text}
        log  ${text_result}

        IF  "${text}"=="${text_result}"
          ${one}=  Evaluate  ${one} + 1
          Continue For Loop
        ELSE
          Fail  Search result does not match the equals requirement
          BREAK
        END
          Pass Execution  All results are equal to query
      END
      IF  "${type}"=="contains"
        ${bool_value}=  result_contains  ${text_result}  ${text}

        log  ${one}
        log  ${text}
        log  ${text_result}
        IF  ${bool_value}
          ${one}=  Evaluate  ${one} + 1
          Continue For Loop
        ELSE
          Fail  Search result does not match the equals requirement
          BREAK
        END
          Pass Execution  All results are equal to query
      END
      IF  "${type}"=="start"
        ${bool_value}=  result_contains  ${text_result}  ${text}

        log  ${one}
        log  ${text}
        log  ${text_result}
        IF  ${bool_value}
          ${one}=  Evaluate  ${one} + 1
          Continue For Loop
        ELSE
          Fail  Search result does not match the equals requirement
          BREAK
        END
          Pass Execution  All results are equal to query
      END
      IF  "${type}"=="end"
        ${bool_value}=  result_contains  ${text_result}  ${text}

        log  ${one}
        log  ${text}
        log  ${text_result}
        IF  ${bool_value}
          ${one}=  Evaluate  ${one} + 1
          Continue For Loop
        ELSE
          Fail  Search result does not match the equals requirement
          BREAK
        END
          Pass Execution  All results are equal to query
      END
    END
  END

Click on information button
  click element  xpath://label[@title='Login must contain only alphanumeric characters and contain at least 6 characters']


Create test cases screenshot
  Set Screenshot Directory  ./test_cases/screenshots
  Capture Page Screenshot
