Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 510D479278C
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 18:36:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242763AbjIEQVA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 5 Sep 2023 12:21:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354256AbjIEKX2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 06:23:28 -0400
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59C47199
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 03:23:23 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
        by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1qdTDC-0003Fr-7M; Tue, 05 Sep 2023 12:23:10 +0200
Message-ID: <a04d38095bb7d904f01b6ea60f1cb77971a9314f.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Sandor Yu <Sandor.yu@nxp.com>
Date:   Tue, 05 Sep 2023 12:23:08 +0200
In-Reply-To: <Y8Ga1BTaqoTMRA0I@matsya>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
         <20221215201100.2897501-2-l.stach@pengutronix.de> <Y8Ga1BTaqoTMRA0I@matsya>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Vinod,

Am Freitag, dem 13.01.2023 um 23:24 +0530 schrieb Vinod Koul:
> On 15-12-22, 21:11, Lucas Stach wrote:
> > This adds the driver for the Samsung HDMI PHY found on the
> > i.MX8MP SoC. Based on downstream implementation from
> > Sandor Yu <Sandor.yu@nxp.com>.
> > 
> > Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> > v2: use DEFINE_RUNTIME_DEV_PM_OPS
> > ---
> >  drivers/phy/freescale/Kconfig                |   6 +
> >  drivers/phy/freescale/Makefile               |   1 +
> >  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 694 +++++++++++++++++++
> >  3 files changed, 701 insertions(+)
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
> > +
> >  endif
> >  
> >  config PHY_FSL_LYNX_28G
> 
> this new should come after this one...
> 
> > diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makefile
> > index cedb328bc4d2..c4386bfdb853 100644
> > --- a/drivers/phy/freescale/Makefile
> > +++ b/drivers/phy/freescale/Makefile
> > @@ -4,3 +4,4 @@ obj-$(CONFIG_PHY_MIXEL_LVDS_PHY)	+= phy-fsl-imx8qm-lvds-phy.o
> >  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)	+= phy-fsl-imx8-mipi-dphy.o
> >  obj-$(CONFIG_PHY_FSL_IMX8M_PCIE)	+= phy-fsl-imx8m-pcie.o
> >  obj-$(CONFIG_PHY_FSL_LYNX_28G)		+= phy-fsl-lynx-28g.o
> > +obj-$(CONFIG_PHY_FSL_SAMSUNG_HDMI_PHY)	+= phy-fsl-samsung-hdmi.o
> > diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > new file mode 100644
> > index 000000000000..185244dcb810
> > --- /dev/null
> > +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > @@ -0,0 +1,694 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2020 NXP
> > + * Copyright 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
> > + */
> > +
> > +#include <linux/clk-provider.h>
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/module.h>
> > +#include <linux/of_device.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm_runtime.h>
> > +
> > +#define PHY_REG_00		0x00
> > +#define PHY_REG_01		0x04
> > +#define PHY_REG_02		0x08
> > +#define PHY_REG_08		0x20
> > +#define PHY_REG_09		0x24
> > +#define PHY_REG_10		0x28
> > +#define PHY_REG_11		0x2c
> 
> No names for regs?

Unfortunately yes. While the reference manual documents the bitfields
in the regs, it doesn't give them any descriptive names, but just those
consecutive numbers. I don't think it would be a good idea to deviate
from the reference manual here.

> 
> > +
> > +#define PHY_REG_12		0x30
> > +#define  REG12_FLD_CK_DIV(x)	(((x) & 0x3) << 4)
> 
> GENMASK() pls

Okay.

> 
> > +#define  REG12_TMDS_CLK		0x0
> > +#define  REG12_TMDS_CLK_DIV2	0x1
> > +#define  REG12_TMDS_CLK_DIV4	0x2
> > +#define  REG12_TMDS_CLK_DIV8	0x3
> > +
> > +#define PHY_REG_13		0x34
> > +#define  REG13_FLD_TG_CODE_LOW(x) (x & 0xff)
> > +
> > +#define PHY_REG_14		0x38
> > +#define  REG14_FLD_TOL(x)	((x & 0xf) << 4)
> > +#define  REG14_FLD_RP_CODE(x)	((x & 0x3) << 1)
> > +#define  REG14_FLD_TG_CODE_HIGH(x) ((x >> 8) & 0x1)
> 
> FIELD_GET|PREP please

