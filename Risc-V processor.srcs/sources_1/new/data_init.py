
with open("data_init.coe", "w") as f:
    f.write("memory_initialization_radix=16;\n")
    f.write("memory_initialization_vector=\n")

    for i in range(512):
        if i < 511:
            f.write("00000000,\n")
        else:
            f.write("00000000;")  # Last value should end with a semicolon