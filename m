Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE7B164E1FF
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 20:52:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiLOTwU convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 15 Dec 2022 14:52:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbiLOTwT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 14:52:19 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6154D532CD
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 11:52:18 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1p5uH2-0001GM-F7; Thu, 15 Dec 2022 20:52:08 +0100
Message-ID: <03940f9711139055662c00d24f6beb89a9df6e01.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] phy: freescale: add Samsung HDMI PHY
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de,
        Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Date:   Thu, 15 Dec 2022 20:52:04 +0100
In-Reply-To: <b7dc7ba7-e646-b520-a065-8b47643c1c26@linaro.org>
References: <20220826192023.3216389-1-l.stach@pengutronix.de>
         <20220826192023.3216389-2-l.stach@pengutronix.de>
         <b7dc7ba7-e646-b520-a065-8b47643c1c26@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

Am Sonntag, dem 28.08.2022 um 18:53 +0300 schrieb Krzysztof Kozlowski:
> On 26/08/2022 22:20, Lucas Stach wrote:
> > This adds the driver for the Samsung HDMI PHY found on the
> > i.MX8MP SoC. Based on downstream implementation from
> > Sandor Yu <Sandor.yu@nxp.com>.
> > 
> > Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/phy/freescale/Kconfig                |   6 +
> >  drivers/phy/freescale/Makefile               |   1 +
> >  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 699 +++++++++++++++++++
> >  3 files changed, 706 insertions(+)
> >  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > 
> > diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> > index 853958fb2c06..5c2b73042dfc 100644
> > --- a/drivers/phy/freescale/Kconfig
> > +++ b/drivers/phy/freescale/Kconfig
> > @@ -35,6 +35,12 @@ config PHY_FSL_IMX8M_PCIE
> >  	  Enable this to add support for the PCIE PHY as found on
> >  	  i.MX8M family of SOCs.
> >  
> > +config PHY_FSL_SAMSUNG_HDMI_PHY
> > +	tristate "Samsung HDMI PHY support"
> > +	depends on OF && HAS_IOMEM
> > +	help
> > +	  Enable this to add support for the Samsung HDMI PHY in i.MX8MP.
> 
> Your bindings do not mention that this IP block comes from Samsung, so
> please extend the description there.
> 
> Also, since this came from blocks used by Samsung, probably it shares a
> lot with Samsung Exynos SoC, so it would be nice to Cc maintainers of
> DRM DRIVERS FOR EXYNOS for some feedback.
> 
> Although existing Samsung HDMI phy driver is tightly coupled with Exynos
> DRM drivers, so not really re-usable without huge refactoring. I did not
> check the register layout similarities.
> 
I did take a look at the Exynos DRM HDMI driver, but this doesn't seem
to have much in common with what we do here. First the Exynos driver
mixes HDMI controller and PHY programming into a single driver, while
the PHY supported in this driver is paired to a Designware HDMI
controller on the i.MX8MP. Secondly the newest generation supported by
the Exynos driver is Exynos5 which is a 20nm part, while the i.MX8MP is
a 14nm part and PHYs tend to be really technology specific.

I'll CC the Exynos maintainers for the next submission, in case they
can provide some input, but I currently doubt that there is much
overlap.

Regards,
Lucas

