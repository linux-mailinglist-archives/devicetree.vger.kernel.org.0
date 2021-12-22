Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D460A47CDDF
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 09:13:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233206AbhLVINC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 03:13:02 -0500
Received: from comms.puri.sm ([159.203.221.185]:39468 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231675AbhLVINB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Dec 2021 03:13:01 -0500
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id 25F16E0304;
        Wed, 22 Dec 2021 00:12:31 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id sMwnXcywxnyo; Wed, 22 Dec 2021 00:12:30 -0800 (PST)
Message-ID: <a20ecd639f8e8b7fa4a9bed7a8e9590225262784.camel@puri.sm>
Subject: Re: [PATCH] hack: soc: imx: gpcv2: avoid unbalanced powering off of
 one device
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     aford173@gmail.com, devicetree@vger.kernel.org, festevam@gmail.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        marex@denx.de, patchwork-lst@pengutronix.de, robh@kernel.org,
        shawnguo@kernel.org, tharvey@gateworks.com
Date:   Wed, 22 Dec 2021 09:12:23 +0100
In-Reply-To: <e9758aac9a0ce296353f5484694c9db14962dfd7.camel@pengutronix.de>
References: <20211002005954.1367653-8-l.stach@pengutronix.de>
         <20211208134725.3328030-1-martin.kepplinger@puri.sm>
         <e9758aac9a0ce296353f5484694c9db14962dfd7.camel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, dem 08.12.2021 um 15:05 +0100 schrieb Lucas Stach:
> Hi Martin,
> 
> Am Mittwoch, dem 08.12.2021 um 14:47 +0100 schrieb Martin Kepplinger:
> > Hi Lucas,
> > 
> > I've posted this hack with a report here a few days back:
> > https://lore.kernel.org/linux-arm-kernel/20211122115145.177196-1-martin.kepplinger@puri.sm/
> > 
> > But now that I see these suspend/resume callback additions things
> > again go wrong on my imx8mq system.
> > 
> > With a v5.16-rc4 based tree and printing on regulator
> > enable/disable,
> > system suspend + resume looks like so:
> > 
> > [   47.559681] imx-pgc imx-pgc-domain.5: enable
> > [   47.584679] imx-pgc imx-pgc-domain.0: disable
> > [   47.646592] imx-pgc imx-pgc-domain.5: disable
> > [   47.823627] imx-pgc imx-pgc-domain.5: enable
> > [   47.994805] imx-pgc imx-pgc-domain.5: disable
> > [   48.664018] imx-pgc imx-pgc-domain.5: enable
> > [   48.805828] imx-pgc imx-pgc-domain.5: disable
> > [   49.909579] imx-pgc imx-pgc-domain.6: enable
> > [   50.013079] imx-pgc imx-pgc-domain.6: failed to enable
> > regulator: -110
> > [   50.013686] imx-pgc imx-pgc-domain.5: enable
> > [   50.120224] imx-pgc imx-pgc-domain.5: failed to enable
> > regulator: -110
> > [   50.120324] imx-pgc imx-pgc-domain.0: enable
> > [   53.703468] imx-pgc imx-pgc-domain.0: disable
> > [   53.746368] imx-pgc imx-pgc-domain.5: disable
> > [   53.754452] imx-pgc imx-pgc-domain.5: failed to disable
> > regulator: -5
> > [   53.765045] imx-pgc imx-pgc-domain.6: disable
> > [   53.822269] imx-pgc imx-pgc-domain.6: failed to disable
> > regulator: -5
> > 
> > 
> > But my main point is that the situation is a bit hard to understand
> > right now. when transitioning to system suspend we expect (if
> > disabled)
> > enable+disable to happen, right? and after resuming: enable (+
> > runtime disable).
> 
> Right.
> 
> > Makes sense functinally, but I wonder if we could implement it a
> > bit clearer?
> 
> Unfortunately, I don't think there is a way to do this in a much
> cleaner way. 
> > 
> > Anyway I'm also not sure whether imx8mq might be different than
> > your
> > imx8mm system.
> 
> imx8mq, without the upcoming VPU blk-ctrl, has no nested power
> domains,
> which are the main reason for the power domain runtime resume before
> the system suspend. If they aren't resumed before the suspend the
> nested domains will not be able to power up their parent domains on
> resume, due to runtime PM being unavailable at this stage. All of
> 8mm/8mn/8mp have some sorts of nested power domains.
> 
> > 
> > When I revert your one patch and add my hack below again, things
> > work again and the system resumes without errors.
> > 
> > Can you imagine what might be missing here?
> > 
> I would like to understand why the runtime resume of the power domain
> isn't working for you. Is this a i2c attached regulator? There might
> be
> some RPM dependency handling (device link) missing to keep the i2c
> bus
> alive until the power domains finished their suspend handling.

domain 5 is gpu, domain 6 is vpu. gpu has power-supply described to be
the "buck3_reg" regulator:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi#n760

vpu has power-supply described as "buck4_reg" on the board. So no
regulators that control a gpio. They are handled by the pmic though
that is attached to i2c. Maybe I should trace what the pmic does a bit
closer...

> 
> Regards,
> Lucas
> 
> > thanks a lot for working on this!
> > 
> >                                martin
> > ---
> >  drivers/soc/imx/gpcv2.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> > index 07610bf87854..898886c9d799 100644
> > --- a/drivers/soc/imx/gpcv2.c
> > +++ b/drivers/soc/imx/gpcv2.c
> > @@ -319,6 +319,9 @@ static int imx_pgc_power_down(struct
> > generic_pm_domain *genpd)
> >         u32 reg_val, pgc;
> >         int ret;
> >  
> > +       if (pm_runtime_suspended(domain->dev))
> > +               return 0;
> > +
> >         /* Enable reset clocks for all devices in the domain */
> >         if (!domain->keep_clocks) {
> >                 ret = clk_bulk_prepare_enable(domain->num_clks,
> > domain->clks);
> 
> 


