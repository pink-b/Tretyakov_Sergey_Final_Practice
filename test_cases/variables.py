from random import random
import random
import string

def random_char(char_num):
       return ''.join(random.choice(string.ascii_letters) for _ in range(char_num))

def random_username(arr) :
    first_letter = arr[0][0:5]
    three_letters_surname = arr[-1][:random.randint(0,3)].rjust(3, 'x')
    number = '{:03d}'.format(random.randrange (1,9999))
    username = '{}{}{}{}'.format("S",first_letter, three_letters_surname, number)
    return username

random_email = random_char(7)+"@gmail.com"
random_username = random_username(['sergey', 'tretyakov'])