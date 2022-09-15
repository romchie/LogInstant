import os
import time
from getpass import getpass

def main():
    u = input("Enter your PODS username: ")
    p = getpass("Enter your PODS password: ")
    os.system("touch .certs")
    f = open(".certs", 'w')
    f.write(str(u + '\n' + p + '\n'))
    f.close()

main()