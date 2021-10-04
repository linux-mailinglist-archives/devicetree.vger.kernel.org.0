Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EE4B42047C
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 02:03:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231906AbhJDAFR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 20:05:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231869AbhJDAFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Oct 2021 20:05:16 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AA70C0613EC
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 17:03:28 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id b8so23458241edk.2
        for <devicetree@vger.kernel.org>; Sun, 03 Oct 2021 17:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oWp+b0cz00+xHbtjuoR2cxfx+kRTKo1Je6kgULZI1p0=;
        b=evsQ2cq2rq2+GMoCWUwQ6cCznscClELAbcO113SbKwYbQqr7fOkzltg4fsDXQcYJmB
         WTtEm5XWpUTk69qVKOkNr7o1GJFdbvzJ2Px+Pih8YNLAjCqh7ysKiSzztDHgP6EOvaih
         3NI/dGX4O3CKqwJjWUrQII7qkdileiAB/kIPUrw/9JbPYwKfhk/ziqyjt5PXhQdDi879
         SOkZKANQS4IzD6cAj/rmK4RBexqkvXEXj7hO/h87DHjXks1RjwklmWJZLkYLLDNA+SeK
         fgFY9JUflIPk8xr17sZbeIjxAGveTsfPDycSDBBu3NlBSMeyWfGYOLGzBO28RyzVfad9
         T6Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oWp+b0cz00+xHbtjuoR2cxfx+kRTKo1Je6kgULZI1p0=;
        b=SCefY+JreJERVvrpS6/eUowRFuxSfboUQv1qGi0VmEycVlsN1lBm+H3/1U8ORN2kiN
         AL+f1LeYymMhCv9+qvkKDnKJYh8VwknypfA5hqfgxOlLw3vca8QygDAjNEmc5sgwq/KM
         mc4f7JK+g2O8RIRfluDQur2TLLUC2cn31gG23g0KttO2gRojW8KGCAlvubiwsEiDOlpJ
         50TdyoPaFWJam1vFvuV0kERvzWpwNxCfPHUMccXyu4JmEJTxegkocEppvvk5TCzJk4ox
         PT1LtJPxn5yBIKOI4dWtvcBkXNBf/60sm8HT7AE4djN3mZFeMCfpP5vuZeYryiit74/d
         Ymyg==
X-Gm-Message-State: AOAM530aKXJQIUBcjcS/tdd6mUrLGAlTF2VIkwRSgMrZ9oaLo5iySB/3
        Nain1sxX2qiuDn/CI7JhwvylP3uDxEKO+hReSUc=
X-Google-Smtp-Source: ABdhPJwy14qgMqIYE6AU3mH1Ip2Y7pH+Oy1Njew3XOULImshjGP675VbrNVTpKR57bPj8STVU2j/HZ7NqaJTFrcnFQ8=
X-Received: by 2002:a17:907:2bdf:: with SMTP id gv31mr4048512ejc.521.1633305806034;
 Sun, 03 Oct 2021 17:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <20211002005954.1367653-1-l.stach@pengutronix.de>
 <20211002005954.1367653-2-l.stach@pengutronix.de> <CAHCN7x+GgH5Lu-2jmVy6tcnB08Wn1=naePWEVMJ+HzZE_k9q0Q@mail.gmail.com>
 <5bb6b455f2e055a7f99d79a9cc108a565b71bf0e.camel@pengutronix.de>
In-Reply-To: <5bb6b455f2e055a7f99d79a9cc108a565b71bf0e.camel@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Sun, 3 Oct 2021 19:03:15 -0500
Message-ID: <CAHCN7xJ1ztpH+aaT7Q5WJSUJfo1S9FQe7pVn1sLvy5O1z9kAyQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] Revert "soc: imx: gpcv2: move reset assert after
 requesting domain power up"
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>,
        devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 3, 2021 at 2:46 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Adam,
>
> Am Sonntag, dem 03.10.2021 um 05:43 -0500 schrieb Adam Ford:
> > On Fri, Oct 1, 2021 at 8:00 PM Lucas Stach <l.stach@pengutronix.de> wrote:
> > >
> > > This reverts commit a77ebdd9f553. It turns out that the VPU domain has no
> > > different requirements, even though the downstream ATF implementation seems
> > > to suggest otherwise. Powering on the domain with the reset asserted works
> > > fine. As the changed sequence has caused sporadic issues with the GPU
> > > domains, just revert the change to go back to the working sequence.
> > >
> > > Cc: <stable@vger.kernel.org> # 5.14
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > Acked-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> >
> > Lucas,
> >
> > I applied your series to the 5.14.y kernel to test with the
> > imx8mm-beacon board, but I found that it doesn't wake from sleep.
> > I'll experiment with other versions of ATF.  If nobody else has this
> > problem, I'll assume, it's an error on my part.
>
> I've tested this series on the i.MX8MM-EVK and a custom (not yet
> public) i.MX8MM board and both did work as expected with both system
> suspend/resume and runtime power management for the display parts. I've
> used the upstream TF-A release v2.5.

OK.  I have tested the USB otg1 and otg2 and they work. The etnativ
controllers enumerate, but without lcdif and dsim, it's not practical
to test.
If nobody else is having issues with suspend-resume, go ahead and mark this as:

Tested-by: Adam Ford <aford173@gmail.com> #imx8mm-beacon
>
> Regards,
> Lucas
>
> >
> > adam
> >
> > >  drivers/soc/imx/gpcv2.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> > > index 34a9ac1f2b9b..8b7a01773aec 100644
> > > --- a/drivers/soc/imx/gpcv2.c
> > > +++ b/drivers/soc/imx/gpcv2.c
> > > @@ -244,6 +244,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
> > >                 goto out_regulator_disable;
> > >         }
> > >
> > > +       reset_control_assert(domain->reset);
> > > +
> > >         if (domain->bits.pxx) {
> > >                 /* request the domain to power up */
> > >                 regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
> > > @@ -266,8 +268,6 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
> > >                                   GPC_PGC_CTRL_PCR);
> > >         }
> > >
> > > -       reset_control_assert(domain->reset);
> > > -
> > >         /* delay for reset to propagate */
> > >         udelay(5);
> > >
> > > --
> > > 2.30.2
> > >
>
>
