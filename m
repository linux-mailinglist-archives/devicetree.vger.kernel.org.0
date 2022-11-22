Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CF51633914
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 10:54:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232575AbiKVJy5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 04:54:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232554AbiKVJy4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 04:54:56 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38DFB19003
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 01:54:55 -0800 (PST)
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 387473F091
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1669110893;
        bh=HrNRI9fm8I0LThHGHUBPDlRXDYp2/ZQuA5vUnE2da2k=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=VnGmCSjPX5rUCt5pVJoklErwzHr1Vq/IByAQcVPHIecoGWnp0whIqOhGPebrkZ5Yh
         JV8VUjX0iYP0sDHnjf3qxk5RCrYYvkv1XuaWNK+XcFmR4NfYUo/aSHu413lroJj6bn
         z1j8csVPqrvWFwdRUdTOd0yHUlDoy6peb0W+3Bkurlsb5+If5NaUtOmhHUJCjJpeeW
         U5ttf4hWHfdgEOvcpWeW99TaAjjX/cYXG1gCpX7r791oShWPsZuKlXvibKY11rXrgZ
         pG9uYQWhmT79uudPzh4Sa3uyra/yQjRDOOtE7znPQFAPiKy+vcKLrZl5Uiz2ccKcRq
         QO8yXAGH4Zlcw==
Received: by mail-yb1-f199.google.com with SMTP id w127-20020a25df85000000b006e990dfd5b8so8585064ybg.1
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 01:54:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HrNRI9fm8I0LThHGHUBPDlRXDYp2/ZQuA5vUnE2da2k=;
        b=VHNixdjTorJVy4elAzaCy8jbzHc8WZkXD1LyNEydT28qA4FEIoKdg/iCuWmb3AKCPr
         ATg4mKtUUSUZ+IGpcuqbOGVZutR5sIsv9qWqbqmpBZFRTgnWCNHFRj8wHcoSvP1WumHM
         EH2SJYswLcxb/5fk+qTikU1dblnMDLd8Mt3Dwd9G515uCzKKkJWS1k6cB63lo89pA/Eq
         DQlGH4p3uV3fzlkf6yB7jWAd0Qg482qFl5x76Pz+fV6hbnYphw8h37nSt/iKU3+Qs358
         RSfbRXwLPYycqHd27zSp+eFuZl7UILa9Ha9wUgqkIk7aAJaHDR7yYL5x8tOD+qrGfNkF
         DJKg==
X-Gm-Message-State: ANoB5pkZ7Ry1iQEDhtEAotqY6JJ8e6nosT9UzQAsT6S5Y1K0IX2J1utE
        1dRimHeLnNkJUqJI6vVNwTntVwgyX2Z60MdcHp6AcTj/icRyBHLM+HOIpEi2oGdNKjo/jOYvd7U
        Vb2PIEujHJgdIkmCV6OZdlFBZD3LuTihycue8fUXeoOhz3kc590B79ow=
X-Received: by 2002:a05:690c:582:b0:391:fccf:db48 with SMTP id bo2-20020a05690c058200b00391fccfdb48mr20755484ywb.257.1669110891989;
        Tue, 22 Nov 2022 01:54:51 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6OK15UZBqnryc+w5BhbprE3eAfz63iGGiAiaXGRZC0tWbzgLL947UV8Nm6SDyTrSz6leyms8QhLAhqXN7lRyE=
X-Received: by 2002:a05:690c:582:b0:391:fccf:db48 with SMTP id
 bo2-20020a05690c058200b00391fccfdb48mr20755458ywb.257.1669110891749; Tue, 22
 Nov 2022 01:54:51 -0800 (PST)
MIME-Version: 1.0
References: <20221118011714.70877-1-hal.feng@starfivetech.com>
 <20221118011714.70877-6-hal.feng@starfivetech.com> <Y3dwdXExRRltyp8A@spud> <b4afb821-f899-a2b6-46e1-a31b5e3f974e@starfivetech.com>
