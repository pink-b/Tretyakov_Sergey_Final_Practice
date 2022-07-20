import os
from zipfile import ZipFile

def file_exists(file):
    return os.path.isfile(file)
def extract_zip(input_zip_path, directory_path):
    input_zip = ZipFile(input_zip_path,'r')
    input_zip.extractall(directory_path)
