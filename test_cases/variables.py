
import Random_data
import random
import socket
import struct


random_email = Random_data.random_char(7)+"@gmail.com"
random_username = Random_data.random_username(['sergey', 'tretyakov'])
value_list = ['Country', 'City', 'Building', 'Floor', 'Room', 'Rack', 'Post terminal', 'Pay Box', 'ATM', 'Device']
value_list2 = ['Countries', 'Cities', 'Buildings', 'Floors' ,'Rooms','Racks', 'Post Terminal (s)', 'Pay Box (s)', 'ATM (s)','Devices']
value_list_length = len(value_list)
random_country = random.choice(Random_data.countries)[1] + str(random.randint(10,10000))

random_language = random_country + "language"
country = "Country"
count = 0
random_city = Random_data.doname()
random_population = random.randint(1000,1000000)
random_building_name = Random_data.buildings[random.randint(0,5)]
random_street = random_city + " St"
random_number = random.randint(1,2000)
random_square = random.randint(1,20)
random_room = random.randint(1,25)
random_width = random.randint(5,20)
random_heigth = random.randint(5,20)
random_length = random.randint(4,10)
height = 3
random_ip_address = socket.inet_ntoa(struct.pack('>I', random.randint(1, 0xffffffff)))
random_smart_phone_name = random.choice(Random_data.phone_models)
random_mac_address = ':'.join(map(lambda x: "%02x" % x, Random_data.mac))
ram = 144
cpu = 3
random_terminal_name = 'terminal ' + str(random.randint(1,2000))
display_size = 11
random_secure_protocol = random.randint(1000,20000)
connection_type = "ITU-T"
extra_security = "Extra"
one = 1
random_long_username = "sergeytvumefaddsfasadffsdfasdfvzcgfhntdfggfvbxcvb2034295458921VERYlongloginverylong+" + str(random.randint(20,2000))
def getIndex(String:object) :
    index = value_list.index(object)

country_attributes = ['Continent', 'Language', 'Population ', 'Is a regional center']
city_attributes = ['Population', 'Is a regional center']
building_attributes = ['Street Name', 'Number', 'Square', 'Is connected']
floor_attributes = ['Number', 'Square']
room_attributes = ['Square']
rack_attributes = ['Width', 'Length', 'Height', 'Physical Status']
post_terminal_attributes = ['Width', 'Length', 'Height', 'Physical Status']
pay_box_attributes = ['Secure Protocol', 'Display Size(Inches)', 'Physical status']
atm_attributes = ['Connection type', 'Extra Security', 'Physical status']
device_attributes = ['Network Element', 'MAC Address', 'RAM(Gb)', 'CPU ', 'IP Address', 'Physical status', 'Width', 'Length', 'Height ']
attributes = []
attributes2 = []
none_variable = None

def compare_lists(object, attributes) : #сделать словарь
    if object == "Country":
        return country_attributes == attributes
    if object == "City":
        return city_attributes == attributes
    if object == "Building":
        return building_attributes == attributes
    if object == "Floor":
        return floor_attributes == attributes
    if object == "Room":
        return room_attributes == attributes
    if object == "Rack":
        return rack_attributes == attributes
    if object == "Post terminal":
        return post_terminal_attributes == attributes
    if object == "Pay Box":
        return pay_box_attributes == attributes
    if object == "ATM":
        return atm_attributes == attributes
    if object == "Device":
        return device_attributes == attributes

def get_part_of_string(str,criterio):
    str_length = len(str)
    print(str_length)
    if criterio=="start":
        return str[0:int(str_length/2)]
    if criterio=="end":
        return str[int(str_length/2):int(str_length)]
    if criterio=="contains":
        return str[0:4]


def result_contains(text_result, text):
    return text in text_result


