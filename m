Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05FDD4BCE2E
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 12:35:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235856AbiBTLgL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 06:36:11 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbiBTLgK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 06:36:10 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5F2331DDE
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 03:35:48 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B8BA925B;
        Sun, 20 Feb 2022 12:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1645356946;
        bh=h3TjgobjOErw+y9+H+t1kNGzyjvsPkb5YVbgo6gsbGc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nbCzhblTnjBafjEob+BihYn6lcKAyV309qHrF9VHUekgFEdE+g/zk0Z/bCtrbK2qp
         mS2v5+FmNzeBXbS2i64JcAvKUxr943i7X2NFHV7Xa5CEVA6Ey0kEhW1AJffa2zyByJ
         cTGWWHxvlvl1sfjjSPlRGtHi/rtxHR0o2sn/7r3E=
Date:   Sun, 20 Feb 2022 13:35:36 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v2 3/9] soc: imx: gpcv2: add support for i.MX8MP power
 domains
Message-ID: <YhIniLdFtcpODXBN@pendragon.ideasonboard.com>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-3-l.stach@pengutronix.de>
 <YhAlfAunReS14b/E@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YhAlfAunReS14b/E@pendragon.ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Sat, Feb 19, 2022 at 01:02:21AM +0200, Laurent Pinchart wrote:
> On Mon, Feb 07, 2022 at 08:25:41PM +0100, Lucas Stach wrote:
> > This adds driver support for all the GPC power domains found on
> > the i.MX8MP SoC.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/soc/imx/gpcv2.c | 387 +++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 386 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> > index 01f46b078df3..a7c92bdfc53b 100644
> > --- a/drivers/soc/imx/gpcv2.c
> > +++ b/drivers/soc/imx/gpcv2.c

[snip]

> > @@ -137,6 +183,21 @@
> >  #define IMX8MN_DISPMIX_HSK_PWRDNREQN		BIT(7)
> >  #define IMX8MN_HSIO_HSK_PWRDNREQN		BIT(5)
> >  
> > +#define IMX8MP_MEDIAMIX_PWRDNACKN		BIT(3)
> 
> This should be bit 30.

With this fixed,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Tested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

with a soon to be posted driver for the MEDIA_BLK_CTRL.

While this shouldn't be a blocker, I'm wondering how we should deal with
the NOC configuration that TF-A handles in the power domain code ([1]).
The reference manual doesn't document the registers, which doesn't help.

There are also two registers in the MEDIA_BLK_CTRL that are specific to
the LCDIF and ISI, see [2]. Would you recommend dealing with them in the
imx8m-blk-ctrl driver (maybe in the power domain notifier, the same way
we set bit 8 in the CLK_EN register), or through a syscon phandle
directly in the LCDIF and ISI drivers ?

[1] https://source.codeaurora.org/external/qoriq/qoriq-components/atf/tree/plat/imx/imx8m/imx8mp/gpc.c?h=lf-5.10.72-2.2.0#n156
[2] https://source.codeaurora.org/external/qoriq/qoriq-components/atf/tree/plat/imx/imx8m/imx8mp/gpc.c?h=lf-5.10.72-2.2.0#n146

> > +#define IMX8MP_HDMIMIX_PWRDNACKN		BIT(29)
> > +#define IMX8MP_HSIOMIX_PWRDNACKN		BIT(28)
> > +#define IMX8MP_VPUMIX_PWRDNACKN			BIT(26)
> > +#define IMX8MP_GPUMIX_PWRDNACKN			BIT(25)
> > +#define IMX8MP_MLMIX_PWRDNACKN			(BIT(23) | BIT(24))
> > +#define IMX8MP_AUDIOMIX_PWRDNACKN		(BIT(20) | BIT(31))
> > +#define IMX8MP_MEDIAMIX_PWRDNREQN		BIT(14)
> > +#define IMX8MP_HDMIMIX_PWRDNREQN		BIT(13)
> > +#define IMX8MP_HSIOMIX_PWRDNREQN		BIT(12)
> > +#define IMX8MP_VPUMIX_PWRDNREQN			BIT(10)
> > +#define IMX8MP_GPUMIX_PWRDNREQN			BIT(9)
> > +#define IMX8MP_MLMIX_PWRDNREQN			(BIT(7) | BIT(8))
> > +#define IMX8MP_AUDIOMIX_PWRDNREQN		(BIT(4) | BIT(15))
> > +
> >  /*
> >   * The PGC offset values in Reference Manual
> >   * (Rev. 1, 01/2018 and the older ones) GPC chapter's

[snip]

-- 
Regards,

Laurent Pinchart
