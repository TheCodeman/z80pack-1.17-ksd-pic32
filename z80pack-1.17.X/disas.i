# 1 "../z80sim/disas.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../z80sim/disas.c"
# 29 "../z80sim/disas.c"
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
# 30 "../z80sim/disas.c" 2
# 1 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/string.h" 1 3
# 14 "/Applications/microchip/mplabc32/v2.01/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/string.h" 3
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);

extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strrchr(const char *, int);
# 31 "../z80sim/disas.c" 2
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
# 32 "../z80sim/disas.c" 2




static int opout(char *, char **);
static int nout(char *, unsigned char **);
static int iout(char *, unsigned char **);
static int rout(char *, char **);
static int nnout(char *, unsigned char **);
static int inout(char *, unsigned char **);
static int cbop(char *, unsigned char **);
static int edop(char *, unsigned char **);
static int ddfd(char *, unsigned char **);




struct opt {
 int (*fun) ();
 char *text;
};

static struct opt optab[256] = {
 { opout, "NOP" },
 { nnout, "LD\tBC," },
 { opout, "LD\t(BC),A" },
 { opout, "INC\tBC" },
 { opout, "INC\tB" },
 { opout, "DEC\tB" },
 { nout, "LD\tB," },
 { opout, "RLCA" },
 { opout, "EX\tAF,AF'" },
 { opout, "ADD\tHL,BC" },
 { opout, "LD\tA,(BC)" },
 { opout, "DEC\tBC" },
 { opout, "INC\tC" },
 { opout, "DEC\tC" },
 { nout, "LD\tC," },
 { opout, "RRCA" },
 { rout, "DJNZ\t" },
 { nnout, "LD\tDE," },
 { opout, "LD\t(DE),A" },
 { opout, "INC\tDE" },
 { opout, "INC\tD" },
 { opout, "DEC\tD" },
 { nout, "LD\tD," },
 { opout, "RLA" },
 { rout, "JR\t" },
 { opout, "ADD\tHL,DE" },
 { opout, "LD\tA,(DE)" },
 { opout, "DEC\tDE" },
 { opout, "INC\tE" },
 { opout, "DEC\tE" },
 { nout, "LD\tE," },
 { opout, "RRA" },
 { rout, "JR\tNZ," },
 { nnout, "LD\tHL," },
 { inout, "LD\t(%04X),HL" },
 { opout, "INC\tHL" },
 { opout, "INC\tH" },
 { opout, "DEC\tH" },
 { nout, "LD\tH," },
 { opout, "DAA" },
 { rout, "JR\tZ," },
 { opout, "ADD\tHL,HL" },
 { inout, "LD\tHL,(%04X)" },
 { opout, "DEC\tHL" },
 { opout, "INC\tL" },
 { opout, "DEC\tL" },
 { nout, "LD\tL," },
 { opout, "CPL" },
 { rout, "JR\tNC," },
 { nnout, "LD\tSP," },
 { inout, "LD\t(%04X),A" },
 { opout, "INC\tSP" },
 { opout, "INC\t(HL)" },
 { opout, "DEC\t(HL)" },
 { nout, "LD\t(HL)," },
 { opout, "SCF" },
 { rout, "JR\tC," },
 { opout, "ADD\tHL,SP" },
 { inout, "LD\tA,(%04X)" },
 { opout, "DEC\tSP" },
 { opout, "INC\tA" },
 { opout, "DEC\tA" },
 { nout, "LD\tA," },
 { opout, "CCF" },
 { opout, "LD\tB,B" },
 { opout, "LD\tB,C" },
 { opout, "LD\tB,D" },
 { opout, "LD\tB,E" },
 { opout, "LD\tB,H" },
 { opout, "LD\tB,L" },
 { opout, "LD\tB,(HL)" },
 { opout, "LD\tB,A" },
 { opout, "LD\tC,B" },
 { opout, "LD\tC,C" },
 { opout, "LD\tC,D" },
 { opout, "LD\tC,E" },
 { opout, "LD\tC,H" },
 { opout, "LD\tC,L" },
 { opout, "LD\tC,(HL)" },
 { opout, "LD\tC,A" },
 { opout, "LD\tD,B" },
 { opout, "LD\tD,C" },
 { opout, "LD\tD,D" },
 { opout, "LD\tD,E" },
 { opout, "LD\tD,H" },
 { opout, "LD\tD,L" },
 { opout, "LD\tD,(HL)" },
 { opout, "LD\tD,A" },
 { opout, "LD\tE,B" },
 { opout, "LD\tE,C" },
 { opout, "LD\tE,D" },
 { opout, "LD\tE,E" },
 { opout, "LD\tE,H" },
 { opout, "LD\tE,L" },
 { opout, "LD\tE,(HL)" },
 { opout, "LD\tE,A" },
 { opout, "LD\tH,B" },
 { opout, "LD\tH,C" },
 { opout, "LD\tH,D" },
 { opout, "LD\tH,E" },
 { opout, "LD\tH,H" },
 { opout, "LD\tH,L" },
 { opout, "LD\tH,(HL)" },
 { opout, "LD\tH,A" },
 { opout, "LD\tL,B" },
 { opout, "LD\tL,C" },
 { opout, "LD\tL,D" },
 { opout, "LD\tL,E" },
 { opout, "LD\tL,H" },
 { opout, "LD\tL,L" },
 { opout, "LD\tL,(HL)" },
 { opout, "LD\tL,A" },
 { opout, "LD\t(HL),B" },
 { opout, "LD\t(HL),C" },
 { opout, "LD\t(HL),D" },
 { opout, "LD\t(HL),E" },
 { opout, "LD\t(HL),H" },
 { opout, "LD\t(HL),L" },
 { opout, "HALT" },
 { opout, "LD\t(HL),A" },
 { opout, "LD\tA,B" },
 { opout, "LD\tA,C" },
 { opout, "LD\tA,D" },
 { opout, "LD\tA,E" },
 { opout, "LD\tA,H" },
 { opout, "LD\tA,L" },
 { opout, "LD\tA,(HL)" },
 { opout, "LD\tA,A" },
 { opout, "ADD\tA,B" },
 { opout, "ADD\tA,C" },
 { opout, "ADD\tA,D" },
 { opout, "ADD\tA,E" },
 { opout, "ADD\tA,H" },
 { opout, "ADD\tA,L" },
 { opout, "ADD\tA,(HL)" },
 { opout, "ADD\tA,A" },
 { opout, "ADC\tA,B" },
 { opout, "ADC\tA,C" },
 { opout, "ADC\tA,D" },
 { opout, "ADC\tA,E" },
 { opout, "ADC\tA,H" },
 { opout, "ADC\tA,L" },
 { opout, "ADC\tA,(HL)" },
 { opout, "ADC\tA,A" },
 { opout, "SUB\tB" },
 { opout, "SUB\tC" },
 { opout, "SUB\tD" },
 { opout, "SUB\tE" },
 { opout, "SUB\tH" },
 { opout, "SUB\tL" },
 { opout, "SUB\t(HL)" },
 { opout, "SUB\tA" },
 { opout, "SBC\tA,B" },
 { opout, "SBC\tA,C" },
 { opout, "SBC\tA,D" },
 { opout, "SBC\tA,E" },
 { opout, "SBC\tA,H" },
 { opout, "SBC\tA,L" },
 { opout, "SBC\tA,(HL)" },
 { opout, "SBC\tA,A" },
 { opout, "AND\tB" },
 { opout, "AND\tC" },
 { opout, "AND\tD" },
 { opout, "AND\tE" },
 { opout, "AND\tH" },
 { opout, "AND\tL" },
 { opout, "AND\t(HL)" },
 { opout, "AND\tA" },
 { opout, "XOR\tB" },
 { opout, "XOR\tC" },
 { opout, "XOR\tD" },
 { opout, "XOR\tE" },
 { opout, "XOR\tH" },
 { opout, "XOR\tL" },
 { opout, "XOR\t(HL)" },
 { opout, "XOR\tA" },
 { opout, "OR\tB" },
 { opout, "OR\tC" },
 { opout, "OR\tD" },
 { opout, "OR\tE" },
 { opout, "OR\tH" },
 { opout, "OR\tL" },
 { opout, "OR\t(HL)" },
 { opout, "OR\tA" },
 { opout, "CP\tB" },
 { opout, "CP\tC" },
 { opout, "CP\tD" },
 { opout, "CP\tE" },
 { opout, "CP\tH" },
 { opout, "CP\tL" },
 { opout, "CP\t(HL)" },
 { opout, "CP\tA" },
 { opout, "RET\tNZ" },
 { opout, "POP\tBC" },
 { nnout, "JP\tNZ," },
 { nnout, "JP\t" },
 { nnout, "CALL\tNZ," },
 { opout, "PUSH\tBC" },
 { nout, "ADD\tA," },
 { opout, "RST\t0" },
 { opout, "RET\tZ" },
 { opout, "RET" },
 { nnout, "JP\tZ," },
 { cbop, "" },
 { nnout, "CALL\tZ," },
 { nnout, "CALL\t" },
 { nout, "ADC\tA," },
 { opout, "RST\t8" },
 { opout, "RET\tNC" },
 { opout, "POP\tDE" },
 { nnout, "JP\tNC," },
 { iout, "OUT\t(%02X),A" },
 { nnout, "CALL\tNC," },
 { opout, "PUSH\tDE" },
 { nout, "SUB\t" },
 { opout, "RST\t10" },
 { opout, "RET\tC" },
 { opout, "EXX" },
 { nnout, "JP\tC," },
 { iout, "IN\tA,(%02X)" },
 { nnout, "CALL\tC," },
 { ddfd, "" },
 { nout, "SBC\tA," },
 { opout, "RST\t18" },
 { opout, "RET\tPO" },
 { opout, "POP\tHL" },
 { nnout, "JP\tPO," },
 { opout, "EX\t(SP),HL" },
 { nnout, "CALL\tPO," },
 { opout, "PUSH\tHL" },
 { nout, "AND\t" },
 { opout, "RST\t20" },
 { opout, "RET\tPE" },
 { opout, "JP\t(HL)" },
 { nnout, "JP\tPE," },
 { opout, "EX\tDE,HL" },
 { nnout, "CALL\tPE," },
 { edop, "" },
 { nout, "XOR\t" },
 { opout, "RST\t28" },
 { opout, "RET\tP" },
 { opout, "POP\tAF" },
 { nnout, "JP\tP," },
 { opout, "DI" },
 { nnout, "CALL\tP," },
 { opout, "PUSH\tAF" },
 { nout, "OR\t" },
 { opout, "RST\t30" },
 { opout, "RET\tM" },
 { opout, "LD\tSP,HL" },
 { nnout, "JP\tM," },
 { opout, "EI" },
 { nnout, "CALL\tM," },
 { ddfd, "" },
 { nout, "CP\t" },
 { opout, "RST\t38" }
};

