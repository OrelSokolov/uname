#include <sys/utsname.h>
#include <stdlib.h>
#include <string.h>

char* static_to_dynamic(char str[]){
    char* result = (char*)malloc((strlen(str)+1)*sizeof(char));
    strcpy(result, str);

    return result;
}

char* uname_sysname(){
    struct utsname u;
    uname(&u);
    return static_to_dynamic(u.sysname);
}

char* uname_nodename(){
    struct utsname u;
    uname(&u);
    return static_to_dynamic(u.nodename);
}

char* uname_release(){
    struct utsname u;
    uname(&u);
    return static_to_dynamic(u.release);
}

char* uname_machine(){
    struct utsname u;
    uname(&u);
    return static_to_dynamic(u.machine);
}

char* uname_version(){
    struct utsname u;
    uname(&u);
    return static_to_dynamic(u.version);
}
