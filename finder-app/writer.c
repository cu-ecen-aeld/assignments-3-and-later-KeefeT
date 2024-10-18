
#include <syslog.h>
#include <stdio.h>


int main(int argc, char *argv[])
{
    openlog( NULL , 0, LOG_USER );

    if ( 3 != argc ) //argv[0] represents the program name
    {
        printf("TJK Not exactly two args");
        syslog( LOG_ERR, "Not exactly two args!" );
        return 1;
    }

    const char *writefile = argv[1];
    const char *writestr = argv[2];

    FILE *fp = fopen(writefile, "w"); //open file

    if ( NULL == fp )
    {
        syslog( LOG_ERR, "Failed to open file!" );
        return 1; 
    }

    syslog(LOG_USER, "Writing %s to %s", writestr, writefile); //log default to LOG_USER

    fprintf(fp, "%s", writestr);
    
    closelog(); //optional
}