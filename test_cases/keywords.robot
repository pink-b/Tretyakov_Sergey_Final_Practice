*** Settings ***
Library  your_path/keywords.py
Library  OperatingSystem

*** Keywords ***
Check Files In Directory
  #Аргументы: Имя zip файла, твой "определенный путь", путь до папки в которую разархивируется zip файл
  [Arguments]  ${file_name}  ${source_path}  ${directory_path}
  ${file_path}=  Catenate  ${directory_path}/${file_name}
  ${fileExists}=    File Exists  ${file_path}
  IF  ${fileExists} is False
    ${source_path}=  Catenate  ${source_path}/${file_name}
    Move File  ${source_path}  ${directory_path}
    Extract Zip  ${file_path}  ${directory_path}
  END