Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C9142DF43D
	for <lists+devicetree@lfdr.de>; Sun, 20 Dec 2020 07:43:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726992AbgLTGnc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Dec 2020 01:43:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727004AbgLTGnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Dec 2020 01:43:32 -0500
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2614C061282
        for <devicetree@vger.kernel.org>; Sat, 19 Dec 2020 22:42:51 -0800 (PST)
Received: by mail-qv1-xf2e.google.com with SMTP id bd6so3075136qvb.9
        for <devicetree@vger.kernel.org>; Sat, 19 Dec 2020 22:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WguVvw/vtMSeOUQpG1ZOK8abIBiR79EnZH6HCETFfGI=;
        b=eAT7+oYosAS3VOmoH7hn64EGWYoMXlX0zHF2zzWWeKCeSdme+pwbiusT3KTNb/jD0k
         93jONKiABvjA0dPcuLUBvcc6JgWRxqqcLg63Jpfuw+QIg5jz6X3Im/vVXlMqSwIpT/cc
         vmYIFWgt4bgvXIyDLBNf6b4VkgsZP3jzGZOBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WguVvw/vtMSeOUQpG1ZOK8abIBiR79EnZH6HCETFfGI=;
        b=skGB1UQAYPQVR0XE+DdCIh5wv3zhPJx3b1JAbmQeL7pkkJJmgy3OAU4sNP6RLQUStQ
         a45RkQXkfT75RQ/i4u//ccsvchED7AmO2z6Oco85QCBdn5Y6XbPaYH0Q6eqsu5LCd8qE
         Fs6RTCc79kKux6N0seh9Q9bzD071RotN9k/qBZTP3hz4munFXF7JBjPrGJu5uhsoqqsE
         ut2WKgtMf2XzwTkgpNeyDAKmqoSQ2sdGY7V5KYaFcuvVTT408yxfV5oOFkglvNGDuO4u
         jcHJQESYFQROkpsqpKcEyk6pdR180sF6ujL2XGMDREG11ZPUQwqK2fq2rUlcWZsS+7X9
         qY4Q==
X-Gm-Message-State: AOAM533X0lOFIqbWTkN6gMZR2HCyQABeO0Zpo1PmqIURWoiTB/i3mnmY
        qTb0yi+pmqqNUBJ+f56yP1mII8cV6Z1/d7oQqBVrWA==
X-Google-Smtp-Source: ABdhPJxjlAMSsP/Y/ZWXurDseNeDAb6c/quzmV0MWCHgCUexOBRdyUd0oTVwR7Al3n/h86HzMixJBzBgBN8sqeySa7E=
X-Received: by 2002:a05:6214:140d:: with SMTP id n13mr12306172qvx.45.1608446570717;
 Sat, 19 Dec 2020 22:42:50 -0800 (PST)
MIME-Version: 1.0
References: <20201114135044.724385-1-daniel@0x0f.com> <20201114135044.724385-4-daniel@0x0f.com>
 <160843899675.1580929.13271525932327387602@swboyd.mtv.corp.google.com>
In-Reply-To: <160843899675.1580929.13271525932327387602@swboyd.mtv.corp.google.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sun, 20 Dec 2020 15:42:40 +0900
Message-ID: <CAFr9PXmAe9o5KtTG58twpumWi3A=7YfsM7b7pOwRTk1f=jCKQQ@mail.gmail.com>
Subject: Re: [PATCH 3/6] clk: mstar: MStar/SigmaStar MPLL driver
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     DTML <devicetree@vger.kernel.org>, linux-clk@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stephen,

On Sun, 20 Dec 2020 at 13:36, Stephen Boyd <sboyd@kernel.org> wrote:
> > diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> > index da8fcf147eb1..b758aae17ab8 100644
> > --- a/drivers/clk/Makefile
> > +++ b/drivers/clk/Makefile
> > @@ -124,3 +124,4 @@ endif
> >  obj-$(CONFIG_ARCH_ZX)                  += zte/
> >  obj-$(CONFIG_ARCH_ZYNQ)                        += zynq/
> >  obj-$(CONFIG_COMMON_CLK_ZYNQMP)         += zynqmp/
> > +obj-$(CONFIG_ARCH_MSTARV7)             += mstar/
>
> This is in the wrong place. It looks to be sorted based on the path
> name, so mstar/ comes much earlier in this file.

Noted. I'll fix this.

> > +
> > +#include <linux/platform_device.h>
> > +#include <linux/of.h>
> > +#include <linux/clk-provider.h>
> > +#include <linux/clkdev.h>
>
> Please remove unused includes
>
> > +#include <linux/of_address.h>
> > +#include <linux/module.h>
>
> Isn't it builtin? This include should be removed.

Yes. Sorry it was originally a module and there are some leftovers I
didn't clean up when I changed it to builtin.

> > +#define to_mpll(_hw) container_of(_hw, struct msc313_mpll, clk_hw)
> > +#define to_divider_hw(_mpll, _which) _mpll->clk_data->hws[_which + 1]
>
> I'd rather not have this macro. It's confusing given that to_foo()
> macros are usually a container_of() invocation. Given that it's only
> used in the registration/unregistration loops please inline it and use a
> local variable.
>

Ok I'll rework that.

> > +
> > +static int msc313_mpll_remove(struct platform_device *pdev)
> > +{
> > +       struct msc313_mpll *mpll = platform_get_drvdata(pdev);
> > +       int i;
> > +
> > +       for (i = 0; i < ARRAY_SIZE(output_dividers); i++)
> > +               clk_hw_unregister_fixed_factor(to_divider_hw(mpll, i));
>
> Maybe add a devm_ for this if it doesn't exist.

I did think about adding this. Would I need to do that in a separate
series or would it be ok to roll it into this one?

Thanks,

Daniel
