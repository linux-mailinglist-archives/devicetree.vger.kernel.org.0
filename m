Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1619D326206
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 12:32:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230292AbhBZLcb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 06:32:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbhBZLca (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 06:32:30 -0500
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6CCCC061786
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 03:31:44 -0800 (PST)
Received: by mail-qk1-x72e.google.com with SMTP id w19so8635593qki.13
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 03:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mtwGzwmXCwfuekrnY8Xp3zryCjWTaKAtQqWeYvJYHDI=;
        b=IpZdAGjjww2yK7Jevu2iUTH/1ORVnE1GP45V0gbBup5kNdvj7KGTGT20s2j0a5PZtW
         S+3HhSFd8XgHpdGE86R3GFavD+1+IKlCzk9xxeylY6NBEkcZWF0T3xfwrAY3/GhCmPak
         rN81Nja34w7f+LeSBMWGiVaoDguZpdo84SOQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mtwGzwmXCwfuekrnY8Xp3zryCjWTaKAtQqWeYvJYHDI=;
        b=AEZhGGxuebeqtpczeGMQsiLUSIia64J7eBUUFU0ECPzCcVTUhF9BoC22TBuiboYqQj
         2bo1qWRgRR07HKbi1qVb2HReOT2TZw6W9xlM6GJ0Hp7rCmBLpE+tgNjREG8cOcpfe3vE
         S6vsS+e+6lySsbdL2k4QaAgIGEbseDvKXQ3O/nlvSr6E+Xh7dxX9/KwfcMf+4mW67YRi
         3WGtCRpORBPtX1rcoohwXnIM7GhtYx6BAkbjEitiJx3cRO6cNbjHcuEIHwNtSgU8JaCA
         gxSAmlbjG1DF1irmurAXQazfOOKSTcWA4nSJLCgZEKZOBapSJyOWqGKqj7cvQPlNZ0V/
         /XtA==
X-Gm-Message-State: AOAM531xuNLh/cS1+bRJxAR+2nudRK06GBBwsD5p1XG1Xv1TKQl/oZCq
        n7Q3WnWdyZE3YtMopH4uH5zCbYcRVO/U5SMpoZX2wA==
X-Google-Smtp-Source: ABdhPJwnjTvOEGoaSYCM1w3lr13lrnyZmgopzVsHcWgIw+GBGh/ABGQCJHdvC5AWt09QvIxIIAVagq49zfIZLAi2Qh4=
X-Received: by 2002:a37:ef09:: with SMTP id j9mr659750qkk.390.1614339103306;
 Fri, 26 Feb 2021 03:31:43 -0800 (PST)
MIME-Version: 1.0
References: <20210223061830.1913700-1-daniel@0x0f.com> <20210223061830.1913700-2-daniel@0x0f.com>
 <1614108850.540354.4116103.nullmailer@robh.at.kernel.org>
In-Reply-To: <1614108850.540354.4116103.nullmailer@robh.at.kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Fri, 26 Feb 2021 20:31:32 +0900
Message-ID: <CAFr9PX=h2JPdAwjYS2849ufH=wnxSti2Dj60fbq4bg8b8=xy_g@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: clk: mstar msc313 cpupll binding description
To:     Rob Herring <robh@kernel.org>
Cc:     SoC Team <soc@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Willy Tarreau <w@1wt.eu>, linux-clk@vger.kernel.org,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob's bot

On Wed, 24 Feb 2021 at 04:34, Rob Herring <robh@kernel.org> wrote:
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.example.dts:19:18: fatal error: dt-bindings/clock/mstar-msc313-mpll.h: No such file or directory
>    19 |         #include <dt-bindings/clock/mstar-msc313-mpll.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.lib:344: Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1370: dt_binding_check] Error 2

Looks like I sent this too early. I will try again later.

Thanks,

Daniel
