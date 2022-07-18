Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24CF8577EF2
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 11:49:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234252AbiGRJt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 05:49:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233917AbiGRJtZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 05:49:25 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A69826362
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 02:49:23 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-31c89653790so100699617b3.13
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 02:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SW/5uuPhfEIiVcFOfH8vJMrT6q6SXd8wiWSNhlWVZXE=;
        b=yzDwRyaJYFlLD4KeR1jik570FoO+psDVavgR6382KBUsTWFF27tRs7D/1LwT+HWJjT
         mDwjVM11MqgWhebI3orsvkCbbf2YP1wtIhQzDKUjD5BSOOBjO5AIHhhORzCbJMC7BiYS
         gbgcKcBOUcarwDFW48tUxVcfkQKjoOJDB4GlHkG3YVk4r20YIfiF+bOuFKVS0k+Fc4Wc
         o3b0kT/hRM1PkrLNjtK22jrtMiF50msOUsJ2ckaOm0IQH+kug8RmFM2Bsnuyh6PuUCw+
         4kkK2pxWY0/C9h0kC3MTVzzTBzR1x/BmWQVDfIzgnkAYK/WbhpBlOiG6ouABV4qkL/zZ
         RE4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SW/5uuPhfEIiVcFOfH8vJMrT6q6SXd8wiWSNhlWVZXE=;
        b=fHzM4uEjWDMfLmD2ILkVB+i3RkZ0ML3OpkoLR7Ns380+gBxU5SdiVZdhvg6Ax1WFuW
         LdxexpG0kKYyBYdZyGkwncNoJtj53pPolY2M0CLvP61s8wZtklDFH7FdKw30+b3YU0zU
         DLgd2Qi+l9kNRsYX9aLmgHRiXKzHrZoD0nQGhaZf0uQNPJZDqCXKduA5WeyGMBYW45LW
         VN8/6KMKsbUfGgBFLSGCB6CGJfOav0Kb0j1wRF6x3tj43gNYoAJ/de+bx5BmZKZpDmOp
         lBV3p0ITE7lCJ0Mxvt9o1v2FQdXzQ6PPBiWTRu7jwZ/XRkygDjFp130s07xFAzAOFFxt
         UH9A==
X-Gm-Message-State: AJIora8XZrWlbwRemS9XbyfvklOvWq69qsR0pfY8BHwyD2UBy1aWLxhT
        5ypOP9PGfDdbCo7xXwRFxJqZ+EAgzZqGdLXYlcAkJg==
X-Google-Smtp-Source: AGRyM1tzM5DcCUNp7Icsn2kKwLcC6+vNcmEZtwfuGcBZ0rm5Uh1mv4sFBP8itRqheGt0Ud9IOxM3/h2NPr9YzaYmmsA=
X-Received: by 2002:a0d:e885:0:b0:31c:e456:c054 with SMTP id
 r127-20020a0de885000000b0031ce456c054mr29022869ywe.299.1658137762876; Mon, 18
 Jul 2022 02:49:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220609150851.23084-1-max.oss.09@gmail.com> <CACRpkdZ0=8poNcFaCYSmMyg1GBfkHLAr3QvvzFKweLPr3UM2vg@mail.gmail.com>
 <CAEHkU3Wya0nRhaBDisAQBm5kf=2YcdJYzz2jKiL___mZQzL_Sw@mail.gmail.com> <CAPDyKFrEYCx3L94gz27Pk_=HdwA4GNGE9Lvz+HGUW0P7Qt-mBw@mail.gmail.com>
In-Reply-To: <CAPDyKFrEYCx3L94gz27Pk_=HdwA4GNGE9Lvz+HGUW0P7Qt-mBw@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jul 2022 11:49:11 +0200
Message-ID: <CACRpkdb4qZSUNhEjRRJi=5H-GvBi_h-0BAfDHJct5SjLKZSc3g@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] power: domain: Add driver for a PM domain provider
 which controls
To:     Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Max Krummenacher <max.oss.09@gmail.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        Linux PM list <linux-pm@vger.kernel.org>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Mark Brown <broonie@kernel.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Kevin Hilman <khilman@kernel.org>,
        Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Will Deacon <will@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 13, 2022 at 1:44 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:

> > > IIRC this led to problems because we had to invent "atomic regulators"
> > > because regulators use kernel abstractions that assume slowpath
> > > (process context) and power domains does not, i.e. they execute in
> > > fastpath, such as an interrupt handler.
>
> This isn't entirely correct. The callbacks of a genpd, *may* execute
> in atomic context, but that depends on whether the GENPD_FLAG_IRQ_SAFE
> is set for it or not.
>
> Similar to what we have for runtime PM callbacks, with pm_runtime_irq_safe().

Aha I stand corrected!

> > > The atomic regulator was a subset of regulator that only handled
> > > regulators that would result in something like an atomic register write.
> > >
> > > In the end it was not worth trying to upstream this approach, and
> > > as I remember it, Ulf Hansson intended to let the power domains poke
> > > these registers directly, which was easier. (It's on Ulfs TODO list to
> > > actually implement this, hehe.)
>
> Yep, unfortunately I never got to the point. However, poking the
> registers directly from the genpd provider's on/off callbacks has
> never been my plan.
>
> Instead I would rather expect us to call into a Ux500 specific
> interface for the prcmu FW. Simply because it's not really a regulator
> and must not be modelled like it. Instead it is a voltage/frequency
> domain that is managed behind a FW interface.

We should take a stab at this, PostmarketOS just added support
for three more U8500 phones so they support all the Samsung models
and we have actual users of these systems. I think this would save
them quite a lot of power. Also I use these targets for a lot of
misc testing (like Kasan etc).

Yours,
Linus Walleij
