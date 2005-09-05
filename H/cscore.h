/*
    cscore.h:

    Copyright (C) 1991 Barry Vercoe, John ffitch

    This file is part of Csound.

    The Csound Library is free software; you can redistribute it
    and/or modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    Csound is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with Csound; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
    02111-1307 USA
*/

#include <stdio.h>                     /*             CSCORE.H     */

#ifndef MYFLT
#include "sysdep.h"
#endif
#include "csoundCore.h"

typedef struct cshdr {
        struct cshdr *prvblk;
        struct cshdr *nxtblk;
        short  type;
        short  size;
} CSHDR;

typedef struct {
        CSHDR h;
        char  *strarg;
        char  op;
        short pcnt;
        MYFLT p2orig;
        MYFLT p3orig;
        MYFLT p[1];
} EVENT;

typedef struct {
        CSHDR h;
        int   nslots;
        int   nevents;
        EVENT *e[1];
} EVLIST;

EVENT  *createv(CSOUND *, int), *defev(CSOUND *, char*), *getev(CSOUND *);
EVENT  *copyev(CSOUND *, EVENT*);
EVLIST *lcreat(CSOUND *, int), *lappev(CSOUND *, EVLIST*,EVENT*);
EVLIST *lappstrev(CSOUND *,EVLIST*,char*);
EVLIST *lget(CSOUND *), *lgetnext(CSOUND *,MYFLT), *lgetuntil(CSOUND*,MYFLT),
       *lcopy(CSOUND *, EVLIST*);
EVLIST *lcopyev(CSOUND *, EVLIST*), *lxins(CSOUND *,EVLIST*,char*),
       *lxtimev(CSOUND *,EVLIST*,MYFLT,MYFLT);
EVLIST *lsepf(CSOUND *, EVLIST*), *lseptwf(CSOUND *, EVLIST*),
       *lcat(CSOUND *,EVLIST*,EVLIST*);
void    putstr(CSOUND *, char*), putev(CSOUND *, EVENT*), relev(EVENT*),
        lput(CSOUND *, EVLIST*);
void lsort(EVLIST*), lrel(EVLIST*), lrelev(EVLIST*);
int lplay(CSOUND *,EVLIST*);
int lcount(EVLIST *);
FILE *filopen(CSOUND *, char*), *getcurfp(CSOUND *);
void filclose(CSOUND *, FILE*), setcurfp(CSOUND *, FILE*);