static int addr;
static char *unkown = "???";
static char *reg[] = { "B", "C", "D", "E", "H", "L", "(HL)", "A" };
static char *regix = "IX";
static char *regiy = "IY";



char Disass_Str[64];
char Opcode_Str[64];
# 373 "../z80sim/disas.c"
void disass(unsigned char **p, int adr)
{
 register int len;

 addr = adr;
 len = (*optab[**p].fun) (optab[**p].text, p);

 printf(Disass_Str);




 *p += len;
}




static int opout(char *s, char **p)
{
 sprintf(Disass_Str, "%s\n", s);
 return(1);
}




static int nout(char *s, unsigned char **p)
{
 sprintf(Disass_Str, "%s%02X\n", s, *(*p + 1));
 return(2);
}




static int iout(char *s, unsigned char **p)
{
 sprintf(Disass_Str, s, *(*p + 1));
 strcat(Disass_Str, "\n");
 return(2);
}




static int rout(char *s, char **p)
{
 sprintf(Disass_Str, "%s%04X\n", s, addr + *(*p + 1) + 2);
 return(2);
}




static int nnout(char *s, unsigned char **p)
{
 register int i;

 i = *(*p + 1) + (*(*p + 2) << 8);
 sprintf(Disass_Str, "%s%04X\n", s, i);
 return(3);
}




