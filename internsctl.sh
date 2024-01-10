cpu(){
    lscpu
}
memory(){
    free
}
user_create(){
    useradd $1
}
user_list(){
    awk -F'[/:]' '{if ($3 >= 1000 && $3 != 65534) print $1}' /etc/passwd
}
user_list_sudo(){
    getent group sudo | cut -d: -f4
}

file(){
    echo -e "File: `stat -c "%n" $1`\nAccess: `stat -c "%A" $1`\nSize(B): `stat -c "%s" $1`\nOwner: `stat -c "%U" $1`\nModify: `stat -c "%y" $1`"
}

file_perm(){
    stat -c "%A" $1
}
file_size(){
    stat -c "%s" $1
}
file_owner(){
    stat -c "%U" $1
}
file_last_modified(){
    stat -c "%y" $1
}


case "$1" in
    '--version')
        echo -e "v0.1.0"
    ;;
    '--help')
        echo -e "Get Cpu info - internsctl cpu getinfo \nGet Memory info - internsctl memory getinfo\nCreate User- - internsctl user create <username> \nGet User details- - internsctl user list \nGetSudo User details- - internsctl user list --sudo-only\nGet and Create File details - internsctl file getinfo <file-name>\nOptions for file info  ---size, -s to print size --permissions, -p print file permissions --owner, o print file owner --last-modified, m \nVersion info - internsctl --version"
    ;;
    'cpu')
        if [ "$2" == 'getinfo' ]; then
            cpu
        fi
        
    ;;
    'memory')
        if [ "$2" == 'getinfo' ]; then
            memory
        fi
        if [ -z "$2"]; then
            echo -e "Missing Arguments"
        fi
    ;;
    'user')
        if [ "$2" == 'create' ]; then
            if [ -n "$3" ]; then
                user_create "$3"
            fi
        fi
        if [ "$2" == 'list' ]; then
            if [ "$3" == '--sudo-only' ]; then
                user_list_sudo
            elif [ -z "$3" ]; then
                user_list
            fi
        fi
        if [ -z "$2" ]; then
            echo -e "Missing Arguments"
        fi
    ;;
    'file')
        if [ "$2" == 'getinfo' ]; then
            if [ -n "$3" ]; then
                if [ "$3" = "--permissions" -o "$3" = "-p" ]; then
                    file_perm "$4"
                elif [ "$3" = "--size" -o "$3" = "-s" ]; then
                    file_size "$4"
                elif [ "$3" = "--owner" -o "$3" = "-o" ]; then
                    file_owner "$4"
                elif [ "$3" = "--last-modified" -o "$3" = "-m" ]; then
                    file_last_modified "$4"
                else
                    file "$3"
                fi
            fi
        fi  
    ;;
esac