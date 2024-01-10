# Linux-Script
XenonStack Task1 Linux Script
internsctl file 
![Screenshot from 2024-01-10 16-30-06](https://github.com/Rajeet1729/Linux-Script/assets/99602252/54ade7ae-a3e5-4b96-ac32-228fbc9ee46f)

# version

./internsctl.sh --version
![Screenshot from 2024-01-10 16-28-04](https://github.com/Rajeet1729/Linux-Script/assets/99602252/6e5c2fd3-ff10-4538-80b6-4e8ed5200354)

# cpuinfo

./internsctl.sh cpu getinfo
![Screenshot from 2024-01-10 16-33-07](https://github.com/Rajeet1729/Linux-Script/assets/99602252/dcd9cf2b-2a26-4708-9e4a-70083eae4202)

# memoryinfo

./internsctl.sh memory getinfo
![Screenshot from 2024-01-10 16-34-01](https://github.com/Rajeet1729/Linux-Script/assets/99602252/df62b96a-0074-4a1f-be4b-cbe3916d3b4d)

# user create
./internsctl.sh user create user1
![Screenshot from 2024-01-10 16-37-40](https://github.com/Rajeet1729/Linux-Script/assets/99602252/89fd34dd-f7e8-48a9-966b-dbbde4a3e29b)

# user list
./internsctl.sh user list
![Screenshot from 2024-01-10 16-38-12](https://github.com/Rajeet1729/Linux-Script/assets/99602252/0d8b1caa-46b6-431f-be52-af007b33654c)

# sudo only and file info
.internsctl.sh --sudo-only
./internsctl.sh file getinfo <file-name>
![Screenshot from 2024-01-10 16-39-15](https://github.com/Rajeet1729/Linux-Script/assets/99602252/6e387cd6-cc23-4d34-a479-deb4df6d8a8d)

# info of file with [options]
root@Asus:/home/asus/Downloads# ./internsctl.sh file getinfo -p internsctl
-rw-rw-r--
root@Asus:/home/asus/Downloads# ./internsctl.sh file getinfo -s internsctl
458
root@Asus:/home/asus/Downloads# ./internsctl.sh file getinfo -o internsctl
asus
root@Asus:/home/asus/Downloads# ./internsctl.sh file getinfo -m internsctl

![Screenshot from 2024-01-10 16-44-24](https://github.com/Rajeet1729/Linux-Script/assets/99602252/a06b2fda-1cea-4f0d-b7d0-fc1848b2312f)