Okay.
> 
> > +
> > +#define PHY_REG_15		0x3c
> > +#define PHY_REG_16		0x40
> > +#define PHY_REG_17		0x44
> > +#define PHY_REG_18		0x48
> > +#define PHY_REG_19		0x4c
> > +#define PHY_REG_20		0x50
> > +
> > +#define PHY_REG_21		0x54
> > +#define  REG21_SEL_TX_CK_INV	BIT(7)
> > +#define  REG21_PMS_S(x)		(x & 0xf)
> > +
> > +#define PHY_REG_22		0x58
> > +#define PHY_REG_23		0x5c
> > +#define PHY_REG_24		0x60
> > +#define PHY_REG_25		0x64
> > +#define PHY_REG_26		0x68
> > +#define PHY_REG_27		0x6c
> > +#define PHY_REG_28		0x70
> > +#define PHY_REG_29		0x74
> > +#define PHY_REG_30		0x78
> > +#define PHY_REG_31		0x7c
> > +#define PHY_REG_32		0x80
> > +
> > +#define PHY_REG_33		0x84
> > +#define  REG33_MODE_SET_DONE	BIT(7)
> > +#define  REG33_FIX_DA		BIT(1)
> > +
> > +#define PHY_REG_34		0x88
> > +#define  REG34_PHY_READY	BIT(7)
> > +#define  REG34_PLL_LOCK		BIT(6)
> > +#define  REG34_PHY_CLK_READY	BIT(5)
> > +
> > +#define PHY_REG_35		0x8c
> > +#define PHY_REG_36		0x90
> > +#define PHY_REG_37		0x94
> > +#define PHY_REG_38		0x98
> > +#define PHY_REG_39		0x9c
> > +#define PHY_REG_40		0xa0
> > +#define PHY_REG_41		0xa4
> > +#define PHY_REG_42		0xa8
> > +#define PHY_REG_43		0xac
> > +#define PHY_REG_44		0xb0
> > +#define PHY_REG_45		0xb4
> > +#define PHY_REG_46		0xb8
> > +#define PHY_REG_47		0xbc
> > +
> > +#define PHY_PLL_DIV_REGS_NUM 6
> > +
> > +struct phy_config {
> > +	u32	pixclk;
> > +	u8	pll_div_regs[PHY_PLL_DIV_REGS_NUM];
> > +};
> > +
> > +const struct phy_config phy_pll_cfg[] = {
> > +	{
> > +		.pixclk = 22250000,
> > +		.pll_div_regs = { 0x4B, 0xF1, 0x89, 0x88, 0x80, 0x40 },
> 
> small case for hex numbers pls

Ack.

> 
> > +	}, {
> > +		.pixclk = 23750000,
> > +		.pll_div_regs = { 0x50, 0xF1, 0x86, 0x85, 0x80, 0x40 },
> > +	},{
> > 
[...]
> > +		.pixclk = 288000000,
> > +		.pll_div_regs = { 0x78, 0x10, 0x00, 0x00, 0x80, 0x00 },
> > +	}, {
> > +		.pixclk = 297000000,
> > +		.pll_div_regs = { 0x7B, 0x15, 0x84, 0x03, 0x90, 0x45 },
> > +	},
> 
> lots of magic numbers!

Yes. Those are mostly tuning values for the PLL and I don't know if
there is any computational way to come up with those numbers, so we're
just using the values validated in downstream.

> 
> > +};
> > +
> > +struct reg_settings {
> > +	u8 reg;
> > +	u8 val;
> > +};
> > +
> > +const struct reg_settings common_phy_cfg[] = {
> > +	{ PHY_REG_00, 0x00 }, { PHY_REG_01, 0xD1 },
> > +	{ PHY_REG_08, 0x4f }, { PHY_REG_09, 0x30 },
> > +	{ PHY_REG_10, 0x33 }, { PHY_REG_11, 0x65 },
> > +	/* REG12 pixclk specific */
> > +	/* REG13 pixclk specific */
> > +	/* REG14 pixclk specific */
> > +	{ PHY_REG_15, 0x80 }, { PHY_REG_16, 0x6C },
> > +	{ PHY_REG_17, 0xF2 }, { PHY_REG_18, 0x67 },
> > +	{ PHY_REG_19, 0x00 }, { PHY_REG_20, 0x10 },
> > +	/* REG21 pixclk specific */
> > +	{ PHY_REG_22, 0x30 }, { PHY_REG_23, 0x32 },
> > +	{ PHY_REG_24, 0x60 }, { PHY_REG_25, 0x8F },
> > +	{ PHY_REG_26, 0x00 }, { PHY_REG_27, 0x00 },
> > +	{ PHY_REG_28, 0x08 }, { PHY_REG_29, 0x00 },
> > +	{ PHY_REG_30, 0x00 }, { PHY_REG_31, 0x00 },
> > +	{ PHY_REG_32, 0x00 }, { PHY_REG_33, 0x80 },
> > +	{ PHY_REG_34, 0x00 }, { PHY_REG_35, 0x00 },
> > +	{ PHY_REG_36, 0x00 }, { PHY_REG_37, 0x00 },
> > +	{ PHY_REG_38, 0x00 }, { PHY_REG_39, 0x00 },
> > +	{ PHY_REG_40, 0x00 }, { PHY_REG_41, 0xE0 },
> > +	{ PHY_REG_42, 0x83 }, { PHY_REG_43, 0x0F },
> > +	{ PHY_REG_44, 0x3E }, { PHY_REG_45, 0xF8 },
> > +	{ PHY_REG_46, 0x00 }, { PHY_REG_47, 0x00 }
> > +};
> > +
> > +struct fsl_samsung_hdmi_phy {
> > +	struct device *dev;
> > +	void __iomem *regs;
> > +	struct clk *apbclk;
> > +	struct clk *refclk;
> > +
> > +	/* clk provider */
> > +	struct clk_hw hw;
> > +	const struct phy_config *cur_cfg;
> > +};
> > +
> > +static inline struct fsl_samsung_hdmi_phy *
> > +to_fsl_samsung_hdmi_phy(struct clk_hw *hw)
> > +{
> > +	return container_of(hw, struct fsl_samsung_hdmi_phy, hw);
> > +}
> > +
> > +static void
> > +fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
> > +				      const struct phy_config *cfg)
> > +{
> > +	u8 div;
> > +
> > +	switch (cfg->pixclk) {
> > +	case  22250000 ...  33750000:	div = 0xf; break;
> > +	case  35000000 ...  40000000:	div = 0xb; break;
> > +	case  43200000 ...  47500000:	div = 0x9; break;
> > +	case  50349650 ...  63500000:	div = 0x7; break;
> > +	case  67500000 ...  90000000:	div = 0x5; break;
> > +	case  94000000 ... 148500000:	div = 0x3; break;
> > +	case 154000000 ... 297000000:	div = 0x1; break;
> 
> lets do proper linux style please

Do you mean moving the statements to separate lines?

Regards,
Lucas
