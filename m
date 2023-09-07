Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A950279750B
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:45:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231277AbjIGPpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:45:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344367AbjIGPc7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:32:59 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DC11E57
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1694100760; x=1725636760;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=ncpHToHrV2m8gRatsfgndWDJ1AfgK/NeERa8aqVq39c=;
  b=X4CF67jI4r1BAbeoAw6zvaRIgVrvEO1XNUwpUc3wFFDV/tR/m5Lrv64w
   63hyrQyViyic/xLTdLsZE7IjCdr8MnrYtvStYb/Wxwnc9nQASW2J+F+dN
   Cn1Pvi/yx+2kaCTs0WdsPu1bgQGV7o93KDg7h6nL/9DvbySjwfLcVu0Gq
   N0EshcvPhjIdQ1L9V6wi7vsq9suw6ZPTYn3niRLI3krvJdOyZBgHpPP0p
   rVL+MOkFzYr5ughdXDuBrX0ZmWW66K0QwuFU5M5SQjxIbjBW4T4EKger5
   xZqT2DOBK4F8XIK8hWcIUNJKaWOm0X9SRukDrNXfnYKyP/A6O4MMWDnvR
   g==;
X-IronPort-AV: E=Sophos;i="6.02,234,1688421600"; 
   d="scan'208";a="32825547"
Subject: Re: [PATCH v3 2/2] phy: freescale: add Samsung HDMI PHY
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Sep 2023 08:39:42 +0200
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 24FF428007F;
        Thu,  7 Sep 2023 08:39:42 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Richard Leitner <richard.leitner@skidata.com>
Date:   Thu, 07 Sep 2023 08:39:42 +0200
Message-ID: <4830698.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230906184211.1857585-2-l.stach@pengutronix.de>
References: <20230906184211.1857585-1-l.stach@pengutronix.de> <20230906184211.1857585-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

Am Mittwoch, 6. September 2023, 20:42:11 CEST schrieb Lucas Stach:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
>=20
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

