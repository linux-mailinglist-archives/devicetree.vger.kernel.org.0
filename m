Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6787E7DB16
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 14:14:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726739AbfHAMOF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 08:14:05 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:36294 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725790AbfHAMOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 08:14:05 -0400
Received: by mail-wr1-f67.google.com with SMTP id n4so73416683wrs.3
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 05:14:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zp/LDAkuFwJ/YFLRptApnClu3/c9qJzrJy+2Sl0cGG8=;
        b=EnC+6gOEVD7Iq2iql/6gaZ89NxDLCMmTVLXgLqFfKqsgOK9MW41ulLRrrZoE1ZxGzw
         MOGDGd3D2Dmq/dY354KWqLPh9UacbMko5jsOto4+7KOH3yauKCEJ45gIrTh5oi72bMUk
         UM3WkFnlP40zt8GArSg+Uvp0yXmeXrITc3LHY17Slv8kPzGPe4b1qvq0UqQZ3aoDR9/c
         B2ibQyxctAhsVNt4csBjcV63qqSV7PRz3KP16yjyLJrjuLkwmez1J4tvT/VXHPqV2cPZ
         fCmc5o6qjaeN7BZHKgu+ERZYZYoL99x/xrsNEjcQDQHazaCrovszVT9R9bMOE+gszBWe
         x08Q==
X-Gm-Message-State: APjAAAUe5aLolOYq1kGXn8S6ApDzgsczaWPVH6jzFNvim+dc/OxeSun7
        RpUUewxqa1V/zIqj3Pue21SZ/eaM0m/6ZIhvvhiS8KQM
X-Google-Smtp-Source: APXvYqz9v3s6j2s/GS68Im2ABjVzFIufo01H+pRebBommK4dRvq1xbpXaxHEcXQufFRqLVcwO9VkUslg9nh26NMUptM=
X-Received: by 2002:adf:cd81:: with SMTP id q1mr139202150wrj.16.1564661643027;
 Thu, 01 Aug 2019 05:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190731123741.13947-1-geert+renesas@glider.be> <342e5e38-f980-c849-c061-8dad42bc0850@gmail.com>
In-Reply-To: <342e5e38-f980-c849-c061-8dad42bc0850@gmail.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Thu, 1 Aug 2019 14:13:50 +0200
Message-ID: <CAMuHMdWPvD_pSyJGp=kC0XmAChCK8R2X+exmpHT5eywJ5kQetA@mail.gmail.com>
Subject: Re: [PATCH] scripts/dtc: dtx_diff - add color output support
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Frank,

On Wed, Jul 31, 2019 at 10:30 PM Frank Rowand <frowand.list@gmail.com> wrote:
> On 7/31/19 5:37 AM, Geert Uytterhoeven wrote:
> > Add new -c/--color options, to enhance the diff output with color, and
> > improve the user's experience.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  scripts/dtc/dtx_diff | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
> > index e9ad7834a22d9459..4e2c8617f69a333e 100755
> > --- a/scripts/dtc/dtx_diff
> > +++ b/scripts/dtc/dtx_diff
> > @@ -20,6 +20,8 @@ Usage:
> >
> >
> >        --annotate    synonym for -T
> > +      --color       synonym for -c
> > +       -c           enable colored output
> >         -f           print full dts in diff (--unified=99999)
> >         -h           synonym for --help
> >         -help        synonym for --help

> I like the idea, but...
>
> I have various linux distro releases across my many systems, but only one is
> new enough to have the diff command that supports --color.

Seems to have been added in diffutils release 3.4 (2016-08-08).
I almost can't believe it was that recent, but then I remembered using a
wrapper before (colordiff; other wrappers may exist).

> Can you enhance this patch to test whether --color is supported?  Maybe
> something like (untested):
>
>         -c | --color )
>                 if `diff --color <(echo a) <(echo a) 2>/dev/null` ; then
>                         diff_color="--color=always"
>                 fi
>                 shift
>                 ;;
>
> Then add some text to the usage for -c and --color saying that they will
> be silently ignored if diff does not support --color.
>
> I first wrote up a suggested version that printed an error message and
> exited, but I think silently ignoring is more robust, even though it
> may be more confusing to someone who is wondering why --color does not
> work.

Given this is an optional feature, to be enabled explicitly by the user,
I'm not so fond of going through hoops to auto-detect the availability.

So what about just documenting this in the help text instead?

-      -c           enable colored output
+      -c           enable colored output (requires diff with --color support)

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
