
with open('instruction_init.coe' ,'w') as f:
    f.write('memory_initialization_radix=16;\n')
    f.write('memory_initialization_vector=\n')
    for i in range(256):
        if i < 255:
            f.write('00000000000000000000000000000000,\n')
        else:
            f.write('00000000000000000000000000000000;')  # Last value should end with a semicolon