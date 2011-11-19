;
;       TEST PROGRAM 1 FROM IMSAI 8080 USERS MANUAL
;
        ORG     0

L1:     IN      0FFH
        OUT     0FFH
        JMP     L1

        END
