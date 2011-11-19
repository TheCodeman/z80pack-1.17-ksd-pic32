# 1 "../z80sim/sim1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/sim1.c"
# 29 "../z80sim/sim1.c"
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 1 3
# 19 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stddef.h" 1 3
# 75 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stddef.h" 3
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/machine/ansi.h" 1 3
# 76 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stddef.h" 2 3


typedef long unsigned int size_t;




typedef long int ptrdiff_t;







typedef int wchar_t;




typedef unsigned int wint_t;
# 20 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 2 3



# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdarg.h" 1 3
# 75 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdarg.h" 3
typedef __builtin_va_list __va_list;





typedef __builtin_va_list __gnuc_va_list;
# 126 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdarg.h" 3
typedef __va_list va_list;
# 24 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 2 3





extern struct _iobuf {
 char * _ptr;
 int _cnt;
 char * _base;
 unsigned short _flag;
 short _file;
 size_t _size;
} _iob[8];


    extern struct _iobuf *_Files;
# 49 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
    extern struct _tfiles
        {
          char tname[81];
          struct _iobuf * tfp;
        } * _tfilesptr;
# 137 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
    extern int _mon_getc (int canblock);
    extern void _mon_putc (char c);
    extern void _mon_puts (const char * s);
    extern void _mon_write (const char * s, unsigned int count);
