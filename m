Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20A927EF92
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2019 10:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404435AbfHBIpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Aug 2019 04:45:06 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:35572 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730872AbfHBIpG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Aug 2019 04:45:06 -0400
Received: by mail-wr1-f67.google.com with SMTP id y4so76317815wrm.2
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2019 01:45:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P+jk1970pY9Tz07THJAnnBEbeyWyv4x0zFvBHvZfrvo=;
        b=lRLSDKSEMlzZX0D37Kh13kdoYXGRjst4ctnS5FK3wKlvhoGmPTvbLxOIrpYgsjkCxA
         m9wnAkD/WoWdzUTYURdS4uguadURdSP2R/SDEL4B/MtxXKcy3QIRGpyLFTvHUa70l8Q6
         QXNdkwFG4QEZVMra4yCuugr/si2og5sm0wY7o4hT3EndGJdoLWKqdC6WKI7zew8ISC/z
         hUhIH5cqSaPAomIvKyILoFlxCjcD2c+d1ndy80ht2z4CP80cNDrPOASVTPHK7WxaNXsD
         Bu9mYpKkSfWb2GodPL8XE2uGPwcr3I0cEyxmr8R6idyX1ey6O1+dPQ9UWDf/9fiy7GQO
         TduQ==
X-Gm-Message-State: APjAAAUSMJ3odLqbjLdWMTl0GLkZSEOaxP8hBS2m89+StbCv878Pq9j4
        7VrIveMj0DGSGvw2BVmXTvfopBBEYNP8UaEI9m4=
X-Google-Smtp-Source: APXvYqxhPxJuRUFgOf1qq0GomvMbMHz3Ikb3LBP5oXnMUbU+rZDRpHvBrNeUiS/OpACZZqdY+8UqrXwet03T9EWOYK0=
X-Received: by 2002:adf:f08f:: with SMTP id n15mr59650796wro.213.1564735503476;
 Fri, 02 Aug 2019 01:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190731123741.13947-1-geert+renesas@glider.be>
 <342e5e38-f980-c849-c061-8dad42bc0850@gmail.com> <CAMuHMdWPvD_pSyJGp=kC0XmAChCK8R2X+exmpHT5eywJ5kQetA@mail.gmail.com>
 <88417bc8-3cd8-bb54-e487-8fa6b0b1f346@gmail.com>
In-Reply-To: <88417bc8-3cd8-bb54-e487-8fa6b0b1f346@gmail.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Fri, 2 Aug 2019 10:44:50 +0200
Message-ID: <CAMuHMdW5XmG-320uhAsqxC-oCq7POtZKOOE1V485nB5K1vzh8g@mail.gmail.com>
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

On Thu, Aug 1, 2019 at 9:55 PM Frank Rowand <frowand.list@gmail.com> wrote:
> On 8/1/19 5:13 AM, Geert Uytterhoeven wrote:
> > On Wed, Jul 31, 2019 at 10:30 PM Frank Rowand <frowand.list@gmail.com> wrote:
> >> On 7/31/19 5:37 AM, Geert Uytterhoeven wrote:
> >>> Add new -c/--color options, to enhance the diff output with color, and
> >>> improve the user's experience.
> >>>
> >>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >>> ---
> >>>  scripts/dtc/dtx_diff | 10 +++++++++-
> >>>  1 file changed, 9 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
> >>> index e9ad7834a22d9459..4e2c8617f69a333e 100755
> >>> --- a/scripts/dtc/dtx_diff
> >>> +++ b/scripts/dtc/dtx_diff
> >>> @@ -20,6 +20,8 @@ Usage:
> >>>
> >>>
> >>>        --annotate    synonym for -T
> >>> +      --color       synonym for -c
> >>> +       -c           enable colored output
> >>>         -f           print full dts in diff (--unified=99999)
> >>>         -h           synonym for --help
> >>>         -help        synonym for --help
> >
> >> I like the idea, but...
> >>
> >> I have various linux distro releases across my many systems, but only one is
> >> new enough to have the diff command that supports --color.
> >
> > Seems to have been added in diffutils release 3.4 (2016-08-08).
> > I almost can't believe it was that recent, but then I remembered using a
> > wrapper before (colordiff; other wrappers may exist).
> >
> >> Can you enhance this patch to test whether --color is supported?  Maybe
> >> something like (untested):
> >>
> >>         -c | --color )
> >>                 if `diff --color <(echo a) <(echo a) 2>/dev/null` ; then
> >>                         diff_color="--color=always"
> >>                 fi
> >>                 shift
> >>                 ;;
> >>
> >> Then add some text to the usage for -c and --color saying that they will
> >> be silently ignored if diff does not support --color.
> >>
> >> I first wrote up a suggested version that printed an error message and
> >> exited, but I think silently ignoring is more robust, even though it
> >> may be more confusing to someone who is wondering why --color does not
> >> work.
> >
> > Given this is an optional feature, to be enabled explicitly by the user,
> > I'm not so fond of going through hoops to auto-detect the availability.
> >
> > So what about just documenting this in the help text instead?
> >
> > -      -c           enable colored output
> > +      -c           enable colored output (requires diff with --color support)
>
> -----  thought 1  -----
>
> My first thought was:
>
> If the hoops were complex and ugly, I might agree with you.  But since it is
> a simple one line "if" (two lines including "fi") I prefer the check.
>
> The help text update looks good to me, along with the check.

OK.

> -----  thought 2  -----
>
> Then I reconsidered, and thought "well, Geert has a good idea".  So I
> decided to see how useful the diff error message would be.  The message is:
>
>    $ scripts/dtc/dtx_diff -c a.dts b.dts
>    diff: unrecognized option '--color=always'
>    diff: Try 'diff --help' for more information.
>    $
>    Possible hints to resolve the above error:
>      (hints might not fix the problem)
>
>      No hints available.
>
> It is interesting that the shell prompt arrives before the full set of
> messages from the script, but that is not my issue.  My issue is that

That is due to the output coming from the two "<(compile_to_dts ...)"
sub-processes, not from the diff sub-process.

> when the diff fails, the script tries to find suggestions to solve
> the problem.  (The suggestions exist to catch some likely problems
> with the shell variable "ARCH".)

Interesting. I didn't know about the hints (never saw them), and had to
try hard to trigger them (I usually do DTB comparisons only).
But I succeeded ;-)
With a small tweak as my diff does support --color:

    $ scripts/dtc/dtx_diff -c
arch/arm64/boot/dts/renesas/r8a7799*{ebisu,draak}.dts
    diff: unrecognized option '--olor=always'
    diff: Try 'diff --help' for more information.
    $
    Possible hints to resolve the above error:
      (hints might not fix the problem)

      shell variable $ARCH not set

      architecture arm64 is in file path,
      but does not match shell variable $ARCH
      >>$ARCH<< is: >><<


    Possible hints to resolve the above error:
      (hints might not fix the problem)

      shell variable $ARCH not set

      architecture arm64 is in file path,
      but does not match shell variable $ARCH
      >>$ARCH<< is: >><<

> Unfortunately in the case of the "--color" problem, the useful warning
> from diff becomes less visible because of the early prompt and the
> not so helpful messages about hints.

Yeah, they are not so helpful.
In fact $ARCH is indeed not set, but that's not an issue at all.

> If the hints related messages were not present, then I was ready to
> accept that the diff warning was sufficient.  But since the hints
> messages are present, and hiding them would be more complex than
> the original check that I suggested for whether diff supports
> the --color option, I am back to my first thought: I prefer the
> check whether diff supports "--color" is done when dtx_diff detects
> the "--color" option.

OK, you managed to convince me. Will fix.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
