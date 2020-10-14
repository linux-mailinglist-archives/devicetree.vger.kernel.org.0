Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 206E228DB12
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 10:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729099AbgJNITv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 04:19:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729205AbgJNITn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 04:19:43 -0400
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1538EC05112E
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 01:01:50 -0700 (PDT)
Received: by mail-vs1-xe42.google.com with SMTP id s15so1604687vsm.0
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 01:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3SO3tpo8g36O18u0oTsmNryoKX09AzBl8HzOfu6KgoA=;
        b=DbYbBgZ8S2slO0gKKAwBS1h5tPnC5UOqXpXpJWvJJXORH1syj5Gj4P4kZp4lEtfqvk
         s3VZU45qRfiV88urjqeoUW6VgzhxZs4IFKz1TjSK0mq5+cKW3yFnXPx+k5bGLWHul2yb
         KfWLbpznyIO1QloLKpl3nVaEGUsFxYa5JTRY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3SO3tpo8g36O18u0oTsmNryoKX09AzBl8HzOfu6KgoA=;
        b=RfAboYpfV14rB/AktLdV8h1s2GvryUwTXM/6QAfbc7c+C5V/xxoEUeBa6NstBS7Y7b
         LtwRrAa/Z9GIA9z+McVs8WdGuNit8LZIyFEbsiWo0IxhPhLdOrpCoigVhe+PQHvxwIgW
         m5RGNmr9gnfKSOM7LboWFtad2I1qsRDsJWoAzrnr9z62yKe+v5JAW8JSF1zygOl3JblG
         3IbBtpchy1+s460IRIqf3daMwoN7WVF1K9no7iBnrPd9zZYkSjP6WH8yeZq+NelkGUeC
         3LVhIerDox4sKNTCUGW+ZB/ppqsFTAXj7GMzZOY6DvQNw96gzh7+vNevltLcQDFDjkgh
         3JCA==
X-Gm-Message-State: AOAM531bgLJNBPFz81WZYDm+30KFKer8rtcM8RJ1TvV3u2GkY3gM5AxH
        11jk6/Tk9ZW55LsArJRi9SHdE509MYAH0B9UQ2NEfw==
X-Google-Smtp-Source: ABdhPJy4vPRWpqm/Lif01f+pNzCo9hDq0DItgcGHT0TGikh9kiap2X7FLHy31dzvgFI2Ge6IgyErPNRyNZXr1kxDxFs=
X-Received: by 2002:a67:7d93:: with SMTP id y141mr2580312vsc.21.1602662509278;
 Wed, 14 Oct 2020 01:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <20201012124547.16649-1-wenbin.mei@mediatek.com>
 <20201012124547.16649-5-wenbin.mei@mediatek.com> <72ae1d89-fe31-4f50-15c0-29119d662ea1@gmail.com>
 <1602642530.11864.3.camel@mhfsdcap03> <CANMq1KBe9u25yDxg8UtmOX4vhr8De=5-pJyMRkSBF4O=FpBN9A@mail.gmail.com>
 <8bcc800b-fa1a-a42c-9fb7-a7546e889694@gmail.com>
In-Reply-To: <8bcc800b-fa1a-a42c-9fb7-a7546e889694@gmail.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Wed, 14 Oct 2020 16:01:38 +0800
Message-ID: <CANMq1KAnG5Z=GZBqUhz9FdWx9-bSkUs3FgZnURjvzeHTrpTWGw@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] mmc: mediatek: Add subsys clock control for MT8192 msdc
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Wenbin Mei <wenbin.mei@mediatek.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        linux-mmc@vger.kernel.org,
        Devicetree List <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 14, 2020 at 3:44 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 14/10/2020 05:06, Nicolas Boichat wrote:
> > On Wed, Oct 14, 2020 at 10:29 AM Wenbin Mei <wenbin.mei@mediatek.com> wrote:
> >>
> >> On Tue, 2020-10-13 at 17:10 +0200, Matthias Brugger wrote:
> >>>
> >>> On 12/10/2020 14:45, Wenbin Mei wrote:
> >>>> MT8192 msdc is an independent sub system, we need control more bus
> >>>> clocks for it.
> >>>> Add support for the additional subsys clocks to allow it to be
> >>>> configured appropriately.
> >>>>
> >>>> Signed-off-by: Wenbin Mei <wenbin.mei@mediatek.com>
[...]
> >>>> +   host->bulk_clks[0].id = "pclk_cg";
> >>>> +   host->bulk_clks[1].id = "axi_cg";
> >>>> +   host->bulk_clks[2].id = "ahb_cg";
> >>>
> >>> That looks at least suspicious. The pointers of id point to some strings defined
> >>> in the function. Aren't they out of scope once msdc_of_clock_parse() has returned?
> >>>
> >> These constants are not in stack range, so they will not be lost.
> >> And I have confirmed it after msdc_of_clock_parse() has returned, these
> >> ids still exist.
> >
> > Yes I guess the constants end up in .rodata (or similar section), but
> > I'm not sure if this is absolutely guaranteed.
> >
> > In any case, this is a commonly used pattern, so I'd hope it's fine
> > (just a sample, there are more):
> > https://elixir.bootlin.com/linux/latest/source/drivers/pci/controller/dwc/pcie-qcom.c#L266
> > https://elixir.bootlin.com/linux/latest/source/sound/soc/codecs/wm8994.c#L4638
> > https://elixir.bootlin.com/linux/latest/source/drivers/mfd/madera-core.c#L467
> > https://elixir.bootlin.com/linux/latest/source/drivers/gpio/gpio-dwapb.c#L675
> >
>
> Alright, then this looks good, sorry for the noise!

To close this in more satisfying way, I asked internally, and +Pi-Hsun
Shih digged out this answer:
"""
C11 standard 6.4.5 String literals says: "The multibyte character
sequence is then used to initialize an array of >>static storage
duration<< and length just sufficient to contain the sequence"
"""

> Matthias