# 230 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
    extern int _flsbuf(char, struct _iobuf *);
    extern int _filbuf(struct _iobuf *);
    extern int fclose(struct _iobuf *);
    extern int fflush(struct _iobuf *);
    extern int fgetc(struct _iobuf *);
    extern int ungetc(int, struct _iobuf *);
    extern int fputc(int, struct _iobuf *);
    extern int getw(struct _iobuf *);
    extern int putw(int, struct _iobuf *);
    extern int fputs(const char *, struct _iobuf *);
    extern int fread(void *, size_t, size_t, struct _iobuf *);
    extern size_t fwrite(const void *, size_t, size_t, struct _iobuf *);
    extern int fseek(struct _iobuf *, long, int);
    extern int rewind(struct _iobuf *);
    extern void setbuf(struct _iobuf *, char *);
    extern int setvbuf(struct _iobuf *, char *, int, size_t);
    extern int fprintf(struct _iobuf *, const char *, ...);
    extern int _fprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_eE (struct _iobuf *, const char *, ...); extern int _fprintf_eEfF (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _fprintf_eEgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEs (struct _iobuf *, const char *, ...); extern int _fprintf_fF (struct _iobuf *, const char *, ...); extern int _fprintf_fFgG (struct _iobuf *, const char *, ...); extern int _fprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_fFs (struct _iobuf *, const char *, ...); extern int _fprintf_gG (struct _iobuf *, const char *, ...); extern int _fprintf_gGs (struct _iobuf *, const char *, ...); extern int _fprintf_s (struct _iobuf *, const char *, ...); extern int _fprintf (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_eE (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfF (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEs (struct _iobuf *, const char *, ...); extern int _dfprintf_fF (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_fFs (struct _iobuf *, const char *, ...); extern int _dfprintf_gG (struct _iobuf *, const char *, ...); extern int _dfprintf_gGs (struct _iobuf *, const char *, ...); extern int _dfprintf_s (struct _iobuf *, const char *, ...); extern int _dfprintf (struct _iobuf *, const char *, ...);;
    extern int fscanf(struct _iobuf *, const char *, ...);
    extern int _fscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_eE (struct _iobuf *, const char *, ...); extern int _fscanf_eEfF (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _fscanf_eEgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEs (struct _iobuf *, const char *, ...); extern int _fscanf_fF (struct _iobuf *, const char *, ...); extern int _fscanf_fFgG (struct _iobuf *, const char *, ...); extern int _fscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_fFs (struct _iobuf *, const char *, ...); extern int _fscanf_gG (struct _iobuf *, const char *, ...); extern int _fscanf_gGs (struct _iobuf *, const char *, ...); extern int _fscanf_s (struct _iobuf *, const char *, ...); extern int _fscanf (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_eE (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfF (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEs (struct _iobuf *, const char *, ...); extern int _dfscanf_fF (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_fFs (struct _iobuf *, const char *, ...); extern int _dfscanf_gG (struct _iobuf *, const char *, ...); extern int _dfscanf_gGs (struct _iobuf *, const char *, ...); extern int _dfscanf_s (struct _iobuf *, const char *, ...); extern int _dfscanf (struct _iobuf *, const char *, ...);;
    extern int vfprintf(struct _iobuf *, const char *, va_list);
    extern int _vfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_eE (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fF (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_gG (struct _iobuf *, const char *, va_list); extern int _vfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_s (struct _iobuf *, const char *, va_list); extern int _vfprintf (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eE (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_s (struct _iobuf *, const char *, va_list); extern int _dvfprintf (struct _iobuf *, const char *, va_list);;
    extern int vfscanf(struct _iobuf *, const char *, va_list);
    extern int _vfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_eE (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fF (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_gG (struct _iobuf *, const char *, va_list); extern int _vfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_s (struct _iobuf *, const char *, va_list); extern int _vfscanf (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eE (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_s (struct _iobuf *, const char *, va_list); extern int _dvfscanf (struct _iobuf *, const char *, va_list);;
    extern int remove(const char *);
    extern int rename(const char *, const char *);
    extern struct _iobuf * fopen(const char *, const char *);
    extern struct _iobuf * freopen(const char *, const char *, struct _iobuf *);
    extern struct _iobuf * fdopen(int, const char *);
    extern long ftell(struct _iobuf *);
    extern char * fgets(char *, int, struct _iobuf *);
    extern void perror(const char *);
    extern char* _bufallo (void);
    extern void _buffree (char *pp);
    extern char * tmpnam(char *);
    extern struct _iobuf * tmpfile(void);





    extern void (*_atexitptr)(void);
# 302 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdio.h" 3
    extern char * gets(char *);
    extern int puts(const char *);

    extern int scanf(const char *, ...);
    extern int _scanf_cdeEfFgGnopsuxX (const char *, ...); extern int _scanf_cdeEfFgGnopuxX (const char *, ...); extern int _scanf_cdeEfFnopsuxX (const char *, ...); extern int _scanf_cdeEfFnopuxX (const char *, ...); extern int _scanf_cdeEgGnopsuxX (const char *, ...); extern int _scanf_cdeEgGnopuxX (const char *, ...); extern int _scanf_cdeEnopsuxX (const char *, ...); extern int _scanf_cdeEnopuxX (const char *, ...); extern int _scanf_cdfFgGnopsuxX (const char *, ...); extern int _scanf_cdfFgGnopuxX (const char *, ...); extern int _scanf_cdfFnopsuxX (const char *, ...); extern int _scanf_cdfFnopuxX (const char *, ...); extern int _scanf_cdgGnopsuxX (const char *, ...); extern int _scanf_cdgGnopuxX (const char *, ...); extern int _scanf_cdnopsuxX (const char *, ...); extern int _scanf_cdnopuxX (const char *, ...); extern int _scanf_eE (const char *, ...); extern int _scanf_eEfF (const char *, ...); extern int _scanf_eEfFgG (const char *, ...); extern int _scanf_eEfFgGs (const char *, ...); extern int _scanf_eEfFs (const char *, ...); extern int _scanf_eEgG (const char *, ...); extern int _scanf_eEgGs (const char *, ...); extern int _scanf_eEs (const char *, ...); extern int _scanf_fF (const char *, ...); extern int _scanf_fFgG (const char *, ...); extern int _scanf_fFgGs (const char *, ...); extern int _scanf_fFs (const char *, ...); extern int _scanf_gG (const char *, ...); extern int _scanf_gGs (const char *, ...); extern int _scanf_s (const char *, ...); extern int _scanf (const char *, ...); extern int _dscanf_cdeEfFgGnopsuxX (const char *, ...); extern int _dscanf_cdeEfFgGnopuxX (const char *, ...); extern int _dscanf_cdeEfFnopsuxX (const char *, ...); extern int _dscanf_cdeEfFnopuxX (const char *, ...); extern int _dscanf_cdeEgGnopsuxX (const char *, ...); extern int _dscanf_cdeEgGnopuxX (const char *, ...); extern int _dscanf_cdeEnopsuxX (const char *, ...); extern int _dscanf_cdeEnopuxX (const char *, ...); extern int _dscanf_cdfFgGnopsuxX (const char *, ...); extern int _dscanf_cdfFgGnopuxX (const char *, ...); extern int _dscanf_cdfFnopsuxX (const char *, ...); extern int _dscanf_cdfFnopuxX (const char *, ...); extern int _dscanf_cdgGnopsuxX (const char *, ...); extern int _dscanf_cdgGnopuxX (const char *, ...); extern int _dscanf_cdnopsuxX (const char *, ...); extern int _dscanf_cdnopuxX (const char *, ...); extern int _dscanf_eE (const char *, ...); extern int _dscanf_eEfF (const char *, ...); extern int _dscanf_eEfFgG (const char *, ...); extern int _dscanf_eEfFgGs (const char *, ...); extern int _dscanf_eEfFs (const char *, ...); extern int _dscanf_eEgG (const char *, ...); extern int _dscanf_eEgGs (const char *, ...); extern int _dscanf_eEs (const char *, ...); extern int _dscanf_fF (const char *, ...); extern int _dscanf_fFgG (const char *, ...); extern int _dscanf_fFgGs (const char *, ...); extern int _dscanf_fFs (const char *, ...); extern int _dscanf_gG (const char *, ...); extern int _dscanf_gGs (const char *, ...); extern int _dscanf_s (const char *, ...); extern int _dscanf (const char *, ...);;
    extern int sscanf(const char *, const char *, ...);
    extern int _sscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdnopsuxX (const char *, const char *, ...); extern int _sscanf_cdnopuxX (const char *, const char *, ...); extern int _sscanf_eE (const char *, const char *, ...); extern int _sscanf_eEfF (const char *, const char *, ...); extern int _sscanf_eEfFgG (const char *, const char *, ...); extern int _sscanf_eEfFgGs (const char *, const char *, ...); extern int _sscanf_eEfFs (const char *, const char *, ...); extern int _sscanf_eEgG (const char *, const char *, ...); extern int _sscanf_eEgGs (const char *, const char *, ...); extern int _sscanf_eEs (const char *, const char *, ...); extern int _sscanf_fF (const char *, const char *, ...); extern int _sscanf_fFgG (const char *, const char *, ...); extern int _sscanf_fFgGs (const char *, const char *, ...); extern int _sscanf_fFs (const char *, const char *, ...); extern int _sscanf_gG (const char *, const char *, ...); extern int _sscanf_gGs (const char *, const char *, ...); extern int _sscanf_s (const char *, const char *, ...); extern int _sscanf (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdnopuxX (const char *, const char *, ...); extern int _dsscanf_eE (const char *, const char *, ...); extern int _dsscanf_eEfF (const char *, const char *, ...); extern int _dsscanf_eEfFgG (const char *, const char *, ...); extern int _dsscanf_eEfFgGs (const char *, const char *, ...); extern int _dsscanf_eEfFs (const char *, const char *, ...); extern int _dsscanf_eEgG (const char *, const char *, ...); extern int _dsscanf_eEgGs (const char *, const char *, ...); extern int _dsscanf_eEs (const char *, const char *, ...); extern int _dsscanf_fF (const char *, const char *, ...); extern int _dsscanf_fFgG (const char *, const char *, ...); extern int _dsscanf_fFgGs (const char *, const char *, ...); extern int _dsscanf_fFs (const char *, const char *, ...); extern int _dsscanf_gG (const char *, const char *, ...); extern int _dsscanf_gGs (const char *, const char *, ...); extern int _dsscanf_s (const char *, const char *, ...); extern int _dsscanf (const char *, const char *, ...);;

    extern int vprintf(const char *, va_list);
    extern int _vprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _vprintf_cdeEfFnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFnopuxX (const char *, va_list); extern int _vprintf_cdeEgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEgGnopuxX (const char *, va_list); extern int _vprintf_cdeEnopsuxX (const char *, va_list); extern int _vprintf_cdeEnopuxX (const char *, va_list); extern int _vprintf_cdfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdfFgGnopuxX (const char *, va_list); extern int _vprintf_cdfFnopsuxX (const char *, va_list); extern int _vprintf_cdfFnopuxX (const char *, va_list); extern int _vprintf_cdgGnopsuxX (const char *, va_list); extern int _vprintf_cdgGnopuxX (const char *, va_list); extern int _vprintf_cdnopsuxX (const char *, va_list); extern int _vprintf_cdnopuxX (const char *, va_list); extern int _vprintf_eE (const char *, va_list); extern int _vprintf_eEfF (const char *, va_list); extern int _vprintf_eEfFgG (const char *, va_list); extern int _vprintf_eEfFgGs (const char *, va_list); extern int _vprintf_eEfFs (const char *, va_list); extern int _vprintf_eEgG (const char *, va_list); extern int _vprintf_eEgGs (const char *, va_list); extern int _vprintf_eEs (const char *, va_list); extern int _vprintf_fF (const char *, va_list); extern int _vprintf_fFgG (const char *, va_list); extern int _vprintf_fFgGs (const char *, va_list); extern int _vprintf_fFs (const char *, va_list); extern int _vprintf_gG (const char *, va_list); extern int _vprintf_gGs (const char *, va_list); extern int _vprintf_s (const char *, va_list); extern int _vprintf (const char *, va_list); extern int _dvprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEnopsuxX (const char *, va_list); extern int _dvprintf_cdeEnopuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdfFnopsuxX (const char *, va_list); extern int _dvprintf_cdfFnopuxX (const char *, va_list); extern int _dvprintf_cdgGnopsuxX (const char *, va_list); extern int _dvprintf_cdgGnopuxX (const char *, va_list); extern int _dvprintf_cdnopsuxX (const char *, va_list); extern int _dvprintf_cdnopuxX (const char *, va_list); extern int _dvprintf_eE (const char *, va_list); extern int _dvprintf_eEfF (const char *, va_list); extern int _dvprintf_eEfFgG (const char *, va_list); extern int _dvprintf_eEfFgGs (const char *, va_list); extern int _dvprintf_eEfFs (const char *, va_list); extern int _dvprintf_eEgG (const char *, va_list); extern int _dvprintf_eEgGs (const char *, va_list); extern int _dvprintf_eEs (const char *, va_list); extern int _dvprintf_fF (const char *, va_list); extern int _dvprintf_fFgG (const char *, va_list); extern int _dvprintf_fFgGs (const char *, va_list); extern int _dvprintf_fFs (const char *, va_list); extern int _dvprintf_gG (const char *, va_list); extern int _dvprintf_gGs (const char *, va_list); extern int _dvprintf_s (const char *, va_list); extern int _dvprintf (const char *, va_list);;
    extern int vsprintf(char *, const char *, va_list);
    extern int _vsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdnopuxX (char *, const char *, va_list); extern int _vsprintf_eE (char *, const char *, va_list); extern int _vsprintf_eEfF (char *, const char *, va_list); extern int _vsprintf_eEfFgG (char *, const char *, va_list); extern int _vsprintf_eEfFgGs (char *, const char *, va_list); extern int _vsprintf_eEfFs (char *, const char *, va_list); extern int _vsprintf_eEgG (char *, const char *, va_list); extern int _vsprintf_eEgGs (char *, const char *, va_list); extern int _vsprintf_eEs (char *, const char *, va_list); extern int _vsprintf_fF (char *, const char *, va_list); extern int _vsprintf_fFgG (char *, const char *, va_list); extern int _vsprintf_fFgGs (char *, const char *, va_list); extern int _vsprintf_fFs (char *, const char *, va_list); extern int _vsprintf_gG (char *, const char *, va_list); extern int _vsprintf_gGs (char *, const char *, va_list); extern int _vsprintf_s (char *, const char *, va_list); extern int _vsprintf (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopuxX (char *, const char *, va_list); extern int _dvsprintf_eE (char *, const char *, va_list); extern int _dvsprintf_eEfF (char *, const char *, va_list); extern int _dvsprintf_eEfFgG (char *, const char *, va_list); extern int _dvsprintf_eEfFgGs (char *, const char *, va_list); extern int _dvsprintf_eEfFs (char *, const char *, va_list); extern int _dvsprintf_eEgG (char *, const char *, va_list); extern int _dvsprintf_eEgGs (char *, const char *, va_list); extern int _dvsprintf_eEs (char *, const char *, va_list); extern int _dvsprintf_fF (char *, const char *, va_list); extern int _dvsprintf_fFgG (char *, const char *, va_list); extern int _dvsprintf_fFgGs (char *, const char *, va_list); extern int _dvsprintf_fFs (char *, const char *, va_list); extern int _dvsprintf_gG (char *, const char *, va_list); extern int _dvsprintf_gGs (char *, const char *, va_list); extern int _dvsprintf_s (char *, const char *, va_list); extern int _dvsprintf (char *, const char *, va_list);;
    extern int vscanf(const char *, va_list ap);
    extern int _vscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEnopuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFnopuxX (const char *, va_list ap); extern int _vscanf_cdgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdgGnopuxX (const char *, va_list ap); extern int _vscanf_cdnopsuxX (const char *, va_list ap); extern int _vscanf_cdnopuxX (const char *, va_list ap); extern int _vscanf_eE (const char *, va_list ap); extern int _vscanf_eEfF (const char *, va_list ap); extern int _vscanf_eEfFgG (const char *, va_list ap); extern int _vscanf_eEfFgGs (const char *, va_list ap); extern int _vscanf_eEfFs (const char *, va_list ap); extern int _vscanf_eEgG (const char *, va_list ap); extern int _vscanf_eEgGs (const char *, va_list ap); extern int _vscanf_eEs (const char *, va_list ap); extern int _vscanf_fF (const char *, va_list ap); extern int _vscanf_fFgG (const char *, va_list ap); extern int _vscanf_fFgGs (const char *, va_list ap); extern int _vscanf_fFs (const char *, va_list ap); extern int _vscanf_gG (const char *, va_list ap); extern int _vscanf_gGs (const char *, va_list ap); extern int _vscanf_s (const char *, va_list ap); extern int _vscanf (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdnopsuxX (const char *, va_list ap); extern int _dvscanf_cdnopuxX (const char *, va_list ap); extern int _dvscanf_eE (const char *, va_list ap); extern int _dvscanf_eEfF (const char *, va_list ap); extern int _dvscanf_eEfFgG (const char *, va_list ap); extern int _dvscanf_eEfFgGs (const char *, va_list ap); extern int _dvscanf_eEfFs (const char *, va_list ap); extern int _dvscanf_eEgG (const char *, va_list ap); extern int _dvscanf_eEgGs (const char *, va_list ap); extern int _dvscanf_eEs (const char *, va_list ap); extern int _dvscanf_fF (const char *, va_list ap); extern int _dvscanf_fFgG (const char *, va_list ap); extern int _dvscanf_fFgGs (const char *, va_list ap); extern int _dvscanf_fFs (const char *, va_list ap); extern int _dvscanf_gG (const char *, va_list ap); extern int _dvscanf_gGs (const char *, va_list ap); extern int _dvscanf_s (const char *, va_list ap); extern int _dvscanf (const char *, va_list ap);;
    extern int vsscanf(const char *, const char *, va_list);
    extern int _vsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopuxX (const char *, const char *, va_list); extern int _vsscanf_eE (const char *, const char *, va_list); extern int _vsscanf_eEfF (const char *, const char *, va_list); extern int _vsscanf_eEfFgG (const char *, const char *, va_list); extern int _vsscanf_eEfFgGs (const char *, const char *, va_list); extern int _vsscanf_eEfFs (const char *, const char *, va_list); extern int _vsscanf_eEgG (const char *, const char *, va_list); extern int _vsscanf_eEgGs (const char *, const char *, va_list); extern int _vsscanf_eEs (const char *, const char *, va_list); extern int _vsscanf_fF (const char *, const char *, va_list); extern int _vsscanf_fFgG (const char *, const char *, va_list); extern int _vsscanf_fFgGs (const char *, const char *, va_list); extern int _vsscanf_fFs (const char *, const char *, va_list); extern int _vsscanf_gG (const char *, const char *, va_list); extern int _vsscanf_gGs (const char *, const char *, va_list); extern int _vsscanf_s (const char *, const char *, va_list); extern int _vsscanf (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopuxX (const char *, const char *, va_list); extern int _dvsscanf_eE (const char *, const char *, va_list); extern int _dvsscanf_eEfF (const char *, const char *, va_list); extern int _dvsscanf_eEfFgG (const char *, const char *, va_list); extern int _dvsscanf_eEfFgGs (const char *, const char *, va_list); extern int _dvsscanf_eEfFs (const char *, const char *, va_list); extern int _dvsscanf_eEgG (const char *, const char *, va_list); extern int _dvsscanf_eEgGs (const char *, const char *, va_list); extern int _dvsscanf_eEs (const char *, const char *, va_list); extern int _dvsscanf_fF (const char *, const char *, va_list); extern int _dvsscanf_fFgG (const char *, const char *, va_list); extern int _dvsscanf_fFgGs (const char *, const char *, va_list); extern int _dvsscanf_fFs (const char *, const char *, va_list); extern int _dvsscanf_gG (const char *, const char *, va_list); extern int _dvsscanf_gGs (const char *, const char *, va_list); extern int _dvsscanf_s (const char *, const char *, va_list); extern int _dvsscanf (const char *, const char *, va_list);;


    extern int snprintf (char *, size_t, const char *, ...);
    extern int _snprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _snprintf_eE (char *, size_t, const char *, ...); extern int _snprintf_eEfF (char *, size_t, const char *, ...); extern int _snprintf_eEfFgG (char *, size_t, const char *, ...); extern int _snprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _snprintf_eEfFs (char *, size_t, const char *, ...); extern int _snprintf_eEgG (char *, size_t, const char *, ...); extern int _snprintf_eEgGs (char *, size_t, const char *, ...); extern int _snprintf_eEs (char *, size_t, const char *, ...); extern int _snprintf_fF (char *, size_t, const char *, ...); extern int _snprintf_fFgG (char *, size_t, const char *, ...); extern int _snprintf_fFgGs (char *, size_t, const char *, ...); extern int _snprintf_fFs (char *, size_t, const char *, ...); extern int _snprintf_gG (char *, size_t, const char *, ...); extern int _snprintf_gGs (char *, size_t, const char *, ...); extern int _snprintf_s (char *, size_t, const char *, ...); extern int _snprintf (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_eE (char *, size_t, const char *, ...); extern int _dsnprintf_eEfF (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFs (char *, size_t, const char *, ...); extern int _dsnprintf_eEgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEs (char *, size_t, const char *, ...); extern int _dsnprintf_fF (char *, size_t, const char *, ...); extern int _dsnprintf_fFgG (char *, size_t, const char *, ...); extern int _dsnprintf_fFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_fFs (char *, size_t, const char *, ...); extern int _dsnprintf_gG (char *, size_t, const char *, ...); extern int _dsnprintf_gGs (char *, size_t, const char *, ...); extern int _dsnprintf_s (char *, size_t, const char *, ...); extern int _dsnprintf (char *, size_t, const char *, ...);;
    extern int vsnprintf (char *, size_t, const char *, __va_list);
    extern int _vsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_eE (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fF (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_gG (char *, size_t, const char *, __va_list); extern int _vsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_s (char *, size_t, const char *, __va_list); extern int _vsnprintf (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eE (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_s (char *, size_t, const char *, __va_list); extern int _dvsnprintf (char *, size_t, const char *, __va_list);;
    extern int asprintf (char **, const char *, ...);
    extern int _asprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEnopuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFnopuxX (char **, const char *, ...); extern int _asprintf_cdgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdgGnopuxX (char **, const char *, ...); extern int _asprintf_cdnopsuxX (char **, const char *, ...); extern int _asprintf_cdnopuxX (char **, const char *, ...); extern int _asprintf_eE (char **, const char *, ...); extern int _asprintf_eEfF (char **, const char *, ...); extern int _asprintf_eEfFgG (char **, const char *, ...); extern int _asprintf_eEfFgGs (char **, const char *, ...); extern int _asprintf_eEfFs (char **, const char *, ...); extern int _asprintf_eEgG (char **, const char *, ...); extern int _asprintf_eEgGs (char **, const char *, ...); extern int _asprintf_eEs (char **, const char *, ...); extern int _asprintf_fF (char **, const char *, ...); extern int _asprintf_fFgG (char **, const char *, ...); extern int _asprintf_fFgGs (char **, const char *, ...); extern int _asprintf_fFs (char **, const char *, ...); extern int _asprintf_gG (char **, const char *, ...); extern int _asprintf_gGs (char **, const char *, ...); extern int _asprintf_s (char **, const char *, ...); extern int _asprintf (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdnopsuxX (char **, const char *, ...); extern int _dasprintf_cdnopuxX (char **, const char *, ...); extern int _dasprintf_eE (char **, const char *, ...); extern int _dasprintf_eEfF (char **, const char *, ...); extern int _dasprintf_eEfFgG (char **, const char *, ...); extern int _dasprintf_eEfFgGs (char **, const char *, ...); extern int _dasprintf_eEfFs (char **, const char *, ...); extern int _dasprintf_eEgG (char **, const char *, ...); extern int _dasprintf_eEgGs (char **, const char *, ...); extern int _dasprintf_eEs (char **, const char *, ...); extern int _dasprintf_fF (char **, const char *, ...); extern int _dasprintf_fFgG (char **, const char *, ...); extern int _dasprintf_fFgGs (char **, const char *, ...); extern int _dasprintf_fFs (char **, const char *, ...); extern int _dasprintf_gG (char **, const char *, ...); extern int _dasprintf_gGs (char **, const char *, ...); extern int _dasprintf_s (char **, const char *, ...); extern int _dasprintf (char **, const char *, ...);;
    extern int vasprintf (char **, const char *, __va_list);
    extern int _vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopuxX (char **, const char *, __va_list); extern int _vasprintf_eE (char **, const char *, __va_list); extern int _vasprintf_eEfF (char **, const char *, __va_list); extern int _vasprintf_eEfFgG (char **, const char *, __va_list); extern int _vasprintf_eEfFgGs (char **, const char *, __va_list); extern int _vasprintf_eEfFs (char **, const char *, __va_list); extern int _vasprintf_eEgG (char **, const char *, __va_list); extern int _vasprintf_eEgGs (char **, const char *, __va_list); extern int _vasprintf_eEs (char **, const char *, __va_list); extern int _vasprintf_fF (char **, const char *, __va_list); extern int _vasprintf_fFgG (char **, const char *, __va_list); extern int _vasprintf_fFgGs (char **, const char *, __va_list); extern int _vasprintf_fFs (char **, const char *, __va_list); extern int _vasprintf_gG (char **, const char *, __va_list); extern int _vasprintf_gGs (char **, const char *, __va_list); extern int _vasprintf_s (char **, const char *, __va_list); extern int _vasprintf (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopuxX (char **, const char *, __va_list); extern int _dvasprintf_eE (char **, const char *, __va_list); extern int _dvasprintf_eEfF (char **, const char *, __va_list); extern int _dvasprintf_eEfFgG (char **, const char *, __va_list); extern int _dvasprintf_eEfFgGs (char **, const char *, __va_list); extern int _dvasprintf_eEfFs (char **, const char *, __va_list); extern int _dvasprintf_eEgG (char **, const char *, __va_list); extern int _dvasprintf_eEgGs (char **, const char *, __va_list); extern int _dvasprintf_eEs (char **, const char *, __va_list); extern int _dvasprintf_fF (char **, const char *, __va_list); extern int _dvasprintf_fFgG (char **, const char *, __va_list); extern int _dvasprintf_fFgGs (char **, const char *, __va_list); extern int _dvasprintf_fFs (char **, const char *, __va_list); extern int _dvasprintf_gG (char **, const char *, __va_list); extern int _dvasprintf_gGs (char **, const char *, __va_list); extern int _dvasprintf_s (char **, const char *, __va_list); extern int _dvasprintf (char **, const char *, __va_list);;







    extern int sprintf(char *, const char *, ...);
    extern int _sprintf_cdeEfFgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEfFgGnopuxX (char *, const char *, ...); extern int _sprintf_cdeEfFnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEfFnopuxX (char *, const char *, ...); extern int _sprintf_cdeEgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEgGnopuxX (char *, const char *, ...); extern int _sprintf_cdeEnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEnopuxX (char *, const char *, ...); extern int _sprintf_cdfFgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdfFgGnopuxX (char *, const char *, ...); extern int _sprintf_cdfFnopsuxX (char *, const char *, ...); extern int _sprintf_cdfFnopuxX (char *, const char *, ...); extern int _sprintf_cdgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdgGnopuxX (char *, const char *, ...); extern int _sprintf_cdnopsuxX (char *, const char *, ...); extern int _sprintf_cdnopuxX (char *, const char *, ...); extern int _sprintf_eE (char *, const char *, ...); extern int _sprintf_eEfF (char *, const char *, ...); extern int _sprintf_eEfFgG (char *, const char *, ...); extern int _sprintf_eEfFgGs (char *, const char *, ...); extern int _sprintf_eEfFs (char *, const char *, ...); extern int _sprintf_eEgG (char *, const char *, ...); extern int _sprintf_eEgGs (char *, const char *, ...); extern int _sprintf_eEs (char *, const char *, ...); extern int _sprintf_fF (char *, const char *, ...); extern int _sprintf_fFgG (char *, const char *, ...); extern int _sprintf_fFgGs (char *, const char *, ...); extern int _sprintf_fFs (char *, const char *, ...); extern int _sprintf_gG (char *, const char *, ...); extern int _sprintf_gGs (char *, const char *, ...); extern int _sprintf_s (char *, const char *, ...); extern int _sprintf (char *, const char *, ...); extern int _dsprintf_cdeEfFgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEnopuxX (char *, const char *, ...); extern int _dsprintf_cdfFgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdfFgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdfFnopsuxX (char *, const char *, ...); extern int _dsprintf_cdfFnopuxX (char *, const char *, ...); extern int _dsprintf_cdgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdnopsuxX (char *, const char *, ...); extern int _dsprintf_cdnopuxX (char *, const char *, ...); extern int _dsprintf_eE (char *, const char *, ...); extern int _dsprintf_eEfF (char *, const char *, ...); extern int _dsprintf_eEfFgG (char *, const char *, ...); extern int _dsprintf_eEfFgGs (char *, const char *, ...); extern int _dsprintf_eEfFs (char *, const char *, ...); extern int _dsprintf_eEgG (char *, const char *, ...); extern int _dsprintf_eEgGs (char *, const char *, ...); extern int _dsprintf_eEs (char *, const char *, ...); extern int _dsprintf_fF (char *, const char *, ...); extern int _dsprintf_fFgG (char *, const char *, ...); extern int _dsprintf_fFgGs (char *, const char *, ...); extern int _dsprintf_fFs (char *, const char *, ...); extern int _dsprintf_gG (char *, const char *, ...); extern int _dsprintf_gGs (char *, const char *, ...); extern int _dsprintf_s (char *, const char *, ...); extern int _dsprintf (char *, const char *, ...);;
    extern int printf(const char *, ...);
    extern int _printf_cdeEfFgGnopsuxX (const char *, ...); extern int _printf_cdeEfFgGnopuxX (const char *, ...); extern int _printf_cdeEfFnopsuxX (const char *, ...); extern int _printf_cdeEfFnopuxX (const char *, ...); extern int _printf_cdeEgGnopsuxX (const char *, ...); extern int _printf_cdeEgGnopuxX (const char *, ...); extern int _printf_cdeEnopsuxX (const char *, ...); extern int _printf_cdeEnopuxX (const char *, ...); extern int _printf_cdfFgGnopsuxX (const char *, ...); extern int _printf_cdfFgGnopuxX (const char *, ...); extern int _printf_cdfFnopsuxX (const char *, ...); extern int _printf_cdfFnopuxX (const char *, ...); extern int _printf_cdgGnopsuxX (const char *, ...); extern int _printf_cdgGnopuxX (const char *, ...); extern int _printf_cdnopsuxX (const char *, ...); extern int _printf_cdnopuxX (const char *, ...); extern int _printf_eE (const char *, ...); extern int _printf_eEfF (const char *, ...); extern int _printf_eEfFgG (const char *, ...); extern int _printf_eEfFgGs (const char *, ...); extern int _printf_eEfFs (const char *, ...); extern int _printf_eEgG (const char *, ...); extern int _printf_eEgGs (const char *, ...); extern int _printf_eEs (const char *, ...); extern int _printf_fF (const char *, ...); extern int _printf_fFgG (const char *, ...); extern int _printf_fFgGs (const char *, ...); extern int _printf_fFs (const char *, ...); extern int _printf_gG (const char *, ...); extern int _printf_gGs (const char *, ...); extern int _printf_s (const char *, ...); extern int _printf (const char *, ...); extern int _dprintf_cdeEfFgGnopsuxX (const char *, ...); extern int _dprintf_cdeEfFgGnopuxX (const char *, ...); extern int _dprintf_cdeEfFnopsuxX (const char *, ...); extern int _dprintf_cdeEfFnopuxX (const char *, ...); extern int _dprintf_cdeEgGnopsuxX (const char *, ...); extern int _dprintf_cdeEgGnopuxX (const char *, ...); extern int _dprintf_cdeEnopsuxX (const char *, ...); extern int _dprintf_cdeEnopuxX (const char *, ...); extern int _dprintf_cdfFgGnopsuxX (const char *, ...); extern int _dprintf_cdfFgGnopuxX (const char *, ...); extern int _dprintf_cdfFnopsuxX (const char *, ...); extern int _dprintf_cdfFnopuxX (const char *, ...); extern int _dprintf_cdgGnopsuxX (const char *, ...); extern int _dprintf_cdgGnopuxX (const char *, ...); extern int _dprintf_cdnopsuxX (const char *, ...); extern int _dprintf_cdnopuxX (const char *, ...); extern int _dprintf_eE (const char *, ...); extern int _dprintf_eEfF (const char *, ...); extern int _dprintf_eEfFgG (const char *, ...); extern int _dprintf_eEfFgGs (const char *, ...); extern int _dprintf_eEfFs (const char *, ...); extern int _dprintf_eEgG (const char *, ...); extern int _dprintf_eEgGs (const char *, ...); extern int _dprintf_eEs (const char *, ...); extern int _dprintf_fF (const char *, ...); extern int _dprintf_fFgG (const char *, ...); extern int _dprintf_fFgGs (const char *, ...); extern int _dprintf_fFs (const char *, ...); extern int _dprintf_gG (const char *, ...); extern int _dprintf_gGs (const char *, ...); extern int _dprintf_s (const char *, ...); extern int _dprintf (const char *, ...);;
# 30 "../z80sim/sim1.c" 2
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/time.h" 1 3
# 66 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/time.h" 3
struct timeval {
 long tv_sec;
 long tv_usec;
};


struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};
# 113 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/time.h" 3
struct xcptcontext;

struct itimerval {
    struct timeval it_interval;
    struct timeval it_value;
    void (*it_func)(struct timeval *, struct xcptcontext *);
};

int setitimer (unsigned int, struct itimerval *, struct itimerval *);
int getitimer (unsigned int, struct itimerval *);
int gettimeofday (struct timeval *, void *);
int settimeofday (const struct timeval *, void *);



struct timespec {
    long tv_sec;
    long tv_nsec;
};

struct itimerspec {
    struct timespec it_value;
    struct timespec it_interval;
};
# 165 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/time.h" 3
typedef int clockid_t;
# 174 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/sys/time.h" 3
int clock_getres (clockid_t, struct timespec *);
int clock_gettime (clockid_t, struct timespec *);
int clock_settime (clockid_t, const struct timespec *);
int nanosleep (const struct timespec *, struct timespec *);

struct sigevent;




typedef void * timer_t;



int timer_create (clockid_t, struct sigevent *, timer_t *);
int timer_delete (timer_t);
int timer_getoverrun (timer_t);
int timer_gettime (timer_t, struct itimerspec *);
int timer_settime (timer_t, int, const struct itimerspec *,
         struct itimerspec *);
# 31 "../z80sim/sim1.c" 2
# 1 "../z80sim/sim.h" 1
# 104 "../z80sim/sim.h"
typedef unsigned short WORD;
typedef unsigned char BYTE;


struct history {
 WORD h_adr;
 WORD h_af;
 WORD h_bc;
 WORD h_de;
 WORD h_hl;
 WORD h_ix;
 WORD h_iy;
 WORD h_sp;
};



struct softbreak {
 WORD sb_adr;
 BYTE sb_oldopc;
 int sb_passcount;
 int sb_pass;
};
# 32 "../z80sim/sim1.c" 2
# 1 "../z80sim/simglb.h" 1
# 32 "../z80sim/simglb.h"
extern BYTE A, B, C, D, E, H, L, A_, B_, C_, D_, E_, H_, L_,
  *PC, *STACK, I, IFF;
extern WORD IX, IY;
extern int F, F_;
extern long R;
extern BYTE mem_wp;





extern BYTE ram[],*wrk_ram, cpu_state;

extern int s_flag, l_flag, m_flag, x_flag, break_flag, i_flag, f_flag,
  cpu_error, int_type, int_mode, cntl_c, cntl_bs,
  parrity[], sb_next;





extern int tmax;
extern int busy_loop_cnt[];

extern char xfn[];


extern struct history his[];
extern int h_next, h_flag;



extern struct softbreak soft[];



extern long t_states;
extern int t_flag;
extern BYTE *t_start, *t_end;
# 33 "../z80sim/sim1.c" 2
# 44 "../z80sim/sim1.c"
static int op_notimpl(void);
static int op_nop(void), op_halt(void), op_scf(void);
static int op_ccf(void), op_cpl(void), op_daa(void);
static int op_ei(void), op_di(void);
static int op_in(void), op_out(void);
static int op_ldan(void), op_ldbn(void), op_ldcn(void);
static int op_lddn(void), op_lden(void);
static int op_ldhn(void), op_ldln(void);
static int op_ldabc(void), op_ldade(void), op_ldann(void);
static int op_ldbca(void), op_lddea(void), op_ldnna(void);
static int op_ldhla(void), op_ldhlb(void), op_ldhlc(void), op_ldhld(void);
static int op_ldhle(void), op_ldhlh(void), op_ldhll(void), op_ldhl1(void);
static int op_ldaa(void), op_ldab(void), op_ldac(void);
static int op_ldad(void), op_ldae(void);
static int op_ldah(void), op_ldal(void), op_ldahl(void);
static int op_ldba(void), op_ldbb(void), op_ldbc(void);
static int op_ldbd(void), op_ldbe(void);
static int op_ldbh(void), op_ldbl(void), op_ldbhl(void);
static int op_ldca(void), op_ldcb(void), op_ldcc(void);
static int op_ldcd(void), op_ldce(void);
static int op_ldch(void), op_ldcl(void), op_ldchl(void);
static int op_ldda(void), op_lddb(void), op_lddc(void);
static int op_lddd(void), op_ldde(void);
static int op_lddh(void), op_lddl(void), op_lddhl(void);
static int op_ldea(void), op_ldeb(void), op_ldec(void);
static int op_lded(void), op_ldee(void);
static int op_ldeh(void), op_ldel(void), op_ldehl(void);
static int op_ldha(void), op_ldhb(void), op_ldhc(void);
static int op_ldhd(void), op_ldhe(void);
static int op_ldhh(void), op_ldhl(void), op_ldhhl(void);
static int op_ldla(void), op_ldlb(void), op_ldlc(void);
static int op_ldld(void), op_ldle(void);
static int op_ldlh(void), op_ldll(void), op_ldlhl(void);
static int op_ldbcnn(void), op_lddenn(void), op_ldhlnn(void);
static int op_ldspnn(void), op_ldsphl(void);
static int op_ldhlin(void), op_ldinhl(void);
static int op_incbc(void), op_incde(void), op_inchl(void), op_incsp(void);
static int op_decbc(void), op_decde(void), op_dechl(void), op_decsp(void);
static int op_adhlbc(void), op_adhlde(void), op_adhlhl(void), op_adhlsp(void);
static int op_anda(void), op_andb(void), op_andc(void), op_andd(void), op_ande(void);
static int op_andh(void), op_andl(void), op_andhl(void), op_andn(void);
static int op_ora(void), op_orb(void), op_orc(void), op_ord(void), op_ore(void);
static int op_orh(void), op_orl(void), op_orhl(void), op_orn(void);
static int op_xora(void), op_xorb(void), op_xorc(void), op_xord(void), op_xore(void);
static int op_xorh(void), op_xorl(void), op_xorhl(void), op_xorn(void);
static int op_adda(void), op_addb(void), op_addc(void), op_addd(void), op_adde(void);
static int op_addh(void), op_addl(void), op_addhl(void), op_addn(void);
static int op_adca(void), op_adcb(void), op_adcc(void), op_adcd(void), op_adce(void);
static int op_adch(void), op_adcl(void), op_adchl(void), op_adcn(void);
static int op_suba(void), op_subb(void), op_subc(void), op_subd(void), op_sube(void);
static int op_subh(void), op_subl(void), op_subhl(void), op_subn(void);
static int op_sbca(void), op_sbcb(void), op_sbcc(void), op_sbcd(void), op_sbce(void);
static int op_sbch(void), op_sbcl(void), op_sbchl(void), op_sbcn(void);
static int op_cpa(void), op_cpb(void), op_cpc(void), op_cpd(void), op_cpe(void);
static int op_cph(void), op_cplr(void), op_cphl(void), op_cpn(void);
static int op_inca(void), op_incb(void), op_incc(void), op_incd(void), op_ince(void);
static int op_inch(void), op_incl(void), op_incihl(void);
static int op_deca(void), op_decb(void), op_decc(void), op_decd(void), op_dece(void);
static int op_dech(void), op_decl(void), op_decihl(void);
static int op_rlca(void), op_rrca(void), op_rla(void), op_rra(void);
static int op_exdehl(void), op_exafaf(void), op_exx(void), op_exsphl(void);
static int op_pushaf(void), op_pushbc(void), op_pushde(void), op_pushhl(void);
static int op_popaf(void), op_popbc(void), op_popde(void), op_pophl(void);
static int op_jp(void), op_jphl(void), op_jr(void), op_djnz(void), op_call(void), op_ret(void);
static int op_jpz(void), op_jpnz(void), op_jpc(void), op_jpnc(void);
static int op_jppe(void), op_jppo(void), op_jpm(void), op_jpp(void);
static int op_calz(void), op_calnz(void), op_calc(void), op_calnc(void);
static int op_calpe(void), op_calpo(void), op_calm(void), op_calp(void);
static int op_retz(void), op_retnz(void), op_retc(void), op_retnc(void);
static int op_retpe(void), op_retpo(void), op_retm(void), op_retp(void);
static int op_jrz(void), op_jrnz(void), op_jrc(void), op_jrnc(void);
static int op_rst00(void), op_rst08(void), op_rst10(void), op_rst18(void);
static int op_rst20(void), op_rst28(void), op_rst30(void), op_rst38(void);
extern int op_cb_handel(void), op_dd_handel(void);
extern int op_ed_handel(void), op_fd_handel(void);
# 127 "../z80sim/sim1.c"
void cpu(void) {
    static int (*op_sim[256]) (void) = {
        op_nop,
        op_ldbcnn,
        op_ldbca,
        op_incbc,
        op_incb,
        op_decb,
        op_ldbn,
        op_rlca,
        op_exafaf,
        op_adhlbc,
        op_ldabc,
        op_decbc,
        op_incc,
        op_decc,
        op_ldcn,
        op_rrca,
        op_djnz,
        op_lddenn,
        op_lddea,
        op_incde,
        op_incd,
        op_decd,
        op_lddn,
        op_rla,
        op_jr,
        op_adhlde,
        op_ldade,
        op_decde,
        op_ince,
        op_dece,
        op_lden,
        op_rra,
        op_jrnz,
        op_ldhlnn,
        op_ldinhl,
        op_inchl,
        op_inch,
        op_dech,
        op_ldhn,
        op_daa,
        op_jrz,
        op_adhlhl,
        op_ldhlin,
        op_dechl,
        op_incl,
        op_decl,
        op_ldln,
        op_cpl,
        op_jrnc,
        op_ldspnn,
        op_ldnna,
        op_incsp,
        op_incihl,
        op_decihl,
        op_ldhl1,
        op_scf,
        op_jrc,
        op_adhlsp,
        op_ldann,
        op_decsp,
        op_inca,
        op_deca,
        op_ldan,
        op_ccf,
        op_ldbb,
        op_ldbc,
        op_ldbd,
        op_ldbe,
        op_ldbh,
        op_ldbl,
        op_ldbhl,
        op_ldba,
        op_ldcb,
        op_ldcc,
        op_ldcd,
        op_ldce,
        op_ldch,
        op_ldcl,
        op_ldchl,
        op_ldca,
        op_lddb,
        op_lddc,
        op_lddd,
        op_ldde,
        op_lddh,
        op_lddl,
        op_lddhl,
        op_ldda,
        op_ldeb,
        op_ldec,
        op_lded,
        op_ldee,
        op_ldeh,
        op_ldel,
        op_ldehl,
        op_ldea,
        op_ldhb,
        op_ldhc,
        op_ldhd,
        op_ldhe,
        op_ldhh,
        op_ldhl,
        op_ldhhl,
        op_ldha,
        op_ldlb,
        op_ldlc,
        op_ldld,
        op_ldle,
        op_ldlh,
        op_ldll,
        op_ldlhl,
        op_ldla,
        op_ldhlb,
        op_ldhlc,
        op_ldhld,
        op_ldhle,
        op_ldhlh,
        op_ldhll,
        op_halt,
        op_ldhla,
        op_ldab,
        op_ldac,
        op_ldad,
        op_ldae,
        op_ldah,
        op_ldal,
        op_ldahl,
        op_ldaa,
        op_addb,
        op_addc,
        op_addd,
        op_adde,
        op_addh,
        op_addl,
        op_addhl,
        op_adda,
        op_adcb,
        op_adcc,
        op_adcd,
        op_adce,
        op_adch,
        op_adcl,
        op_adchl,
        op_adca,
        op_subb,
        op_subc,
        op_subd,
        op_sube,
        op_subh,
        op_subl,
        op_subhl,
        op_suba,
        op_sbcb,
        op_sbcc,
        op_sbcd,
        op_sbce,
        op_sbch,
        op_sbcl,
        op_sbchl,
        op_sbca,
        op_andb,
        op_andc,
        op_andd,
        op_ande,
        op_andh,
        op_andl,
        op_andhl,
        op_anda,
        op_xorb,
        op_xorc,
        op_xord,
        op_xore,
        op_xorh,
        op_xorl,
        op_xorhl,
        op_xora,
        op_orb,
        op_orc,
        op_ord,
        op_ore,
        op_orh,
        op_orl,
        op_orhl,
        op_ora,
        op_cpb,
        op_cpc,
        op_cpd,
        op_cpe,
        op_cph,
        op_cplr,
        op_cphl,
        op_cpa,
        op_retnz,
        op_popbc,
        op_jpnz,
        op_jp,
        op_calnz,
        op_pushbc,
        op_addn,
        op_rst00,
        op_retz,
        op_ret,
        op_jpz,
        op_cb_handel,
        op_calz,
        op_call,
        op_adcn,
        op_rst08,
        op_retnc,
        op_popde,
        op_jpnc,
        op_out,
        op_calnc,
        op_pushde,
        op_subn,
        op_rst10,
        op_retc,
        op_exx,
        op_jpc,
        op_in,
        op_calc,
        op_dd_handel,
        op_sbcn,
        op_rst18,
        op_retpo,
        op_pophl,
        op_jppo,
        op_exsphl,
        op_calpo,
        op_pushhl,
        op_andn,
        op_rst20,
        op_retpe,
        op_jphl,
        op_jppe,
        op_exdehl,
        op_calpe,
        op_ed_handel,
        op_xorn,
        op_rst28,
        op_retp,
        op_popaf,
        op_jpp,
        op_di,
        op_calp,
        op_pushaf,
        op_orn,
        op_rst30,
        op_retm,
        op_ldsphl,
        op_jpm,
        op_ei,
        op_calm,
        op_fd_handel,
        op_cpn,
        op_rst38
    };


    register int t = 0;
    struct timespec timer;





    do {
# 412 "../z80sim/sim1.c"
        his[h_next].h_adr = PC - ram;
        his[h_next].h_af = (A << 8) + F;
        his[h_next].h_bc = (B << 8) + C;
        his[h_next].h_de = (D << 8) + E;
        his[h_next].h_hl = (H << 8) + L;
        his[h_next].h_ix = IX;
        his[h_next].h_iy = IY;
        his[h_next].h_sp = STACK - ram;
        h_next++;
        if (h_next == 100) {
            h_flag = 1;
            h_next = 0;
        }



        if (PC == t_start && !t_flag) {
            t_flag = 1;
            t_states = 0L;
        }
# 486 "../z80sim/sim1.c"
        t += (*op_sim[*PC++]) ();

        if (f_flag) {
            if (t > tmax) {
                timer.tv_sec = 0;
                timer.tv_nsec = 10000000;

                t = 0;
            }
        }





        if (PC > ram +65535)
            PC = ram;


        R++;


        if (t_flag) {
            t_states += t;
            if (PC == t_end)
                t_flag = 0;
        }






    } while (cpu_state == 1);




}





static int op_notimpl(void) {
    cpu_error = 4;
    cpu_state = 0;
    return (0);
}

static int op_nop(void) {
    return (4);
}

static int op_halt(void) {
    extern int busy_loop_cnt[];
    struct timespec timer;






    if (IFF == 0) {
        cpu_error = 1;
        cpu_state = 0;
    } else

        while ((int_type == 0) && (cpu_state == 1)) {




            timer.tv_sec = 0;
            timer.tv_nsec = 1000000L;

            R += 9999;
        }

    busy_loop_cnt[0] = 0;

    return (0);
}

static int op_scf(void) {
    F |= 1;
    F &= ~(2 | 16);
    return (4);
}

static int op_ccf(void) {
    if (F & 1) {
        F |= 16;
        F &= ~1;
    } else {
        F &= ~16;
        F |= 1;
    }
    F &= ~2;
    return (4);
}

static int op_cpl(void) {
    A = ~A;
    F |= 16 | 2;
    return (4);
}

static int op_daa(void) {
    register int old_a;

    old_a = A;
    if (F & 2) {
        if (((A & 0x0f) > 9) || (F & 16)) {
            (((old_a & 0x0f) - 6) < 0) ? (F |= 16) : (F &= ~16);
            A = old_a -= 6;
        }
        if (((A & 0xf0) > 0x90) || (F & 1)) {
            A -= 0x60;
            if (old_a - 0x60 < 0)
                F |= 1;
        }
    } else {
        if (((A & 0x0f) > 9) || (F & 16)) {
            (((old_a & 0x0f) + 6) > 0x0f) ? (F |= 16) : (F &= ~16);
            A = old_a += 6;
        }
        if (((A & 0xf0) > 0x90) || (F & 1)) {
            A += 0x60;
            if (old_a + 0x60 > 255)
                F |= 1;
        }
    }
    (A) ? (F &= ~64) : (F |= 64);
    (A & 128) ? (F |= 128) : (F &= ~128);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    return (4);
}

static int op_ei(void) {
    IFF = 3;
    return (4);
}

static int op_di(void) {
    IFF = 0;
    return (4);
}

static int op_in(void) {
    BYTE io_in();







    A = io_in(*PC++);
    return (11);
}

static int op_out(void) {
    BYTE io_out();







    io_out(*PC++, A);
    return (11);
}

static int op_ldan(void) {






    A = *PC++;
    return (7);
}

static int op_ldbn(void) {






    B = *PC++;
    return (7);
}

static int op_ldcn(void) {






    C = *PC++;
    return (7);
}

static int op_lddn(void) {






    D = *PC++;
    return (7);
}

static int op_lden(void) {






    E = *PC++;
    return (7);
}

static int op_ldhn(void) {






    H = *PC++;
    return (7);
}

static int op_ldln(void) {






    L = *PC++;
    return (7);
}

static int op_ldabc(void) {






    A = *(ram +(B << 8) + C);
    return (7);
}

static int op_ldade(void) {






    A = *(ram +(D << 8) + E);
    return (7);
}

static int op_ldann(void) {
    register unsigned i;







    i = *PC++;
    i += *PC++ << 8;
    A = *(ram +i);
    return (13);
}

static int op_ldbca(void) {






    *(ram +(B << 8) + C) = A;
    return (7);
}

static int op_lddea(void) {






    *(ram +(D << 8) + E) = A;
    return (7);
}

static int op_ldnna(void) {
    register unsigned i;







    i = *PC++;
    i += *PC++ << 8;
    *(ram +i) = A;
    return (13);
}

static int op_ldhla(void) {






    *(ram +(H << 8) + L) = A;
    return (7);
}

static int op_ldhlb(void) {






    *(ram +(H << 8) + L) = B;
    return (7);
}

static int op_ldhlc(void) {






    *(ram +(H << 8) + L) = C;
    return (7);
}

static int op_ldhld(void) {






    *(ram +(H << 8) + L) = D;
    return (7);
}

static int op_ldhle(void) {






    *(ram +(H << 8) + L) = E;
    return (7);
}

static int op_ldhlh(void) {






    *(ram +(H << 8) + L) = H;
    return (7);
}

static int op_ldhll(void) {






    *(ram +(H << 8) + L) = L;
    return (7);
}

static int op_ldhl1(void) {






    *(ram +(H << 8) + L) = *PC++;
    return (10);
}

static int op_ldaa(void) {
    return (4);
}

static int op_ldab(void) {
    A = B;
    return (4);
}

static int op_ldac(void) {
    A = C;
    return (4);
}

static int op_ldad(void) {
    A = D;
    return (4);
}

static int op_ldae(void) {
    A = E;
    return (4);
}

static int op_ldah(void) {
    A = H;
    return (4);
}

static int op_ldal(void) {
    A = L;
    return (4);
}

static int op_ldahl(void) {






    A = *(ram +(H << 8) + L);
    return (7);
}

static int op_ldba(void) {
    B = A;
    return (4);
}

static int op_ldbb(void) {
    return (4);
}

static int op_ldbc(void) {
    B = C;
    return (4);
}

static int op_ldbd(void) {
    B = D;
    return (4);
}

static int op_ldbe(void) {
    B = E;
    return (4);
}

static int op_ldbh(void) {
    B = H;
    return (4);
}

static int op_ldbl(void) {
    B = L;
    return (4);
}

static int op_ldbhl(void) {






    B = *(ram +(H << 8) + L);
    return (7);
}

static int op_ldca(void) {
    C = A;
    return (4);
}

static int op_ldcb(void) {
    C = B;
    return (4);
}

static int op_ldcc(void) {
    return (4);
}

static int op_ldcd(void) {
    C = D;
    return (4);
}

static int op_ldce(void) {
    C = E;
    return (4);
}

static int op_ldch(void) {
    C = H;
    return (4);
}

static int op_ldcl(void) {
    C = L;
    return (4);
}

static int op_ldchl(void) {






    C = *(ram +(H << 8) + L);
    return (7);
}

static int op_ldda(void) {
    D = A;
    return (4);
}

static int op_lddb(void) {
    D = B;
    return (4);
}

static int op_lddc(void) {
    D = C;
    return (4);
}

static int op_lddd(void) {
    return (4);
}

static int op_ldde(void) {
    D = E;
    return (4);
}

static int op_lddh(void) {
    D = H;
    return (4);
}

static int op_lddl(void) {
    D = L;
    return (4);
}

static int op_lddhl(void) {






    D = *(ram +(H << 8) + L);
    return (7);
}

static int op_ldea(void) {
    E = A;
    return (4);
}

static int op_ldeb(void) {
    E = B;
    return (4);
}

static int op_ldec(void) {
    E = C;
    return (4);
}

static int op_lded(void) {
    E = D;
    return (4);
}

static int op_ldee(void) {
    return (4);
}

static int op_ldeh(void) {
    E = H;
    return (4);
}

static int op_ldel(void) {
    E = L;
    return (4);
}

static int op_ldehl(void) {






    E = *(ram +(H << 8) + L);
    return (7);
}

static int op_ldha(void) {
    H = A;
    return (4);
}

static int op_ldhb(void) {
    H = B;
    return (4);
}

static int op_ldhc(void) {
    H = C;
    return (4);
}

static int op_ldhd(void) {
    H = D;
    return (4);
}

static int op_ldhe(void) {
    H = E;
    return (4);
}

static int op_ldhh(void) {
    return (4);
}

static int op_ldhl(void) {
    H = L;
    return (4);
}

static int op_ldhhl(void) {






    H = *(ram +(H << 8) + L);
    return (7);
}

static int op_ldla(void) {
    L = A;
    return (4);
}

static int op_ldlb(void) {
    L = B;
    return (4);
}

static int op_ldlc(void) {
    L = C;
    return (4);
}

static int op_ldld(void) {
    L = D;
    return (4);
}

static int op_ldle(void) {
    L = E;
    return (4);
}

static int op_ldlh(void) {
    L = H;
    return (4);
}

static int op_ldll(void) {
    return (4);
}

static int op_ldlhl(void) {






    L = *(ram +(H << 8) + L);
    return (7);
}

static int op_ldbcnn(void) {






    C = *PC++;
    B = *PC++;
    return (10);
}

static int op_lddenn(void) {






    E = *PC++;
    D = *PC++;
    return (10);
}

static int op_ldhlnn(void) {






    L = *PC++;
    H = *PC++;
    return (10);
}

static int op_ldspnn(void) {






    STACK = ram + *PC++;
    STACK += *PC++ << 8;
    return (10);
}

static int op_ldsphl(void) {
    STACK = ram +(H << 8) + L;
    return (6);
}

static int op_ldhlin(void) {
    register unsigned i;







    i = *PC++;
    i += *PC++ << 8;
    L = *(ram +i);
    H = *(ram +i + 1);
    return (16);
}

static int op_ldinhl(void) {
    register unsigned i;







    i = *PC++;
    i += *PC++ << 8;
    *(ram +i) = L;
    *(ram +i + 1) = H;
    return (16);
}

static int op_incbc(void) {
    C++;
    if (!C)
        B++;
    return (6);
}

static int op_incde(void) {
    E++;
    if (!E)
        D++;
    return (6);
}

static int op_inchl(void) {
    L++;
    if (!L)
        H++;
    return (6);
}

static int op_incsp(void) {
    STACK++;

    if (STACK > ram +65535)
        STACK = ram;

    return (6);
}

static int op_decbc(void) {
    C--;
    if (C == 0xff)
        B--;
    return (6);
}

static int op_decde(void) {
    E--;
    if (E == 0xff)
        D--;
    return (6);
}

static int op_dechl(void) {
    L--;
    if (L == 0xff)
        H--;
    return (6);
}

static int op_decsp(void) {
    STACK--;

    if (STACK < ram)
        STACK = ram +65535;

    return (6);
}

static int op_adhlbc(void) {
    register int carry;

    carry = (L + C > 255) ? 1 : 0;
    L += C;
    ((H & 0xf) + (B & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (H + B + carry > 255) ? (F |= 1) : (F &= ~1);
    H += B + carry;
    F &= ~2;
    return (11);
}

static int op_adhlde(void) {
    register int carry;

    carry = (L + E > 255) ? 1 : 0;
    L += E;
    ((H & 0xf) + (D & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (H + D + carry > 255) ? (F |= 1) : (F &= ~1);
    H += D + carry;
    F &= ~2;
    return (11);
}

static int op_adhlhl(void) {
    register int carry;

    carry = (L << 1 > 255) ? 1 : 0;
    L <<= 1;
    ((H & 0xf) + (H & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (H + H + carry > 255) ? (F |= 1) : (F &= ~1);
    H += H + carry;
    F &= ~2;
    return (11);
}

static int op_adhlsp(void) {
    register int carry;
    BYTE spl = (STACK - ram) & 0xff;
    BYTE sph = (STACK - ram) >> 8;

    carry = (L + spl > 255) ? 1 : 0;
    L += spl;
    ((H & 0xf) + (sph & 0xf) + carry > 0xf) ? (F |= 16)
            : (F &= ~16);
    (H + sph + carry > 255) ? (F |= 1) : (F &= ~1);
    H += sph + carry;
    F &= ~2;
    return (11);
}

static int op_anda(void) {
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (4);
}

static int op_andb(void) {
    A &= B;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (4);
}

static int op_andc(void) {
    A &= C;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (4);
}

static int op_andd(void) {
    A &= D;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (4);
}

static int op_ande(void) {
    A &= E;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (4);
}

static int op_andh(void) {
    A &= H;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (4);
}

static int op_andl(void) {
    A &= L;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (4);
}

static int op_andhl(void) {






    A &= *(ram +(H << 8) + L);
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (7);
}

static int op_andn(void) {






    A &= *PC++;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 16;
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(2 | 1);
    return (7);
}

static int op_ora(void) {
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_orb(void) {
    A |= B;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_orc(void) {
    A |= C;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_ord(void) {
    A |= D;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_ore(void) {
    A |= E;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_orh(void) {
    A |= H;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_orl(void) {
    A |= L;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_orhl(void) {






    A |= *(ram +(H << 8) + L);
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (7);
}

static int op_orn(void) {






    A |= *PC++;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (7);
}

static int op_xora(void) {
    A = 0;
    F &= ~(128 | 16 | 2 | 1);
    F |= 64 | 4;
    return (4);
}

static int op_xorb(void) {
    A ^= B;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_xorc(void) {
    A ^= C;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_xord(void) {
    A ^= D;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_xore(void) {
    A ^= E;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_xorh(void) {
    A ^= H;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_xorl(void) {
    A ^= L;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (4);
}

static int op_xorhl(void) {






    A ^= *(ram +(H << 8) + L);
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (7);
}

static int op_xorn(void) {






    A ^= *PC++;
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    (parrity[A]) ? (F &= ~4) : (F |= 4);
    F &= ~(16 | 2 | 1);
    return (7);
}

static int op_adda(void) {
    register int i;

    ((A & 0xf) + (A & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    ((A << 1) > 255) ? (F |= 1) : (F &= ~1);
    A = i = ((signed char) A) << 1;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_addb(void) {
    register int i;

    ((A & 0xf) + (B & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    (A + B > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) B;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_addc(void) {
    register int i;

    ((A & 0xf) + (C & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    (A + C > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) C;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_addd(void) {
    register int i;

    ((A & 0xf) + (D & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    (A + D > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) D;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_adde(void) {
    register int i;

    ((A & 0xf) + (E & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    (A + E > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) E;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_addh(void) {
    register int i;

    ((A & 0xf) + (H & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    (A + H > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) H;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_addl(void) {
    register int i;

    ((A & 0xf) + (L & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    (A + L > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) L;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_addhl(void) {
    register int i;
    register BYTE P;







    P = *(ram +(H << 8) + L);
    ((A & 0xf) + (P & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    (A + P > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) P;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (7);
}

static int op_addn(void) {
    register int i;
    register BYTE P;







    P = *PC++;
    ((A & 0xf) + (P & 0xf) > 0xf) ? (F |= 16) : (F &= ~16);
    (A + P > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) P;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (7);
}

static int op_adca(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((A & 0xf) + (A & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    ((A << 1) + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (((signed char) A) << 1) + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_adcb(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((A & 0xf) + (B & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (A + B + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) B + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_adcc(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((A & 0xf) + (C & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (A + C + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) C + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_adcd(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((A & 0xf) + (D & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (A + D + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) D + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_adce(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((A & 0xf) + (E & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (A + E + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) E + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_adch(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((A & 0xf) + (H & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (A + H + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) H + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_adcl(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((A & 0xf) + (L & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (A + L + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) L + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_adchl(void) {
    register int i, carry;
    register BYTE P;







    P = *(ram +(H << 8) + L);
    carry = (F & 1) ? 1 : 0;
    ((A & 0xf) + (P & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (A + P + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) P + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (7);
}

static int op_adcn(void) {
    register int i, carry;
    register BYTE P;







    carry = (F & 1) ? 1 : 0;
    P = *PC++;
    ((A & 0xf) + (P & 0xf) + carry > 0xf) ? (F |= 16) : (F &= ~16);
    (A + P + carry > 255) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A + (signed char) P + carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (7);
}

static int op_suba(void) {
    A = 0;
    F &= ~(128 | 16 | 4 | 1);
    F |= 64 | 2;
    return (4);
}

static int op_subb(void) {
    register int i;

    ((B & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (B > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) B;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_subc(void) {
    register int i;

    ((C & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (C > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) C;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_subd(void) {
    register int i;

    ((D & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (D > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) D;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_sube(void) {
    register int i;

    ((E & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (E > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) E;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_subh(void) {
    register int i;

    ((H & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (H > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) H;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_subl(void) {
    register int i;

    ((L & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (L > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) L;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_subhl(void) {
    register int i;
    register BYTE P;







    P = *(ram +(H << 8) + L);
    ((P & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (P > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) P;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (7);
}

static int op_subn(void) {
    register int i;
    register BYTE P;







    P = *PC++;
    ((P & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (P > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) P;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (7);
}

static int op_sbca(void) {
    if (F & 1) {
        F |= 128 | 16 | 2 | 1;
        F &= ~(64 | 4);
        A = 255;
    } else {
        F |= 64 | 2;
        F &= ~(128 | 16 | 4 | 1);
        A = 0;
    }
    return (4);
}

static int op_sbcb(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((B & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (B + carry > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) B - carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_sbcc(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((C & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (C + carry > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) C - carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_sbcd(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((D & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (D + carry > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) D - carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_sbce(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((E & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (E + carry > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) E - carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_sbch(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((H & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (H + carry > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) H - carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_sbcl(void) {
    register int i, carry;

    carry = (F & 1) ? 1 : 0;
    ((L & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (L + carry > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) L - carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_sbchl(void) {
    register int i, carry;
    register BYTE P;







    P = *(ram +(H << 8) + L);
    carry = (F & 1) ? 1 : 0;
    ((P & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (P + carry > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) P - carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (7);
}

static int op_sbcn(void) {
    register int i, carry;
    register BYTE P;







    P = *PC++;
    carry = (F & 1) ? 1 : 0;
    ((P & 0xf) + carry > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (P + carry > A) ? (F |= 1) : (F &= ~1);
    A = i = (signed char) A - (signed char) P - carry;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (7);
}

static int op_cpa(void) {
    F &= ~(128 | 16 | 4 | 1);
    F |= 64 | 2;
    return (4);
}

static int op_cpb(void) {
    register int i;

    ((B & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (B > A) ? (F |= 1) : (F &= ~1);
    i = (signed char) A - (signed char) B;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (i) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_cpc(void) {
    register int i;

    ((C & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (C > A) ? (F |= 1) : (F &= ~1);
    i = (signed char) A - (signed char) C;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (i) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_cpd(void) {
    register int i;

    ((D & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (D > A) ? (F |= 1) : (F &= ~1);
    i = (signed char) A - (signed char) D;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (i) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_cpe(void) {
    register int i;

    ((E & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (E > A) ? (F |= 1) : (F &= ~1);
    i = (signed char) A - (signed char) E;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (i) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_cph(void) {
    register int i;

    ((H & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (H > A) ? (F |= 1) : (F &= ~1);
    i = (signed char) A - (signed char) H;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (i) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_cplr(void) {
    register int i;

    ((L & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (L > A) ? (F |= 1) : (F &= ~1);
    i = (signed char) A - (signed char) L;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (i) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_cphl(void) {
    register int i;
    register BYTE P;







    P = *(ram +(H << 8) + L);
    ((P & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (P > A) ? (F |= 1) : (F &= ~1);
    i = (signed char) A - (signed char) P;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (i) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (7);
}

static int op_cpn(void) {
    register int i;
    register BYTE P;







    P = *PC++;
    ((P & 0xf) > (A & 0xf)) ? (F |= 16) : (F &= ~16);
    (P > A) ? (F |= 1) : (F &= ~1);
    i = (signed char) A - (signed char) P;
    (i < -128 || i > 127) ? (F |= 4) : (F &= ~4);
    (i & 128) ? (F |= 128) : (F &= ~128);
    (i) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (7);
}

static int op_inca(void) {
    ((A & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
    A++;
    (A == 128) ? (F |= 4) : (F &= ~4);
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_incb(void) {
    ((B & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
    B++;
    (B == 128) ? (F |= 4) : (F &= ~4);
    (B & 128) ? (F |= 128) : (F &= ~128);
    (B) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_incc(void) {
    ((C & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
    C++;
    (C == 128) ? (F |= 4) : (F &= ~4);
    (C & 128) ? (F |= 128) : (F &= ~128);
    (C) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_incd(void) {
    ((D & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
    D++;
    (D == 128) ? (F |= 4) : (F &= ~4);
    (D & 128) ? (F |= 128) : (F &= ~128);
    (D) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_ince(void) {
    ((E & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
    E++;
    (E == 128) ? (F |= 4) : (F &= ~4);
    (E & 128) ? (F |= 128) : (F &= ~128);
    (E) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_inch(void) {
    ((H & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
    H++;
    (H == 128) ? (F |= 4) : (F &= ~4);
    (H & 128) ? (F |= 128) : (F &= ~128);
    (H) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_incl(void) {
    ((L & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
    L++;
    (L == 128) ? (F |= 4) : (F &= ~4);
    (L & 128) ? (F |= 128) : (F &= ~128);
    (L) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (4);
}

static int op_incihl(void) {
    register BYTE *p;







    p = ram +(H << 8) + L;
    ((*p & 0xf) + 1 > 0xf) ? (F |= 16) : (F &= ~16);
    (*p)++;
    (*p == 128) ? (F |= 4) : (F &= ~4);
    (*p & 128) ? (F |= 128) : (F &= ~128);
    (*p) ? (F &= ~64) : (F |= 64);
    F &= ~2;
    return (11);
}

static int op_deca(void) {
    (((A - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
    A--;
    (A == 127) ? (F |= 4) : (F &= ~4);
    (A & 128) ? (F |= 128) : (F &= ~128);
    (A) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_decb(void) {
    (((B - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
    B--;
    (B == 127) ? (F |= 4) : (F &= ~4);
    (B & 128) ? (F |= 128) : (F &= ~128);
    (B) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_decc(void) {
    (((C - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
    C--;
    (C == 127) ? (F |= 4) : (F &= ~4);
    (C & 128) ? (F |= 128) : (F &= ~128);
    (C) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_decd(void) {
    (((D - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
    D--;
    (D == 127) ? (F |= 4) : (F &= ~4);
    (D & 128) ? (F |= 128) : (F &= ~128);
    (D) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_dece(void) {
    (((E - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
    E--;
    (E == 127) ? (F |= 4) : (F &= ~4);
    (E & 128) ? (F |= 128) : (F &= ~128);
    (E) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_dech(void) {
    (((H - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
    H--;
    (H == 127) ? (F |= 4) : (F &= ~4);
    (H & 128) ? (F |= 128) : (F &= ~128);
    (H) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_decl(void) {
    (((L - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
    L--;
    (L == 127) ? (F |= 4) : (F &= ~4);
    (L & 128) ? (F |= 128) : (F &= ~128);
    (L) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (4);
}

static int op_decihl(void) {
    register BYTE *p;







    p = ram +(H << 8) + L;
    (((*p - 1) & 0xf) == 0xf) ? (F |= 16) : (F &= ~16);
    (*p)--;
    (*p == 127) ? (F |= 4) : (F &= ~4);
    (*p & 128) ? (F |= 128) : (F &= ~128);
    (*p) ? (F &= ~64) : (F |= 64);
    F |= 2;
    return (11);
}

static int op_rlca(void) {
    register int i;

    i = (A & 128) ? 1 : 0;
    (i) ? (F |= 1) : (F &= ~1);
    F &= ~(16 | 2);
    A <<= 1;
    A |= i;
    return (4);
}

static int op_rrca(void) {
    register int i;

    i = A & 1;
    (i) ? (F |= 1) : (F &= ~1);
    F &= ~(16 | 2);
    A >>= 1;
    if (i) A |= 128;
    return (4);
}

static int op_rla(void) {
    register int old_c_flag;

    old_c_flag = F & 1;
    (A & 128) ? (F |= 1) : (F &= ~1);
    F &= ~(16 | 2);
    A <<= 1;
    if (old_c_flag) A |= 1;
    return (4);
}

static int op_rra(void) {
    register int i, old_c_flag;

    old_c_flag = F & 1;
    i = A & 1;
    (i) ? (F |= 1) : (F &= ~1);
    F &= ~(16 | 2);
    A >>= 1;
    if (old_c_flag) A |= 128;
    return (4);
}

static int op_exdehl(void) {
    register unsigned i;

    i = D;
    D = H;
    H = i;
    i = E;
    E = L;
    L = i;
    return (4);
}

static int op_exafaf(void) {
    register unsigned i;

    i = A;
    A = A_;
    A_ = i;
    i = F;
    F = F_;
    F_ = i;
    return (4);
}

static int op_exx(void) {
    register unsigned i;

    i = B;
    B = B_;
    B_ = i;
    i = C;
    C = C_;
    C_ = i;
    i = D;
    D = D_;
    D_ = i;
    i = E;
    E = E_;
    E_ = i;
    i = H;
    H = H_;
    H_ = i;
    i = L;
    L = L_;
    L_ = i;
    return (4);
}

static int op_exsphl(void) {
    register int i;







    i = *STACK;
    *STACK = L;
    L = i;
    i = *(STACK + 1);
    *(STACK + 1) = H;
    H = i;






    return (19);
}

static int op_pushaf(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = A;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = F;
    return (11);
}

static int op_pushbc(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = B;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = C;
    return (11);
}

static int op_pushde(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = D;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = E;
    return (11);
}

static int op_pushhl(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = H;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = L;
    return (11);
}

static int op_popaf(void) {






    F = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    A = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    return (10);
}

static int op_popbc(void) {






    C = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    B = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    return (10);
}

static int op_popde(void) {






    E = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    D = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    return (10);
}

static int op_pophl(void) {






    L = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    H = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    return (10);
}

static int op_jp(void) {
    register unsigned i;
# 2829 "../z80sim/sim1.c"
    i = *PC++;
    i += *PC << 8;
    PC = ram +i;
    return (10);
}

static int op_jphl(void) {
    PC = ram +(H << 8) + L;
    return (4);
}

static int op_jr(void) {







    PC += (signed char) *PC + 1;
    return (12);
}

static int op_djnz(void) {
    if (--B) {






        PC += (signed char) *PC + 1;
        return (13);
    } else {
        PC++;
        return (8);
    }
}

static int op_call(void) {
    register unsigned i;







    i = *PC++;
    i += *PC++ << 8;

    if (STACK <= ram)
        STACK = ram +65536L;







    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram +i;
    return (17);
}

static int op_ret(void) {
    register unsigned i;







    i = *STACK++;

    if (STACK >= ram +65536L)
        STACK = ram;

    i += *STACK++ << 8;

    if (STACK >= ram +65536L)
        STACK = ram;

    PC = ram +i;
    return (10);
}

static int op_jpz(void) {
    register unsigned i;

    if (F & 64) {






        i = *PC++;
        i += *PC++ << 8;
        PC = ram +i;
    } else
        PC += 2;
    return (10);
}

static int op_jpnz(void) {
    register unsigned i;

    if (!(F & 64)) {






        i = *PC++;
        i += *PC++ << 8;
        PC = ram +i;
    } else
        PC += 2;
    return (10);
}

static int op_jpc(void) {
    register unsigned i;

    if (F & 1) {






        i = *PC++;
        i += *PC++ << 8;
        PC = ram +i;
    } else
        PC += 2;
    return (10);
}

static int op_jpnc(void) {
    register unsigned i;

    if (!(F & 1)) {






        i = *PC++;
        i += *PC++ << 8;
        PC = ram +i;
    } else
        PC += 2;
    return (10);
}

static int op_jppe(void) {
    register unsigned i;

    if (F & 4) {






        i = *PC++;
        i += *PC++ << 8;
        PC = ram +i;
    } else
        PC += 2;
    return (10);
}

static int op_jppo(void) {
    register unsigned i;

    if (!(F & 4)) {






        i = *PC++;
        i += *PC++ << 8;
        PC = ram +i;
    } else
        PC += 2;
    return (10);
}

static int op_jpm(void) {
    register unsigned i;

    if (F & 128) {






        i = *PC++;
        i += *PC++ << 8;
        PC = ram +i;
    } else
        PC += 2;
    return (10);
}

static int op_jpp(void) {
    register unsigned i;

    if (!(F & 128)) {






        i = *PC++;
        i += *PC++ << 8;
        PC = ram +i;
    } else
        PC += 2;
    return (10);
}

static int op_calz(void) {
    register unsigned i;

    if (F & 64) {






        i = *PC++;
        i += *PC++ << 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram) >> 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram);






        PC = ram +i;
        return (17);
    } else {
        PC += 2;
        return (10);
    }
}

static int op_calnz(void) {
    register unsigned i;

    if (!(F & 64)) {






        i = *PC++;
        i += *PC++ << 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram) >> 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram);






        PC = ram +i;
        return (17);
    } else {
        PC += 2;
        return (10);
    }
}

static int op_calc(void) {
    register unsigned i;

    if (F & 1) {






        i = *PC++;
        i += *PC++ << 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram) >> 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram);






        PC = ram +i;
        return (17);
    } else {
        PC += 2;
        return (10);
    }
}

static int op_calnc(void) {
    register unsigned i;

    if (!(F & 1)) {






        i = *PC++;
        i += *PC++ << 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram) >> 8;

        if (STACK <= ram)
            STACK = ram +65536L;







        *--STACK = (PC - ram);
        PC = ram +i;
        return (17);
    } else {
        PC += 2;
        return (10);
    }
}

static int op_calpe(void) {
    register unsigned i;

    if (F & 4) {






        i = *PC++;
        i += *PC++ << 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram) >> 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram);






        PC = ram +i;
        return (17);
    } else {
        PC += 2;
        return (10);
    }
}

static int op_calpo(void) {
    register unsigned i;

    if (!(F & 4)) {






        i = *PC++;
        i += *PC++ << 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram) >> 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram);






        PC = ram +i;
        return (17);
    } else {
        PC += 2;
        return (10);
    }
}

static int op_calm(void) {
    register unsigned i;

    if (F & 128) {






        i = *PC++;
        i += *PC++ << 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram) >> 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram);






        PC = ram +i;
        return (17);
    } else {
        PC += 2;
        return (10);
    }
}

static int op_calp(void) {
    register unsigned i;

    if (!(F & 128)) {






        i = *PC++;
        i += *PC++ << 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram) >> 8;

        if (STACK <= ram)
            STACK = ram +65536L;

        *--STACK = (PC - ram);






        PC = ram +i;
        return (17);
    } else {
        PC += 2;
        return (10);
    }
}

static int op_retz(void) {
    register unsigned i;

    if (F & 64) {






        i = *STACK++;

        if (STACK >= ram +65536L)
            STACK = ram;

        i += *STACK++ << 8;

        if (STACK >= ram +65536L)
            STACK = ram;

        PC = ram +i;
        return (11);
    } else {
        return (5);
    }
}

static int op_retnz(void) {
    register unsigned i;

    if (!(F & 64)) {






        i = *STACK++;

        if (STACK >= ram +65536L)
            STACK = ram;

        i += *STACK++ << 8;

        if (STACK >= ram +65536L)
            STACK = ram;

        PC = ram +i;
        return (11);
    } else {
        return (5);
    }
}

static int op_retc(void) {
    register unsigned i;

    if (F & 1) {






        i = *STACK++;

        if (STACK >= ram +65536L)
            STACK = ram;

        i += *STACK++ << 8;

        if (STACK >= ram +65536L)
            STACK = ram;

        PC = ram +i;
        return (11);
    } else {
        return (5);
    }
}

static int op_retnc(void) {
    register unsigned i;

    if (!(F & 1)) {






        i = *STACK++;

        if (STACK >= ram +65536L)
            STACK = ram;

        i += *STACK++ << 8;

        if (STACK >= ram +65536L)
            STACK = ram;

        PC = ram +i;
        return (11);
    } else {
        return (5);
    }
}

static int op_retpe(void) {
    register unsigned i;

    if (F & 4) {






        i = *STACK++;

        if (STACK >= ram +65536L)
            STACK = ram;

        i += *STACK++ << 8;

        if (STACK >= ram +65536L)
            STACK = ram;

        PC = ram +i;
        return (11);
    } else {
        return (5);
    }
}

static int op_retpo(void) {
    register unsigned i;

    if (!(F & 4)) {






        i = *STACK++;

        if (STACK >= ram +65536L)
            STACK = ram;

        i += *STACK++ << 8;

        if (STACK >= ram +65536L)
            STACK = ram;

        PC = ram +i;
        return (11);
    } else {
        return (5);
    }
}

static int op_retm(void) {
    register unsigned i;

    if (F & 128) {






        i = *STACK++;

        if (STACK >= ram +65536L)
            STACK = ram;

        i += *STACK++ << 8;

        if (STACK >= ram +65536L)
            STACK = ram;

        PC = ram +i;
        return (11);
    } else {
        return (5);
    }
}

static int op_retp(void) {
    register unsigned i;

    if (!(F & 128)) {






        i = *STACK++;

        if (STACK >= ram +65536L)
            STACK = ram;

        i += *STACK++ << 8;

        if (STACK >= ram +65536L)
            STACK = ram;

        PC = ram +i;
        return (11);
    } else {
        return (5);
    }
}

static int op_jrz(void) {
    if (F & 64) {






        PC += (signed char) *PC + 1;
        return (12);
    } else {
        PC++;
        return (7);
    }
}

static int op_jrnz(void) {
    if (!(F & 64)) {






        PC += (signed char) *PC + 1;
        return (12);
    } else {
        PC++;
        return (7);
    }
}

static int op_jrc(void) {
    if (F & 1) {






        PC += (signed char) *PC + 1;
        return (12);
    } else {
        PC++;
        return (7);
    }
}

static int op_jrnc(void) {
    if (!(F & 1)) {






        PC += (signed char) *PC + 1;
        return (12);
    } else {
        PC++;
        return (7);
    }
}

static int op_rst00(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram;
    return (11);
}

static int op_rst08(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram +0x08;
    return (11);
}

static int op_rst10(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram +0x10;
    return (11);
}

static int op_rst18(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram +0x18;
    return (11);
}

static int op_rst20(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram +0x20;
    return (11);
}

static int op_rst28(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram +0x28;
    return (11);
}

static int op_rst30(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram +0x30;
    return (11);
}

static int op_rst38(void) {







    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram) >> 8;

    if (STACK <= ram)
        STACK = ram +65536L;

    *--STACK = (PC - ram);
    PC = ram +0x38;
    return (11);
}