static int inout(char *s, unsigned char **p)
{
 register int i;

 i = *(*p + 1) + (*(*p + 2) << 8);
 sprintf(Disass_Str, s, i);
 strcat(Disass_Str, "\n");
 return(3);
}




static int cbop(char *s, unsigned char **p)
{
 register int b2;

 b2 = *(*p + 1);
 if (b2 >= 0x00 && b2 <= 0x07) {
  sprintf(Disass_Str, "RLC\t%s\n",
   reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0x08 && b2 <= 0x0f) {
  sprintf(Disass_Str, "RRC\t%s\n",
   reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0x10 && b2 <= 0x17) {
  sprintf(Disass_Str, "RL\t%s\n",
   reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0x18 && b2 <= 0x1f) {
  sprintf(Disass_Str, "RR\t%s\n",
   reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0x20 && b2 <= 0x27) {
  sprintf(Disass_Str, "SLA\t%s\n",
   reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0x28 && b2 <= 0x2f) {
  sprintf(Disass_Str, "SRA\t%s\n",
   reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0x38 && b2 <= 0x3f) {
  sprintf(Disass_Str, "SRL\t%s\n",
   reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0x40 && b2 <= 0x7f) {
  sprintf(Disass_Str, "BIT\t%c,%s\n",
   ((b2 >> 3) & 7) + '0', reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0x80 && b2 <= 0xbf) {
  sprintf(Disass_Str, "RES\t%c,%s\n",
   ((b2 >> 3) & 7) + '0', reg[b2 & 7]);
  return(2);
 }
 if (b2 >= 0xc0) {
  sprintf(Disass_Str, "SET\t%c,%s\n",
   ((b2 >> 3) & 7) + '0', reg[b2 & 7]);
  return(2);
 }
 strcat(Disass_Str, unkown);
 return(2);
}




static int edop(char *s, unsigned char **p)
{
 register int b2, i;
 int len = 2;

 Disass_Str[0] = 0;
 b2 = *(*p + 1);
 switch (b2) {
 case 0x40:
  strcat(Disass_Str, "IN\tB,(C)\n");
  break;
 case 0x41:
  strcat(Disass_Str, "OUT\t(C),B\n");
  break;
 case 0x42:
  strcat(Disass_Str, "SBC\tHL,BC\n");
  break;
 case 0x43:
  i = *(*p + 2) + (*(*p + 3) << 8);
  sprintf(Disass_Str, "LD\t(%04X),BC\n", i);
  len = 4;
  break;
 case 0x44:
  strcat(Disass_Str, "NEG\n");
  break;
 case 0x45:
  strcat(Disass_Str, "RETN\n");
  break;
 case 0x46:
  strcat(Disass_Str, "IM\t0\n");
  break;
 case 0x47:
  strcat(Disass_Str, "LD\tI,A\n");
  break;
 case 0x48:
  strcat(Disass_Str, "IN\tC,(C)\n");
  break;
 case 0x49:
  strcat(Disass_Str, "OUT\t(C),C\n");
  break;
 case 0x4a:
  strcat(Disass_Str, "ADC\tHL,BC\n");
  break;
 case 0x4b:
  i = *(*p + 2) + (*(*p + 3) << 8);
  sprintf(Disass_Str, "LD\tBC,(%04X)\n", i);
  len = 4;
  break;
 case 0x4d:
  strcat(Disass_Str, "RETI\n");
  break;
 case 0x4f:
  strcat(Disass_Str, "LD\tR,A\n");
  break;
 case 0x50:
  strcat(Disass_Str, "IN\tD,(C)\n");
  break;
 case 0x51:
  strcat(Disass_Str, "OUT\t(C),D\n");
  break;
 case 0x52:
  strcat(Disass_Str, "SBC\tHL,DE\n");
  break;
 case 0x53:
  i = *(*p + 2) + (*(*p + 3) << 8);
  sprintf(Disass_Str, "LD\t(%04X),DE\n", i);
  len = 4;
  break;
 case 0x56:
  strcat(Disass_Str, "IM\t1\n");
  break;
 case 0x57:
  strcat(Disass_Str, "LD\tA,I\n");
  break;
 case 0x58:
  strcat(Disass_Str, "IN\tE,(C)\n");
  break;
 case 0x59:
  strcat(Disass_Str, "OUT\t(C),E\n");
  break;
 case 0x5a:
  strcat(Disass_Str, "ADC\tHL,DE\n");
  break;
 case 0x5b:
  i = *(*p + 2) + (*(*p + 3) << 8);
  sprintf(Disass_Str, "LD\tDE,(%04X)\n", i);
  len = 4;
  break;
 case 0x5e:
  strcat(Disass_Str, "IM\t2\n");
  break;
 case 0x5f:
  strcat(Disass_Str, "LD\tA,R\n");
  break;
 case 0x60:
  strcat(Disass_Str, "IN\tH,(C)\n");
  break;
 case 0x61:
  strcat(Disass_Str, "OUT\t(C),H\n");
  break;
 case 0x62:
  strcat(Disass_Str, "SBC\tHL,HL\n");
  break;
 case 0x67:
  strcat(Disass_Str, "RRD\n");
  break;
 case 0x68:
  strcat(Disass_Str, "IN\tL,(C)\n");
  break;
 case 0x69:
  strcat(Disass_Str, "OUT\t(C),L\n");
  break;
 case 0x6a:
  strcat(Disass_Str, "ADC\tHL,HL\n");
  break;
 case 0x6f:
  strcat(Disass_Str, "RLD\n");
  break;
 case 0x72:
  strcat(Disass_Str, "SBC\tHL,SP\n");
  break;
 case 0x73:
  i = *(*p + 2) + (*(*p + 3) << 8);
  sprintf(Disass_Str, "LD\t(%04X),SP\n", i);
  len = 4;
  break;
 case 0x78:
  strcat(Disass_Str, "IN\tA,(C)\n");
  break;
 case 0x79:
  strcat(Disass_Str, "OUT\t(C),A\n");
  break;
 case 0x7a:
  strcat(Disass_Str, "ADC\tHL,SP\n");
  break;
 case 0x7b:
  i = *(*p + 2) + (*(*p + 3) << 8);
  sprintf(Disass_Str, "LD\tSP,(%04X)\n", i);
  len = 4;
  break;
 case 0xa0:
  strcat(Disass_Str, "LDI\n");
  break;
 case 0xa1:
  strcat(Disass_Str, "CPI\n");
  break;
 case 0xa2:
  strcat(Disass_Str, "INI\n");
  break;
 case 0xa3:
  strcat(Disass_Str, "OUTI\n");
  break;
 case 0xa8:
  strcat(Disass_Str, "LDD\n");
  break;
 case 0xa9:
  strcat(Disass_Str, "CPD\n");
  break;
 case 0xaa:
  strcat(Disass_Str, "IND\n");
  break;
 case 0xab:
  strcat(Disass_Str, "OUTD\n");
  break;
 case 0xb0:
  strcat(Disass_Str, "LDIR\n");
  break;
 case 0xb1:
  strcat(Disass_Str, "CPIR\n");
  break;
 case 0xb2:
  strcat(Disass_Str, "INIR\n");
  break;
 case 0xb3:
  strcat(Disass_Str, "OTIR\n");
  break;
 case 0xb8:
  strcat(Disass_Str, "LDDR\n");
  break;
 case 0xb9:
  strcat(Disass_Str, "CPDR\n");
  break;
 case 0xba:
  strcat(Disass_Str, "INDR\n");
  break;
 case 0xbb:
  strcat(Disass_Str, "OTDR\n");
  break;
 default:
  strcat(Disass_Str, unkown);
 }
 return(len);
}




static int ddfd(char *s, unsigned char **p)
{
 register int b2;
 register char *ireg;
 int len = 3;

 if (**p == 0xdd)
  ireg = regix;
 else
  ireg = regiy;
 b2 = *(*p + 1);
 if (b2 >= 0x70 && b2 <= 0x77) {
  sprintf(Disass_Str, "LD\t(%s+%02X),%s\n", ireg, *(*p + 2), reg[b2 & 7]);
  return(3);
 }
 switch (b2) {
 case 0x09:
  sprintf(Disass_Str, "ADD\t%s,BC\n", ireg);
  len = 2;
  break;
 case 0x19:
  sprintf(Disass_Str, "ADD\t%s,DE\n", ireg);
  len = 2;
  break;
 case 0x21:
  sprintf(Disass_Str, "LD\t%s,%04X\n", ireg, *(*p + 2) + (*(*p + 3) << 8));
  len = 4;
  break;
 case 0x22:
  sprintf(Disass_Str, "LD\t(%04X),%s\n", *(*p + 2) + (*(*p + 3) << 8), ireg);
  len = 4;
  break;
 case 0x23:
  sprintf(Disass_Str, "INC\t%s\n", ireg);
  len = 2;
  break;
 case 0x29:
  if (**p == 0xdd)
   sprintf(Disass_Str, "ADD\tIX,IX\n");
  else
   sprintf(Disass_Str, "ADD\tIY,IY\n");
  len = 2;
  break;
 case 0x2a:
  sprintf(Disass_Str, "LD\t%s,(%04X)\n", ireg, *(*p + 2) + (*(*p + 3) << 8));
  len = 4;
  break;
 case 0x2b:
  sprintf(Disass_Str, "DEC\t%s\n", ireg);
  len = 2;
  break;
 case 0x34:
  sprintf(Disass_Str, "INC\t(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x35:
  sprintf(Disass_Str, "DEC\t(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x36:
  sprintf(Disass_Str, "LD\t(%s+%02X),%02X\n", ireg, *(*p + 2), *(*p + 3));
  len = 4;
  break;
 case 0x39:
  sprintf(Disass_Str, "ADD\t%s,SP\n", ireg);
  len = 2;
  break;
 case 0x46:
  sprintf(Disass_Str, "LD\tB,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x4e:
  sprintf(Disass_Str, "LD\tC,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x56:
  sprintf(Disass_Str, "LD\tD,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x5e:
  sprintf(Disass_Str, "LD\tE,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x66:
  sprintf(Disass_Str, "LD\tH,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x6e:
  sprintf(Disass_Str, "LD\tL,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x7e:
  sprintf(Disass_Str, "LD\tA,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x86:
  sprintf(Disass_Str, "ADD\tA,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x8e:
  sprintf(Disass_Str, "ADC\tA,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x96:
  sprintf(Disass_Str, "SUB\t(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0x9e:
  sprintf(Disass_Str, "SBC\tA,(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0xa6:
  sprintf(Disass_Str, "AND\t(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0xae:
  sprintf(Disass_Str, "XOR\t(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0xb6:
  sprintf(Disass_Str, "OR\t(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0xbe:
  sprintf(Disass_Str, "CP\t(%s+%02X)\n", ireg, *(*p + 2));
  break;
 case 0xcb:
  switch (*(*p + 3)) {
  case 0x06:
   sprintf(Disass_Str, "RLC\t(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x0e:
   sprintf(Disass_Str, "RRC\t(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x16:
   sprintf(Disass_Str, "RL\t(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x1e:
   sprintf(Disass_Str, "RR\t(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x26:
   sprintf(Disass_Str, "SLA\t(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x2e:
   sprintf(Disass_Str, "SRA\t(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x3e:
   sprintf(Disass_Str, "SRL\t(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x46:
   sprintf(Disass_Str, "BIT\t0,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x4e:
   sprintf(Disass_Str, "BIT\t1,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x56:
   sprintf(Disass_Str, "BIT\t2,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x5e:
   sprintf(Disass_Str, "BIT\t3,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x66:
   sprintf(Disass_Str, "BIT\t4,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x6e:
   sprintf(Disass_Str, "BIT\t5,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x76:
   sprintf(Disass_Str, "BIT\t6,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x7e:
   sprintf(Disass_Str, "BIT\t7,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x86:
   sprintf(Disass_Str, "RES\t0,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x8e:
   sprintf(Disass_Str, "RES\t1,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x96:
   sprintf(Disass_Str, "RES\t2,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0x9e:
   sprintf(Disass_Str, "RES\t3,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xa6:
   sprintf(Disass_Str, "RES\t4,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xae:
   sprintf(Disass_Str, "RES\t5,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xb6:
   sprintf(Disass_Str, "RES\t6,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xbe:
   sprintf(Disass_Str, "RES\t7,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xc6:
   sprintf(Disass_Str, "SET\t0,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xce:
   sprintf(Disass_Str, "SET\t1,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xd6:
   sprintf(Disass_Str, "SET\t2,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xde:
   sprintf(Disass_Str, "SET\t3,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xe6:
   sprintf(Disass_Str, "SET\t4,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xee:
   sprintf(Disass_Str, "SET\t5,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xf6:
   sprintf(Disass_Str, "SET\t6,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  case 0xfe:
   sprintf(Disass_Str, "SET\t7,(%s+%02X)\n", ireg, *(*p + 2));
   break;
  default:
   strcat(Disass_Str, unkown);
  }
  len = 4;
  break;
 case 0xe1:
  sprintf(Disass_Str, "POP\t%s\n", ireg);
  len = 2;
  break;
 case 0xe3:
  sprintf(Disass_Str, "EX\t(SP),%s\n", ireg);
  len = 2;
  break;
 case 0xe5:
  sprintf(Disass_Str, "PUSH\t%s\n", ireg);
  len = 2;
  break;
 case 0xe9:
  sprintf(Disass_Str, "JP\t(%s)\n", ireg);
  len = 2;
  break;
 case 0xf9:
  sprintf(Disass_Str, "LD\tSP,%s\n", ireg);
  len = 2;
  break;
 default:
  strcat(Disass_Str, unkown);
 }
 return(len);
}
