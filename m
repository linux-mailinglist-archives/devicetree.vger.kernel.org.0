Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE4EE64E887
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 10:15:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbiLPJPx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 04:15:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiLPJPw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 04:15:52 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0FF11A076
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 01:15:50 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1p66oh-0005UO-Pa; Fri, 16 Dec 2022 10:15:43 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1p66og-0005BT-66; Fri, 16 Dec 2022 10:15:42 +0100
Date:   Fri, 16 Dec 2022 10:15:42 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Sandor Yu <Sandor.yu@nxp.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        patchwork-lst@pengutronix.de, Inki Dae <inki.dae@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20221216091542.ulctjdxbz552ar2w@pengutronix.de>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
 <20221215201100.2897501-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221215201100.2897501-2-l.stach@pengutronix.de>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

thanks for this series, one comment please see below.

On 22-12-15, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> v2: use DEFINE_RUNTIME_DEV_PM_OPS
> ---
>  drivers/phy/freescale/Kconfig                |   6 +
>  drivers/phy/freescale/Makefile               |   1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 694 +++++++++++++++++++
>  3 files changed, 701 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c

...

> +static int fsl_samsung_hdmi_phy_suspend(struct device *dev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = dev_get_drvdata(dev);
> +
> +	clk_disable_unprepare(phy->apbclk);
> +
> +	return 0;
> +}
> +
> +static int fsl_samsung_hdmi_phy_resume(struct device *dev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = dev_get_drvdata(dev);
> +	int ret = 0;
> +
> +	ret = clk_prepare_enable(phy->apbclk);
> +	if (ret) {
> +		dev_err(phy->dev, "failed to enable apbclk\n");
> +		return ret;
> +	}
> +
> +	if (phy->cur_cfg)
> +		ret = fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
> +
> +	return ret;
> +
> +}
> +
> +DEFINE_RUNTIME_DEV_PM_OPS(fsl_samsung_hdmi_phy_pm_ops,
> +			  fsl_samsung_hdmi_phy_suspend,
> +			  fsl_samsung_hdmi_phy_resume, NULL);

This must be 'static DEFINE_RUNTIME_DEV_PM_OPS()' since the define don't
add this for you.

Regards,
  Marco
