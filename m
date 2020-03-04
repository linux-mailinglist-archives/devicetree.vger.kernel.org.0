Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BCBCE178A76
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2020 06:59:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725776AbgCDF7w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Mar 2020 00:59:52 -0500
Received: from mail-lf1-f66.google.com ([209.85.167.66]:42143 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725791AbgCDF7w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Mar 2020 00:59:52 -0500
Received: by mail-lf1-f66.google.com with SMTP id t21so452219lfe.9
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2020 21:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8yOktjIgVtQ+DxYaitW0rtjAH3g7r6cgxIGLvI0hfKc=;
        b=QMTuLltflpz8krzhzZvU/ySvNdJM9N55orENO2/SPexZXiDlLnDMEED0/Bk1ycYWMN
         wDu6T4rZAaq3xHA6j8mJe+Td8UZuIiSueaE2wLYxkNFugQHnxzwmRgzx4Ap0MndqZSs4
         neTszAjSL81tpO1v0Wp9ERLGx+E4USTPNkxXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8yOktjIgVtQ+DxYaitW0rtjAH3g7r6cgxIGLvI0hfKc=;
        b=nITSFrB59EhvljBWNpkfx5DLh0NdPevxqaSH1SGj71h/PwQ3NH9fCJEFT/bu1u0R9n
         Qi+LqbQoYL5olEFuJH2BwUgQDkO7ojSY6Ss0HiHU/RxzphFO8NvL5CKLDsvi0fCQGLV3
         a3iQFP3O3XUL9LJdHz63Utco0P+bQ2L7hKXR9c1Tdm2MBnaFsHgcO0zYK2qgAjYodpxM
         6DvV3TWMvwNu4xo1Aw6HBwZjkaPdaEvfvRxeh7MtXsKzvaAM+Y7rKr5CmEVahJe0iHD9
         Arx9/z8QHbHdkMnf7j9XkFJNpC9DH8trUNYK5jp9JzYwgbJhJhIW/zIK4vbEiqyMuAf9
         zQyg==
X-Gm-Message-State: ANhLgQ07Oyl4bPdjGro9iEbvRlOna76aV+dOTSy35x/CE23V46UGkPmg
        FUhTAKK/OQjIMhacIiKwhoXEi6QW0+3/86Vr84YVzw==
X-Google-Smtp-Source: ADFU+vtbiMef3xxO69hZHkp7sN6KQEVtnL3v7zemrbv3HPuhI4anNYJg6MV0MWMSd47obWuucJo6f6zcAoAQV/Oz6zs=
X-Received: by 2002:ac2:4948:: with SMTP id o8mr949362lfi.201.1583301590650;
 Tue, 03 Mar 2020 21:59:50 -0800 (PST)
MIME-Version: 1.0
References: <20200228084842.18691-1-rayagonda.kokatanur@broadcom.com>
 <CAL_JsqLXvVnVq0Mc1d0WMLNjURbHe9T3bKNb+5D6Nz3iyTK8GA@mail.gmail.com> <CAHO=5PFuercRYBzupd-Zb3q8v3sQWGT2ySXodG9S5NVj7Ta+1Q@mail.gmail.com>
In-Reply-To: <CAHO=5PFuercRYBzupd-Zb3q8v3sQWGT2ySXodG9S5NVj7Ta+1Q@mail.gmail.com>
From:   Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date:   Wed, 4 Mar 2020 11:29:39 +0530
Message-ID: <CAHO=5PHEE4C9rArembX3cJP_eQ1KGS6gPj6POYtQhZ=Pp8po+A@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] scripts: dtc: mask flags bit when check i2c addr
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 3, 2020 at 10:26 AM Rayagonda Kokatanur
<rayagonda.kokatanur@broadcom.com> wrote:
>
> On Fri, Feb 28, 2020 at 7:20 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, Feb 28, 2020 at 2:48 AM Rayagonda Kokatanur
> > <rayagonda.kokatanur@broadcom.com> wrote:
> > >
> > > Generally i2c addr should not be greater than 10-bit. The highest 2 bits
> > > are used for I2C_TEN_BIT_ADDRESS and I2C_OWN_SLAVE_ADDRESS. Need to mask
> > > these flags if check slave addr valid.
> > >
> > > Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> > > ---
> > >  scripts/dtc/Makefile | 2 +-
> > >  scripts/dtc/checks.c | 5 +++++
> > >  2 files changed, 6 insertions(+), 1 deletion(-)
> >
> > dtc changes must be submitted against upstream dtc.
>
> Please let me know link to clone the upstream dtc branch.
> >
> >
> > > diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
> > > index 3acbb410904c..c5e8d6a9e73c 100644
> > > --- a/scripts/dtc/Makefile
> > > +++ b/scripts/dtc/Makefile
> > > @@ -9,7 +9,7 @@ dtc-objs        := dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
> > >  dtc-objs       += dtc-lexer.lex.o dtc-parser.tab.o
> > >
> > >  # Source files need to get at the userspace version of libfdt_env.h to compile
> > > -HOST_EXTRACFLAGS := -I $(srctree)/$(src)/libfdt
> > > +HOST_EXTRACFLAGS := -I $(srctree)/$(src)/libfdt -I$(srctree)/tools/include
> > >
> > >  ifeq ($(shell pkg-config --exists yaml-0.1 2>/dev/null && echo yes),)
> > >  ifneq ($(CHECK_DTBS),)
> > > diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
> > > index 756f0fa9203f..17c9ed4137b5 100644
> > > --- a/scripts/dtc/checks.c
> > > +++ b/scripts/dtc/checks.c
> > > @@ -3,6 +3,7 @@
> > >   * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2007.
> > >   */
> > >
> > > +#include <linux/bits.h>
> >
> > Not a UAPI header not that that would be much better as dtc also builds on Mac.
> >
> > >  #include "dtc.h"
> > >  #include "srcpos.h"
> > >
> > > @@ -17,6 +18,9 @@
> > >  #define TRACE(c, fmt, ...)     do { } while (0)
> > >  #endif
> > >
> > > +#define I2C_TEN_BIT_ADDRESS    BIT(31)
> > > +#define I2C_OWN_SLAVE_ADDRESS  BIT(30)
> > > +
> > >  enum checkstatus {
> > >         UNCHECKED = 0,
> > >         PREREQ,
> > > @@ -1048,6 +1052,7 @@ static void check_i2c_bus_reg(struct check *c, struct dt_info *dti, struct node
> > >
> > >         for (len = prop->val.len; len > 0; len -= 4) {
> > >                 reg = fdt32_to_cpu(*(cells++));
> > > +               reg &= ~(I2C_OWN_SLAVE_ADDRESS | I2C_TEN_BIT_ADDRESS);
> >
> > I'd just mask the top byte so we don't have to update on the next flag we add.
> Do you mean something like this, shown below ?
> reg &= 0xFFFF_FC000;

Hi Rob, waiting for your answer.

>
> >
> > Rob
