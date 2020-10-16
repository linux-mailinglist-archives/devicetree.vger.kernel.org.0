Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC6828FEFA
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 09:14:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404394AbgJPHOY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 03:14:24 -0400
Received: from condef-02.nifty.com ([202.248.20.67]:58288 "EHLO
        condef-02.nifty.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404342AbgJPHOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Oct 2020 03:14:24 -0400
X-Greylist: delayed 312 seconds by postgrey-1.27 at vger.kernel.org; Fri, 16 Oct 2020 03:14:23 EDT
Received: from conssluserg-03.nifty.com ([10.126.8.82])by condef-02.nifty.com with ESMTP id 09G763o0030791
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 16:06:03 +0900
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169]) (authenticated)
        by conssluserg-03.nifty.com with ESMTP id 09G75WHJ016733
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 16:05:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 09G75WHJ016733
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
        s=dec2015msa; t=1602831932;
        bh=dG0f+TwCD1vbe7G8UanNkY4V18niXbA9gia/8RMrIsA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=AUENoenkHj4Suaq0VbQpEP2QyYxwyWLSIJoaDpwnThO5mUVKF5+GVBPiAF7/mgxwB
         6yyWln7uxi+HFVtqZAAGJYudQpJK9bQ71EMhmYoBlsbjsWbUOfMqHshHEP94E1YoJw
         FNN1s6mpgnsVwnq7FDqmqdKURpAfH72xnaFW4xVC5kkPug9EqJm5zhvESQ7Fzfi+UH
         a1cSDzXLkSXioa48y2BSadk12Uqy9BRSAcVLTUbdVIDN/+PGKr7e5OTQZ2zJE0/Mcp
         LzTAoUEpbYhShm52quoHJ1U8H4xYtJTUqtlwrdHmhbIbRu1C0udaJaYic50N0Cs+Dp
         D6GaVJPOnU5sA==
X-Nifty-SrcIP: [209.85.210.169]
Received: by mail-pf1-f169.google.com with SMTP id 10so942199pfp.5
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 00:05:32 -0700 (PDT)
X-Gm-Message-State: AOAM530I2qAkp8iLCJlOIgekGsj7H/pak3UsW7S7irN05BymIs+Ruxqu
        gU9zEEwYmIJUFSd4FaA2L4tFbL+nzDgywm2aXN4=
X-Google-Smtp-Source: ABdhPJwyBJAYvtU46cnqS8YxlvZwP4ys9dWz4kKV/t1V0Dagw7WOQxfWjpHAGFrIQGq68lZ31Sk/hDmp2T4sD1uu+jI=
X-Received: by 2002:aa7:90cf:0:b029:156:2bff:5a87 with SMTP id
 k15-20020aa790cf0000b02901562bff5a87mr2368246pfk.63.1602831931449; Fri, 16
 Oct 2020 00:05:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de> <20200919143922.22793-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20200919143922.22793-1-u.kleine-koenig@pengutronix.de>
From:   Masahiro Yamada <masahiroy@kernel.org>
Date:   Fri, 16 Oct 2020 16:04:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT5f6RxFjOTOm8RvzZ3N2-48fr5e7wVoiE9hVeMBLSKBA@mail.gmail.com>
Message-ID: <CAK7LNAT5f6RxFjOTOm8RvzZ3N2-48fr5e7wVoiE9hVeMBLSKBA@mail.gmail.com>
Subject: Re: [PATCH] scripts/dtc: only append to HOST_EXTRACFLAGS instead of overwriting
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 19, 2020 at 11:39 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> When building with
>
>         $ HOST_EXTRACFLAGS=3D-g make


I do not think this is the intended usage
of HOST_EXTRACFLAGS.




Documentation/kbuild/kbuild.rst lists the user-interface,
and it clearly says HOSTCFLAGS is the one.


    HOSTCFLAGS
    ----------
    Additional flags to be passed to $(HOSTCC) when building host programs.








> the expectation is that host tools are built with debug informations.
> This however doesn't happen if the Makefile assigns a new value to the
> HOST_EXTRACFLAGS instead of appending to it. So use +=3D instead of :=3D =
for
> the first assignment.
>
> Fixes: e3fd9b5384f3 ("scripts/dtc: consolidate include path options in Ma=
kefile")
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
>
> this is a resend as I failed to add the devicetree mailing list to Cc
> for the first mail :-\ Thanks to Rob for reminding me. Those who got
> this mail twice and want to reply please make sure you reply to the
> right (i.e. this) mail.
>
> The patch is the same as my earlier patch "scripts/dtc: Don't overwrite
> HOST_EXTRACFLAGS passed on command line" but here the commit log is not
> wrong.
>
> Thanks and sorry,
> Uwe
>
>  scripts/dtc/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
> index a698ece43fff..4852bf44e913 100644
> --- a/scripts/dtc/Makefile
> +++ b/scripts/dtc/Makefile
> @@ -9,7 +9,7 @@ dtc-objs        :=3D dtc.o flattree.o fstree.o data.o liv=
etree.o treesource.o \
>  dtc-objs       +=3D dtc-lexer.lex.o dtc-parser.tab.o
>
>  # Source files need to get at the userspace version of libfdt_env.h to c=
ompile
> -HOST_EXTRACFLAGS :=3D -I $(srctree)/$(src)/libfdt
> +HOST_EXTRACFLAGS +=3D -I $(srctree)/$(src)/libfdt
>
>  ifeq ($(shell pkg-config --exists yaml-0.1 2>/dev/null && echo yes),)
>  ifneq ($(CHECK_DT_BINDING)$(CHECK_DTBS),)
> --
> 2.28.0
>


--=20
Best Regards
Masahiro Yamada
