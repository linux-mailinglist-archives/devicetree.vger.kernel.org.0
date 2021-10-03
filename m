Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A4764203CA
	for <lists+devicetree@lfdr.de>; Sun,  3 Oct 2021 21:46:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231558AbhJCTsc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 15:48:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231321AbhJCTsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Oct 2021 15:48:32 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CBD7C0613EC
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 12:46:44 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mX7RT-0007If-J1; Sun, 03 Oct 2021 21:46:35 +0200
Message-ID: <5bb6b455f2e055a7f99d79a9cc108a565b71bf0e.camel@pengutronix.de>
Subject: Re: [PATCH v5 01/18] Revert "soc: imx: gpcv2: move reset assert
 after requesting domain power up"
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Adam Ford <aford173@gmail.com>
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
Date:   Sun, 03 Oct 2021 21:46:34 +0200
In-Reply-To: <CAHCN7x+GgH5Lu-2jmVy6tcnB08Wn1=naePWEVMJ+HzZE_k9q0Q@mail.gmail.com>
References: <20211002005954.1367653-1-l.stach@pengutronix.de>
         <20211002005954.1367653-2-l.stach@pengutronix.de>
         <CAHCN7x+GgH5Lu-2jmVy6tcnB08Wn1=naePWEVMJ+HzZE_k9q0Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adam,

Am Sonntag, dem 03.10.2021 um 05:43 -0500 schrieb Adam Ford:
> On Fri, Oct 1, 2021 at 8:00 PM Lucas Stach <l.stach@pengutronix.de> wrote:
> > 
> > This reverts commit a77ebdd9f553. It turns out that the VPU domain has no
> > different requirements, even though the downstream ATF implementation seems
> > to suggest otherwise. Powering on the domain with the reset asserted works
> > fine. As the changed sequence has caused sporadic issues with the GPU
> > domains, just revert the change to go back to the working sequence.
> > 
> > Cc: <stable@vger.kernel.org> # 5.14
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > Acked-by: Peng Fan <peng.fan@nxp.com>
> > ---
> 
> Lucas,
> 
> I applied your series to the 5.14.y kernel to test with the
> imx8mm-beacon board, but I found that it doesn't wake from sleep.
> I'll experiment with other versions of ATF.  If nobody else has this
> problem, I'll assume, it's an error on my part.

I've tested this series on the i.MX8MM-EVK and a custom (not yet
public) i.MX8MM board and both did work as expected with both system
suspend/resume and runtime power management for the display parts. I've
used the upstream TF-A release v2.5.

Regards,
Lucas

> 
> adam
> 
> >  drivers/soc/imx/gpcv2.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> > index 34a9ac1f2b9b..8b7a01773aec 100644
> > --- a/drivers/soc/imx/gpcv2.c
> > +++ b/drivers/soc/imx/gpcv2.c
> > @@ -244,6 +244,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
> >                 goto out_regulator_disable;
> >         }
> > 
> > +       reset_control_assert(domain->reset);
> > +
> >         if (domain->bits.pxx) {
> >                 /* request the domain to power up */
> >                 regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
> > @@ -266,8 +268,6 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
> >                                   GPC_PGC_CTRL_PCR);
> >         }
> > 
> > -       reset_control_assert(domain->reset);
> > -
> >         /* delay for reset to propagate */
> >         udelay(5);
> > 
> > --
> > 2.30.2
> > 


