from random import randint

control_nums_ul = (2, 4, 10, 3, 5, 9, 4, 6, 8)
control_nums_fl = (
    (7, 2, 4, 10, 3, 5, 9, 4, 6, 8),
    (3, 7, 2, 4, 10, 3, 5, 9, 4, 6, 8),
)

def get_random_kno():
    '''Generate random Tax Authority Code'''
    return str(randint(10000, 19999))[1:]

def get_controls_inn_ul(inn):
    '''Get control number for Legal Entity INN'''
    inn = inn[:-1] if len(inn) == 10 else inn
    control_num = sum([x * int(y) for(x, y) in zip(control_nums_ul, inn)]) % 11
    control_num = 0 if control_num == 10 else control_num
    return str(control_num)

def get_controls_inn_fl(inn):
    '''Get control numbers for Individual Entrepreneur INN'''
    inn = inn[:-2] if len(inn) == 12 else inn
    first_control_num = sum([x * int(y) for(x, y) in zip(control_nums_fl[0], inn)]) % 11
    first_control_num = 0 if first_control_num == 10 else first_control_num
    inn += str(first_control_num)
    second_control_num = sum([x * int(y) for(x, y) in zip(control_nums_fl[1], inn)]) % 11
    second_control_num = 0 if second_control_num == 10 else second_control_num
    return str(first_control_num), str(second_control_num)

def get_random_inn_ul(kno=get_random_kno()):
    '''Get random Legal Entity INN'''
    inn = kno + str(randint(100000, 199999))[1:]
    inn += get_controls_inn_ul(inn)
    return inn

def get_random_inn_fl(kno=get_random_kno()):
    '''Get random Individual Entrepreneur INN'''
    inn = kno + str(randint(1000000, 1999999))[1:]
    inn += ''.join(get_controls_inn_fl(inn))
    return inn