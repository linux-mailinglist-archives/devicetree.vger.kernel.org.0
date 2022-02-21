Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63E3A4BDDEC
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:46:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355326AbiBUKtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 05:49:01 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:46228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235388AbiBUKsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 05:48:35 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 107E056218
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 02:10:05 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nM5dn-0001Es-9Z; Mon, 21 Feb 2022 11:09:59 +0100
Message-ID: <b4e2099b6d9511f144bbbf6355f8c284b3328901.camel@pengutronix.de>
Subject: Re: [PATCH v2 3/9] soc: imx: gpcv2: add support for i.MX8MP power
 domains
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Date:   Mon, 21 Feb 2022 11:09:58 +0100
In-Reply-To: <YhIniLdFtcpODXBN@pendragon.ideasonboard.com>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
         <20220207192547.1997549-3-l.stach@pengutronix.de>
         <YhAlfAunReS14b/E@pendragon.ideasonboard.com>
         <YhIniLdFtcpODXBN@pendragon.ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

Am Sonntag, dem 20.02.2022 um 13:35 +0200 schrieb Laurent Pinchart:
> Hi Lucas,
> 
> On Sat, Feb 19, 2022 at 01:02:21AM +0200, Laurent Pinchart wrote:
> > On Mon, Feb 07, 2022 at 08:25:41PM +0100, Lucas Stach wrote:
> > > This adds driver support for all the GPC power domains found on
> > > the i.MX8MP SoC.
> > > 
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  drivers/soc/imx/gpcv2.c | 387 +++++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 386 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> > > index 01f46b078df3..a7c92bdfc53b 100644
> > > --- a/drivers/soc/imx/gpcv2.c
> > > +++ b/drivers/soc/imx/gpcv2.c
> 
> [snip]
> 
> > > @@ -137,6 +183,21 @@
> > >  #define IMX8MN_DISPMIX_HSK_PWRDNREQN		BIT(7)
> > >  #define IMX8MN_HSIO_HSK_PWRDNREQN		BIT(5)
> > >  
> > > +#define IMX8MP_MEDIAMIX_PWRDNACKN		BIT(3)
> > 
> > This should be bit 30.
> 
> With this fixed,
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Tested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> with a soon to be posted driver for the MEDIA_BLK_CTRL.
> 
> While this shouldn't be a blocker, I'm wondering how we should deal with
> the NOC configuration that TF-A handles in the power domain code ([1]).
> The reference manual doesn't document the registers, which doesn't help.
> 
Yes, that doesn't help. My hope was that at some point we could get
around to add proper interconnect drivers for those NoC nodes and have
the description for those scheduling parameters in the DT, but without
any documentation this will probably be a hard nut to crack.

> There are also two registers in the MEDIA_BLK_CTRL that are specific to
> the LCDIF and ISI, see [2]. Would you recommend dealing with them in the
> imx8m-blk-ctrl driver (maybe in the power domain notifier, the same way
> we set bit 8 in the CLK_EN register), or through a syscon phandle
> directly in the LCDIF and ISI drivers ?

For now I think it would be good enough to initialize those registers
in the power domain notifier. I don't think the ISI or LCDIF drivers
have any more information available that would make it beneficial to
change those values on the fly. As long as they are just static init
values, writing them once from the PM notifier should be good enough.

Regards,
Lucas

> 
> [1] https://source.codeaurora.org/external/qoriq/qoriq-components/atf/tree/plat/imx/imx8m/imx8mp/gpc.c?h=lf-5.10.72-2.2.0#n156
> [2] https://source.codeaurora.org/external/qoriq/qoriq-components/atf/tree/plat/imx/imx8m/imx8mp/gpc.c?h=lf-5.10.72-2.2.0#n146
> 
> > > +#define IMX8MP_HDMIMIX_PWRDNACKN		BIT(29)
> > > +#define IMX8MP_HSIOMIX_PWRDNACKN		BIT(28)
> > > +#define IMX8MP_VPUMIX_PWRDNACKN			BIT(26)
> > > +#define IMX8MP_GPUMIX_PWRDNACKN			BIT(25)
> > > +#define IMX8MP_MLMIX_PWRDNACKN			(BIT(23) | BIT(24))
> > > +#define IMX8MP_AUDIOMIX_PWRDNACKN		(BIT(20) | BIT(31))
> > > +#define IMX8MP_MEDIAMIX_PWRDNREQN		BIT(14)
> > > +#define IMX8MP_HDMIMIX_PWRDNREQN		BIT(13)
> > > +#define IMX8MP_HSIOMIX_PWRDNREQN		BIT(12)
> > > +#define IMX8MP_VPUMIX_PWRDNREQN			BIT(10)
> > > +#define IMX8MP_GPUMIX_PWRDNREQN			BIT(9)
> > > +#define IMX8MP_MLMIX_PWRDNREQN			(BIT(7) | BIT(8))
> > > +#define IMX8MP_AUDIOMIX_PWRDNREQN		(BIT(4) | BIT(15))
> > > +
> > >  /*
> > >   * The PGC offset values in Reference Manual
> > >   * (Rev. 1, 01/2018 and the older ones) GPC chapter's
> 
> [snip]
> 