In-Reply-To: <b4afb821-f899-a2b6-46e1-a31b5e3f974e@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Tue, 22 Nov 2022 10:54:34 +0100
Message-ID: <CAJM55Z_LqTNEoo7CF-zfwqbKPTXEjji7aeLLeEgcLnacZ0z1Og@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] soc: sifive: ccache: Add StarFive JH7110 support
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     Conor Dooley <conor@kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Ben Dooks <ben.dooks@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 22 Nov 2022 at 10:03, Hal Feng <hal.feng@starfivetech.com> wrote:
>
> On Fri, 18 Nov 2022 19:45:57 +0800, Conor Dooley wrote:
> > Hey Emil/Hal,
> >
> > On Fri, Nov 18, 2022 at 09:17:11AM +0800, Hal Feng wrote:
> > > From: Emil Renner Berthing <kernel@esmil.dk>
> > >
> > > This adds support for the StarFive JH7110 SoC which also
> > > features this SiFive cache controller.
> > >
> > > Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> > > Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> > > ---
> > >  arch/riscv/Kconfig.socs            | 1 +
> > >  drivers/soc/Makefile               | 2 +-
> > >  drivers/soc/sifive/Kconfig         | 2 +-
> > >  drivers/soc/sifive/sifive_ccache.c | 1 +
> > >  4 files changed, 4 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > > index 69774bb362d6..5a40e05f8cab 100644
> > > --- a/arch/riscv/Kconfig.socs
> > > +++ b/arch/riscv/Kconfig.socs
> > > @@ -22,6 +22,7 @@ config SOC_STARFIVE
> > >     bool "StarFive SoCs"
> > >     select PINCTRL
> > >     select RESET_CONTROLLER
> > > +   select SIFIVE_CCACHE
> >
> > Please no. I am trying to get rid of these selects + I cannot figure out
> > why this driver is so important that you *need* to select it. Surely the
> > SoC is useable without it>
> > Is this a hang over from your vendor tree that uses the driver to do
> > non-coherent stuff for the jh7100?
>
> I have tested that the board can successfully boot up without the cache
> driver. The `select` can be removed for JH7110. @Emil, what do you think
> of this?

Yes, for the JH7110 this is not strictly needed, just like the
Unmatched board. For the StarFive JH7100 it is though.
So if you're only adding support for the JH7110 then it's not needed.

> >
> > >     select SIFIVE_PLIC
> > >     help
> > >       This enables support for StarFive SoC platform hardware.
> > > diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> > > index 69ba6508cf2c..534669840858 100644
> > > --- a/drivers/soc/Makefile
> > > +++ b/drivers/soc/Makefile
> > > @@ -26,7 +26,7 @@ obj-y                             += qcom/
> > >  obj-y                              += renesas/
> > >  obj-y                              += rockchip/
> > >  obj-$(CONFIG_SOC_SAMSUNG)  += samsung/
> > > -obj-$(CONFIG_SOC_SIFIVE)   += sifive/
> > > +obj-y                              += sifive/
> >
> > This bit is fine.
> >
> > >  obj-y                              += sunxi/
> > >  obj-$(CONFIG_ARCH_TEGRA)   += tegra/
> > >  obj-y                              += ti/
> > > diff --git a/drivers/soc/sifive/Kconfig b/drivers/soc/sifive/Kconfig
> > > index ed4c571f8771..e86870be34c9 100644
> > > --- a/drivers/soc/sifive/Kconfig
> > > +++ b/drivers/soc/sifive/Kconfig
> > > @@ -1,6 +1,6 @@
> > >  # SPDX-License-Identifier: GPL-2.0
> > >
> > > -if SOC_SIFIVE
> > > +if SOC_SIFIVE || SOC_STARFIVE
> >
> > As I suppose is this - but hardly scalable. I suppose it doesn't really
> > matter.
> >
> > >  config SIFIVE_CCACHE
> > >     bool "Sifive Composable Cache controller"
> > > diff --git a/drivers/soc/sifive/sifive_ccache.c b/drivers/soc/sifive/sifive_ccache.c
> > > index 1c171150e878..9489d1a90fbc 100644
> > > --- a/drivers/soc/sifive/sifive_ccache.c
> > > +++ b/drivers/soc/sifive/sifive_ccache.c
> > > @@ -107,6 +107,7 @@ static const struct of_device_id sifive_ccache_ids[] = {
> > >     { .compatible = "sifive,fu540-c000-ccache" },
> > >     { .compatible = "sifive,fu740-c000-ccache" },
> > >     { .compatible = "sifive,ccache0" },
> > > +   { .compatible = "starfive,jh7110-ccache" },
> >
> > Per my second reply to the previous patch, I am not sure why you do not
> > just have a fallback compatible in the binding/dt for the fu740 ccache
> > since you appear to have identical configuration?
>
> Yeah, I will use the compatible of fu740 and modify this patch.

No, the JH7110 should not pretend to be a fu740, but if you add

compatible = "starfive,jh7110-ccache", "sifive,ccache0";

then this driver should still match "sifive,ccache0" without adding
the "starfive,jh7110-ccache" entry.

>
> Best regards,
> Hal