On TQMa8MPxL + MBa8MPxL:
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
> v3:
> - use GENMASK/FIELD_PREP
> - lowercase hex values
> - correct coding style
> v2:
> - use DEFINE_RUNTIME_DEV_PM_OPS
> ---
>  drivers/phy/freescale/Kconfig                |   6 +
>  drivers/phy/freescale/Makefile               |   1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 717 +++++++++++++++++++
>  3 files changed, 724 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
>=20
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 853958fb2c06..5c2b73042dfc 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -35,6 +35,12 @@ config PHY_FSL_IMX8M_PCIE
>  	  Enable this to add support for the PCIE PHY as found on
>  	  i.MX8M family of SOCs.
>=20
> +config PHY_FSL_SAMSUNG_HDMI_PHY
> +	tristate "Samsung HDMI PHY support"
> +	depends on OF && HAS_IOMEM
> +	help
> +	  Enable this to add support for the Samsung HDMI PHY in i.MX8MP.
> +
>  endif
>=20
>  config PHY_FSL_LYNX_28G
> diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makef=
ile
> index cedb328bc4d2..c4386bfdb853 100644
> --- a/drivers/phy/freescale/Makefile
> +++ b/drivers/phy/freescale/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_PHY_MIXEL_LVDS_PHY)	+=3D
> phy-fsl-imx8qm-lvds-phy.o obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)	+=3D
> phy-fsl-imx8-mipi-dphy.o
>  obj-$(CONFIG_PHY_FSL_IMX8M_PCIE)	+=3D phy-fsl-imx8m-pcie.o
>  obj-$(CONFIG_PHY_FSL_LYNX_28G)		+=3D phy-fsl-lynx-28g.o
> +obj-$(CONFIG_PHY_FSL_SAMSUNG_HDMI_PHY)	+=3D phy-fsl-samsung-hdmi.o
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c new file mode 100644
> index 000000000000..ce712cfefd62
> --- /dev/null
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -0,0 +1,717 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2020 NXP
> + * Copyright 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +
> +#define PHY_REG_00		0x00
> +#define PHY_REG_01		0x04
> +#define PHY_REG_02		0x08
> +#define PHY_REG_08		0x20
> +#define PHY_REG_09		0x24
> +#define PHY_REG_10		0x28
> +#define PHY_REG_11		0x2c
> +
> +#define PHY_REG_12		0x30
> +#define  REG12_CK_DIV_MASK	GENMASK(5, 4)
> +
> +#define PHY_REG_13		0x34
> +#define  REG13_TG_CODE_LOW_MASK	GENMASK(7, 0)
> +
> +#define PHY_REG_14		0x38
> +#define  REG14_TOL_MASK		GENMASK(7, 4)
> +#define  REG14_RP_CODE_MASK	GENMASK(2, 1)
> +#define  REG14_TG_CODE_HIGH_MASK	GENMASK(0, 0)
> +
> +#define PHY_REG_15		0x3c
> +#define PHY_REG_16		0x40
> +#define PHY_REG_17		0x44
> +#define PHY_REG_18		0x48
> +#define PHY_REG_19		0x4c
> +#define PHY_REG_20		0x50
> +
> +#define PHY_REG_21		0x54
> +#define  REG21_SEL_TX_CK_INV	BIT(7)
> +#define  REG21_PMS_S_MASK	GENMASK(3, 0)
> +
> +#define PHY_REG_22		0x58
> +#define PHY_REG_23		0x5c
> +#define PHY_REG_24		0x60
> +#define PHY_REG_25		0x64
> +#define PHY_REG_26		0x68
> +#define PHY_REG_27		0x6c
> +#define PHY_REG_28		0x70
> +#define PHY_REG_29		0x74
> +#define PHY_REG_30		0x78
> +#define PHY_REG_31		0x7c
> +#define PHY_REG_32		0x80
> +
> +#define PHY_REG_33		0x84
> +#define  REG33_MODE_SET_DONE	BIT(7)
> +#define  REG33_FIX_DA		BIT(1)
> +
> +#define PHY_REG_34		0x88
> +#define  REG34_PHY_READY	BIT(7)
> +#define  REG34_PLL_LOCK		BIT(6)
> +#define  REG34_PHY_CLK_READY	BIT(5)
> +
> +#define PHY_REG_35		0x8c
> +#define PHY_REG_36		0x90
> +#define PHY_REG_37		0x94
> +#define PHY_REG_38		0x98
> +#define PHY_REG_39		0x9c
> +#define PHY_REG_40		0xa0
> +#define PHY_REG_41		0xa4
> +#define PHY_REG_42		0xa8
> +#define PHY_REG_43		0xac
> +#define PHY_REG_44		0xb0
> +#define PHY_REG_45		0xb4
> +#define PHY_REG_46		0xb8
> +#define PHY_REG_47		0xbc
> +
> +#define PHY_PLL_DIV_REGS_NUM 6
> +
> +struct phy_config {
> +	u32	pixclk;
> +	u8	pll_div_regs[PHY_PLL_DIV_REGS_NUM];
> +};
> +
> +const struct phy_config phy_pll_cfg[] =3D {
> +	{
> +		.pixclk =3D 22250000,
> +		.pll_div_regs =3D { 0x4b, 0xf1, 0x89, 0x88, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 23750000,
> +		.pll_div_regs =3D { 0x50, 0xf1, 0x86, 0x85, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 24000000,
> +		.pll_div_regs =3D { 0x50, 0xf0, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 24024000,
> +		.pll_div_regs =3D { 0x50, 0xf1, 0x99, 0x02, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 25175000,
> +		.pll_div_regs =3D { 0x54, 0xfc, 0xcc, 0x91, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 25200000,
> +		.pll_div_regs =3D { 0x54, 0xf0, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 26750000,
> +		.pll_div_regs =3D { 0x5a, 0xf2, 0x89, 0x88, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 27000000,
> +		.pll_div_regs =3D { 0x5a, 0xf0, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 27027000,
> +		.pll_div_regs =3D { 0x5a, 0xf2, 0xfd, 0x0c, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 29500000,
> +		.pll_div_regs =3D { 0x62, 0xf4, 0x95, 0x08, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 30750000,
> +		.pll_div_regs =3D { 0x66, 0xf4, 0x82, 0x01, 0x88, 0x45 },
> +	}, {
> +		.pixclk =3D 30888000,
> +		.pll_div_regs =3D { 0x66, 0xf4, 0x99, 0x18, 0x88, 0x45 },
> +	}, {
> +		.pixclk =3D 33750000,
> +		.pll_div_regs =3D { 0x70, 0xf4, 0x82, 0x01, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 35000000,
> +		.pll_div_regs =3D { 0x58, 0xb8, 0x8b, 0x88, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 36000000,
> +		.pll_div_regs =3D { 0x5a, 0xb0, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 36036000,
> +		.pll_div_regs =3D { 0x5a, 0xb2, 0xfd, 0x0c, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 40000000,
> +		.pll_div_regs =3D { 0x64, 0xb0, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 43200000,
> +		.pll_div_regs =3D { 0x5a, 0x90, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 43243200,
> +		.pll_div_regs =3D { 0x5a, 0x92, 0xfd, 0x0c, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 44500000,
> +		.pll_div_regs =3D { 0x5c, 0x92, 0x98, 0x11, 0x84, 0x41 },
> +	}, {
> +		.pixclk =3D 47000000,
> +		.pll_div_regs =3D { 0x62, 0x94, 0x95, 0x82, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 47500000,
> +		.pll_div_regs =3D { 0x63, 0x96, 0xa1, 0x82, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 50349650,
> +		.pll_div_regs =3D { 0x54, 0x7c, 0xc3, 0x8f, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 50400000,
> +		.pll_div_regs =3D { 0x54, 0x70, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 53250000,
> +		.pll_div_regs =3D { 0x58, 0x72, 0x84, 0x03, 0x82, 0x41 },
> +	}, {
> +		.pixclk =3D 53500000,
> +		.pll_div_regs =3D { 0x5a, 0x72, 0x89, 0x88, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 54000000,
> +		.pll_div_regs =3D { 0x5a, 0x70, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 54054000,
> +		.pll_div_regs =3D { 0x5a, 0x72, 0xfd, 0x0c, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 59000000,
> +		.pll_div_regs =3D { 0x62, 0x74, 0x95, 0x08, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 59340659,
> +		.pll_div_regs =3D { 0x62, 0x74, 0xdb, 0x52, 0x88, 0x47 },
> +	}, {
> +		.pixclk =3D 59400000,
> +		.pll_div_regs =3D { 0x63, 0x70, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 61500000,
> +		.pll_div_regs =3D { 0x66, 0x74, 0x82, 0x01, 0x88, 0x45 },
> +	}, {
> +		.pixclk =3D 63500000,
> +		.pll_div_regs =3D { 0x69, 0x74, 0x89, 0x08, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 67500000,
> +		.pll_div_regs =3D { 0x54, 0x52, 0x87, 0x03, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 70000000,
> +		.pll_div_regs =3D { 0x58, 0x58, 0x8b, 0x88, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 72000000,
> +		.pll_div_regs =3D { 0x5a, 0x50, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 72072000,
> +		.pll_div_regs =3D { 0x5a, 0x52, 0xfd, 0x0c, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 74176000,
> +		.pll_div_regs =3D { 0x5d, 0x58, 0xdb, 0xA2, 0x88, 0x41 },
> +	}, {
> +		.pixclk =3D 74250000,
> +		.pll_div_regs =3D { 0x5c, 0x52, 0x90, 0x0d, 0x84, 0x41 },
> +	}, {
> +		.pixclk =3D 78500000,
> +		.pll_div_regs =3D { 0x62, 0x54, 0x87, 0x01, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 80000000,
> +		.pll_div_regs =3D { 0x64, 0x50, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 82000000,
> +		.pll_div_regs =3D { 0x66, 0x54, 0x82, 0x01, 0x88, 0x45 },
> +	}, {
> +		.pixclk =3D 82500000,
> +		.pll_div_regs =3D { 0x67, 0x54, 0x88, 0x01, 0x90, 0x49 },
> +	}, {
> +		.pixclk =3D 89000000,
> +		.pll_div_regs =3D { 0x70, 0x54, 0x84, 0x83, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 90000000,
> +		.pll_div_regs =3D { 0x70, 0x54, 0x82, 0x01, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 94000000,
> +		.pll_div_regs =3D { 0x4e, 0x32, 0xa7, 0x10, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 95000000,
> +		.pll_div_regs =3D { 0x50, 0x31, 0x86, 0x85, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 98901099,
> +		.pll_div_regs =3D { 0x52, 0x3a, 0xdb, 0x4c, 0x88, 0x47 },
> +	}, {
> +		.pixclk =3D 99000000,
> +		.pll_div_regs =3D { 0x52, 0x32, 0x82, 0x01, 0x88, 0x47 },
> +	}, {
> +		.pixclk =3D 100699300,
> +		.pll_div_regs =3D { 0x54, 0x3c, 0xc3, 0x8f, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 100800000,
> +		.pll_div_regs =3D { 0x54, 0x30, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 102500000,
> +		.pll_div_regs =3D { 0x55, 0x32, 0x8c, 0x05, 0x90, 0x4b },
> +	}, {
> +		.pixclk =3D 104750000,
> +		.pll_div_regs =3D { 0x57, 0x32, 0x98, 0x07, 0x90, 0x49 },
> +	}, {
> +		.pixclk =3D 106500000,
> +		.pll_div_regs =3D { 0x58, 0x32, 0x84, 0x03, 0x82, 0x41 },
> +	}, {
> +		.pixclk =3D 107000000,
> +		.pll_div_regs =3D { 0x5a, 0x32, 0x89, 0x88, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 108000000,
> +		.pll_div_regs =3D { 0x5a, 0x30, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 108108000,
> +		.pll_div_regs =3D { 0x5a, 0x32, 0xfd, 0x0c, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 118000000,
> +		.pll_div_regs =3D { 0x62, 0x34, 0x95, 0x08, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 118800000,
> +		.pll_div_regs =3D { 0x63, 0x30, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 123000000,
> +		.pll_div_regs =3D { 0x66, 0x34, 0x82, 0x01, 0x88, 0x45 },
> +	}, {
> +		.pixclk =3D 127000000,
> +		.pll_div_regs =3D { 0x69, 0x34, 0x89, 0x08, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 135000000,
> +		.pll_div_regs =3D { 0x70, 0x34, 0x82, 0x01, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 135580000,
> +		.pll_div_regs =3D { 0x71, 0x39, 0xe9, 0x82, 0x9c, 0x5b },
> +	}, {
> +		.pixclk =3D 137520000,
> +		.pll_div_regs =3D { 0x72, 0x38, 0x99, 0x10, 0x85, 0x41 },
> +	}, {
> +		.pixclk =3D 138750000,
> +		.pll_div_regs =3D { 0x73, 0x35, 0x88, 0x05, 0x90, 0x4d },
> +	}, {
> +		.pixclk =3D 140000000,
> +		.pll_div_regs =3D { 0x75, 0x36, 0xa7, 0x90, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 144000000,
> +		.pll_div_regs =3D { 0x78, 0x30, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 148352000,
> +		.pll_div_regs =3D { 0x7b, 0x35, 0xdb, 0x39, 0x90, 0x45 },
> +	}, {
> +		.pixclk =3D 148500000,
> +		.pll_div_regs =3D { 0x7b, 0x35, 0x84, 0x03, 0x90, 0x45 },
> +	}, {
> +		.pixclk =3D 154000000,
> +		.pll_div_regs =3D { 0x40, 0x18, 0x83, 0x01, 0x00, 0x40 },
> +	}, {
> +		.pixclk =3D 157000000,
> +		.pll_div_regs =3D { 0x41, 0x11, 0xa7, 0x14, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 160000000,
> +		.pll_div_regs =3D { 0x42, 0x12, 0xa1, 0x20, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 162000000,
> +		.pll_div_regs =3D { 0x43, 0x18, 0x8b, 0x08, 0x96, 0x55 },
> +	}, {
> +		.pixclk =3D 164000000,
> +		.pll_div_regs =3D { 0x45, 0x11, 0x83, 0x82, 0x90, 0x4b },
> +	}, {
> +		.pixclk =3D 165000000,
> +		.pll_div_regs =3D { 0x45, 0x11, 0x84, 0x81, 0x90, 0x4b },
> +	}, {
> +		.pixclk =3D 180000000,
> +		.pll_div_regs =3D { 0x4b, 0x10, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 185625000,
> +		.pll_div_regs =3D { 0x4e, 0x12, 0x9a, 0x95, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 188000000,
> +		.pll_div_regs =3D { 0x4e, 0x12, 0xa7, 0x10, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 198000000,
> +		.pll_div_regs =3D { 0x52, 0x12, 0x82, 0x01, 0x88, 0x47 },
> +	}, {
> +		.pixclk =3D 205000000,
> +		.pll_div_regs =3D { 0x55, 0x12, 0x8c, 0x05, 0x90, 0x4b },
> +	}, {
> +		.pixclk =3D 209500000,
> +		.pll_div_regs =3D { 0x57, 0x12, 0x98, 0x07, 0x90, 0x49 },
> +	}, {
> +		.pixclk =3D 213000000,
> +		.pll_div_regs =3D { 0x58, 0x12, 0x84, 0x03, 0x82, 0x41 },
> +	}, {
> +		.pixclk =3D 216000000,
> +		.pll_div_regs =3D { 0x5a, 0x10, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 216216000,
> +		.pll_div_regs =3D { 0x5a, 0x12, 0xfd, 0x0c, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 237600000,
> +		.pll_div_regs =3D { 0x63, 0x10, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 254000000,
> +		.pll_div_regs =3D { 0x69, 0x14, 0x89, 0x08, 0x80, 0x40 },
> +	}, {
> +		.pixclk =3D 277500000,
> +		.pll_div_regs =3D { 0x73, 0x15, 0x88, 0x05, 0x90, 0x4d },
> +	}, {
> +		.pixclk =3D 288000000,
> +		.pll_div_regs =3D { 0x78, 0x10, 0x00, 0x00, 0x80, 0x00 },
> +	}, {
> +		.pixclk =3D 297000000,
> +		.pll_div_regs =3D { 0x7b, 0x15, 0x84, 0x03, 0x90, 0x45 },
> +	},
> +};
> +
> +struct reg_settings {
> +	u8 reg;
> +	u8 val;
> +};
> +
> +const struct reg_settings common_phy_cfg[] =3D {
> +	{ PHY_REG_00, 0x00 }, { PHY_REG_01, 0xd1 },
> +	{ PHY_REG_08, 0x4f }, { PHY_REG_09, 0x30 },
> +	{ PHY_REG_10, 0x33 }, { PHY_REG_11, 0x65 },
> +	/* REG12 pixclk specific */
> +	/* REG13 pixclk specific */
> +	/* REG14 pixclk specific */
> +	{ PHY_REG_15, 0x80 }, { PHY_REG_16, 0x6c },
> +	{ PHY_REG_17, 0xf2 }, { PHY_REG_18, 0x67 },
> +	{ PHY_REG_19, 0x00 }, { PHY_REG_20, 0x10 },
> +	/* REG21 pixclk specific */
> +	{ PHY_REG_22, 0x30 }, { PHY_REG_23, 0x32 },
> +	{ PHY_REG_24, 0x60 }, { PHY_REG_25, 0x8f },
> +	{ PHY_REG_26, 0x00 }, { PHY_REG_27, 0x00 },
> +	{ PHY_REG_28, 0x08 }, { PHY_REG_29, 0x00 },
> +	{ PHY_REG_30, 0x00 }, { PHY_REG_31, 0x00 },
> +	{ PHY_REG_32, 0x00 }, { PHY_REG_33, 0x80 },
> +	{ PHY_REG_34, 0x00 }, { PHY_REG_35, 0x00 },
> +	{ PHY_REG_36, 0x00 }, { PHY_REG_37, 0x00 },
> +	{ PHY_REG_38, 0x00 }, { PHY_REG_39, 0x00 },
> +	{ PHY_REG_40, 0x00 }, { PHY_REG_41, 0xe0 },
> +	{ PHY_REG_42, 0x83 }, { PHY_REG_43, 0x0f },
> +	{ PHY_REG_44, 0x3E }, { PHY_REG_45, 0xf8 },
> +	{ PHY_REG_46, 0x00 }, { PHY_REG_47, 0x00 }
> +};
> +
> +struct fsl_samsung_hdmi_phy {
> +	struct device *dev;
> +	void __iomem *regs;
> +	struct clk *apbclk;
> +	struct clk *refclk;
> +
> +	/* clk provider */
> +	struct clk_hw hw;
> +	const struct phy_config *cur_cfg;
> +};
> +
> +static inline struct fsl_samsung_hdmi_phy *
> +to_fsl_samsung_hdmi_phy(struct clk_hw *hw)
> +{
> +	return container_of(hw, struct fsl_samsung_hdmi_phy, hw);
> +}
> +
> +static void
> +fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
> +				      const struct phy_config *cfg)
> +{
> +	u8 div;
> +
> +	switch (cfg->pixclk) {
> +	case  22250000 ...  33750000:
> +		div =3D 0xf;
> +		break;
> +	case  35000000 ...  40000000:
> +		div =3D 0xb;
> +		break;
> +	case  43200000 ...  47500000:
> +		div =3D 0x9;
> +		break;
> +	case  50349650 ...  63500000:
> +		div =3D 0x7;
> +		break;
> +	case  67500000 ...  90000000:
> +		div =3D 0x5;
> +		break;
> +	case  94000000 ... 148500000:
> +		div =3D 0x3;
> +		break;
> +	case 154000000 ... 297000000:
> +		div =3D 0x1;
> +		break;
> +	}
> +
> +	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, div),
> +	       phy->regs + PHY_REG_21);
> +}
> +
> +static void
> +fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy
> *phy, +					    const struct phy_config=20
*cfg)
> +{
> +	u32 pclk =3D cfg->pixclk;
> +	u32 fld_tg_code;
> +	u32 pclk_khz;
> +	u8 div;
> +
> +	switch (cfg->pixclk) {
> +	case  22250000 ...  47500000:
> +		div =3D 1;
> +		break;
> +	case  50349650 ...  99000000:
> +		div =3D 2;
> +		break;
> +	case 100699300 ... 198000000:
> +		div =3D 4;
> +		break;
> +	case 205000000 ... 297000000:
> +		div =3D 8;
> +		break;
> +	}
> +
> +	writeb(FIELD_PREP(REG12_CK_DIV_MASK, ilog2(div)), phy->regs +=20
PHY_REG_12);
> +
> +	/*
> +	 * Calculation for the frequency lock detector target code=20
(fld_tg_code)
> +	 * is based on reference manual register description of PHY_REG13
> +	 * (13.10.3.1.14.2):
> +	 *   1st) Calculate int_pllclk which is determinded by FLD_CK_DIV
> +	 *   2nd) Increase resolution to avoid rounding issues
> +	 *   3th) Do the div (256 / Freq. of int_pllclk) * 24
> +	 *   4th) Reduce the resolution and always round up since the NXP
> +	 *        settings rounding up always too. TODO: Check if that is
> +	 *        correct.
> +	 */
> +	pclk /=3D div;
> +	pclk_khz =3D pclk / 1000;
> +	fld_tg_code =3D 256 * 1000 * 1000 / pclk_khz * 24;
> +	fld_tg_code =3D DIV_ROUND_UP(fld_tg_code, 1000);
> +
> +	/* FLD_TOL and FLD_RP_CODE taken from downstream driver */
> +	writeb(FIELD_PREP(REG13_TG_CODE_LOW_MASK, fld_tg_code),
> +	       phy->regs + PHY_REG_13);
> +	writeb(FIELD_PREP(REG14_TOL_MASK, 2) |
> +	       FIELD_PREP(REG14_RP_CODE_MASK, 2) |
> +	       FIELD_PREP(REG14_TG_CODE_HIGH_MASK, fld_tg_code >> 8),
> +	       phy->regs + PHY_REG_14);
> +}
> +
> +static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *p=
hy,
> +					  const struct phy_config=20
*cfg)
> +{
> +	int i, ret;
> +	u8 val;
> +
> +	/* HDMI PHY init */
> +	writeb(REG33_FIX_DA, phy->regs + PHY_REG_33);
> +
> +	/* common PHY registers */
> +	for (i =3D 0; i < ARRAY_SIZE(common_phy_cfg); i++)
> +		writeb(common_phy_cfg[i].val, phy->regs +=20
common_phy_cfg[i].reg);
> +
> +	/* set individual PLL registers PHY_REG2 ... PHY_REG7 */
> +	for (i =3D 0; i < PHY_PLL_DIV_REGS_NUM; i++)
> +		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG_02 + i *=20
4);
> +
> +	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
> +	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
> +
> +	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG_33);
> +
> +	ret =3D readb_poll_timeout(phy->regs + PHY_REG_34, val,
> +				 val & REG34_PLL_LOCK, 50, 20000);
> +	if (ret)
> +		dev_err(phy->dev, "PLL failed to lock\n");
> +
> +	return ret;
> +}
> +
> +static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
> +					 unsigned long parent_rate)
> +{
> +	struct fsl_samsung_hdmi_phy *phy =3D to_fsl_samsung_hdmi_phy(hw);
> +
> +	if (!phy->cur_cfg)
> +		return 74250000;
> +
> +	return phy->cur_cfg->pixclk;
> +}
> +
> +static long phy_clk_round_rate(struct clk_hw *hw,
> +			       unsigned long rate, unsigned long=20
*parent_rate)
> +{
> +	int i;
> +
> +	for (i =3D ARRAY_SIZE(phy_pll_cfg) - 1; i >=3D 0; i--)
> +		if (phy_pll_cfg[i].pixclk <=3D rate)
> +			return phy_pll_cfg[i].pixclk;
> +
> +	return -EINVAL;
> +}
> +
> +static int phy_clk_set_rate(struct clk_hw *hw,
> +			    unsigned long rate, unsigned long=20
parent_rate)
> +{
> +	struct fsl_samsung_hdmi_phy *phy =3D to_fsl_samsung_hdmi_phy(hw);
> +	int i;
> +
> +	for (i =3D ARRAY_SIZE(phy_pll_cfg) - 1; i >=3D 0; i--)
> +		if (phy_pll_cfg[i].pixclk <=3D rate)
> +			break;
> +
> +	if (i < 0)
> +		return -EINVAL;
> +
> +	phy->cur_cfg =3D &phy_pll_cfg[i];
> +
> +	return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
> +}
> +
> +static const struct clk_ops phy_clk_ops =3D {
> +	.recalc_rate =3D phy_clk_recalc_rate,
> +	.round_rate =3D phy_clk_round_rate,
> +	.set_rate =3D phy_clk_set_rate,
> +};
> +
> +static int phy_clk_register(struct fsl_samsung_hdmi_phy *phy)
> +{
> +	struct device *dev =3D phy->dev;
> +	struct device_node *np =3D dev->of_node;
> +	struct clk_init_data init;
> +	const char *parent_name;
> +	struct clk *phyclk;
> +	int ret;
> +
> +	parent_name =3D __clk_get_name(phy->refclk);
> +
> +	init.parent_names =3D &parent_name;
> +	init.num_parents =3D 1;
> +	init.flags =3D 0;
> +	init.name =3D "hdmi_pclk";
> +	init.ops =3D &phy_clk_ops;
> +
> +	phy->hw.init =3D &init;
> +
> +	phyclk =3D devm_clk_register(dev, &phy->hw);
> +	if (IS_ERR(phyclk))
> +		return dev_err_probe(dev, PTR_ERR(phyclk),
> +				     "failed to register clock\n");
> +
> +	ret =3D of_clk_add_provider(np, of_clk_src_simple_get, phyclk);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to register clock=20
provider\n");
> +
> +	return 0;
> +}
> +
> +static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy;
> +	int ret;
> +
> +	phy =3D devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev =3D &pdev->dev;
> +
> +	phy->regs =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(phy->regs))
> +		return PTR_ERR(phy->regs);
> +
> +	phy->apbclk =3D devm_clk_get(phy->dev, "apb");
> +	if (IS_ERR(phy->apbclk))
> +		return dev_err_probe(phy->dev, PTR_ERR(phy->apbclk),
> +				     "failed to get apb clk\n");
> +
> +	phy->refclk =3D devm_clk_get(phy->dev, "ref");
> +	if (IS_ERR(phy->refclk))
> +		return dev_err_probe(phy->dev, PTR_ERR(phy->refclk),
> +				     "failed to get ref clk\n");
> +
> +	ret =3D clk_prepare_enable(phy->apbclk);
> +	if (ret) {
> +		dev_err(phy->dev, "failed to enable apbclk\n");
> +		return ret;
> +	}
> +
> +	pm_runtime_get_noresume(phy->dev);
> +	pm_runtime_set_active(phy->dev);
> +	pm_runtime_enable(phy->dev);
> +
> +	ret =3D phy_clk_register(phy);
> +	if (ret) {
> +		dev_err(&pdev->dev, "register clk failed\n");
> +		goto register_clk_failed;
> +	}
> +
> +	pm_runtime_put(phy->dev);
> +
> +	return 0;
> +
> +register_clk_failed:
> +	clk_disable_unprepare(phy->apbclk);
> +
> +	return ret;
> +}
> +
> +static int fsl_samsung_hdmi_phy_remove(struct platform_device *pdev)
> +{
> +	of_clk_del_provider(pdev->dev.of_node);
> +
> +	return 0;
> +}
> +
> +static int fsl_samsung_hdmi_phy_suspend(struct device *dev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy =3D dev_get_drvdata(dev);
> +
> +	clk_disable_unprepare(phy->apbclk);
> +
> +	return 0;
> +}
> +
> +static int fsl_samsung_hdmi_phy_resume(struct device *dev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy =3D dev_get_drvdata(dev);
> +	int ret =3D 0;
> +
> +	ret =3D clk_prepare_enable(phy->apbclk);
> +	if (ret) {
> +		dev_err(phy->dev, "failed to enable apbclk\n");
> +		return ret;
> +	}
> +
> +	if (phy->cur_cfg)
> +		ret =3D fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
> +
> +	return ret;
> +
> +}
> +
> +static DEFINE_RUNTIME_DEV_PM_OPS(fsl_samsung_hdmi_phy_pm_ops,
> +				 fsl_samsung_hdmi_phy_suspend,
> +				 fsl_samsung_hdmi_phy_resume, NULL);
> +
> +static const struct of_device_id fsl_samsung_hdmi_phy_of_match[] =3D {
> +	{
> +		.compatible =3D "fsl,imx8mp-hdmi-phy",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +MODULE_DEVICE_TABLE(of, fsl_samsung_hdmi_phy_of_match);
> +
> +static struct platform_driver fsl_samsung_hdmi_phy_driver =3D {
> +	.probe  =3D fsl_samsung_hdmi_phy_probe,
> +	.remove =3D fsl_samsung_hdmi_phy_remove,
> +	.driver =3D {
> +		.name =3D "fsl-samsung-hdmi-phy",
> +		.of_match_table =3D fsl_samsung_hdmi_phy_of_match,
> +		.pm =3D pm_ptr(&fsl_samsung_hdmi_phy_pm_ops),
> +	},
> +};
> +module_platform_driver(fsl_samsung_hdmi_phy_driver);
> +
> +MODULE_AUTHOR("Sandor Yu <Sandor.yu@nxp.com>");
> +MODULE_DESCRIPTION("SAMSUNG HDMI 2.0 Transmitter PHY Driver");
> +MODULE_LICENSE("GPL");


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


