Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45CF44F7BA3
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 11:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233212AbiDGJbf convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 7 Apr 2022 05:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239660AbiDGJbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 05:31:34 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDD4D1CFE4
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 02:29:34 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncOS8-0004Bg-EB; Thu, 07 Apr 2022 11:29:20 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncOS8-001aLn-C1; Thu, 07 Apr 2022 11:29:18 +0200
Received: from pza by lupine with local (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncOS5-00041P-Ki; Thu, 07 Apr 2022 11:29:17 +0200
Message-ID: <f410271385fc8901d7c1dac0187122eb96e96aaf.camel@pengutronix.de>
Subject: Re: [PATCH v0 07/10] phy: freescale: add Samsung HDMI PHY
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Date:   Thu, 07 Apr 2022 11:29:17 +0200
In-Reply-To: <20220406160123.1272911-8-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
         <20220406160123.1272911-8-l.stach@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Mi, 2022-04-06 at 18:01 +0200, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC.
> 
> Heavily based on the PHY implementation in the downstream kernel
> written by Sandor Yu <Sandor.yu@nxp.com>, but also cleaned up
> quite a bit and extended to support runtime PM.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> FIXME: The PHY configuration could be cleaned up further, it
> currently has a lot of register writes that are same across
> all supported modes.

Agreed.

[...]
> ---
>  drivers/phy/freescale/Kconfig                |    7 +
>  drivers/phy/freescale/Makefile               |    1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 1145 ++++++++++++++++++
>  3 files changed, 1153 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> 
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index f9c54cd02036..f80c92eb7c55 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -26,6 +26,13 @@ config PHY_FSL_IMX8M_PCIE
>  	  Enable this to add support for the PCIE PHY as found on
>  	  i.MX8M family of SOCs.
>  
> +config PHY_FSL_SAMSUNG_HDMI_PHY
> +	tristate "Samsung HDMI PHY support"
> +	depends on OF && HAS_IOMEM
> +	select GENERIC_PHY

Why select GENERIC_PHY when all the driver does is register a clock?

[...]
> +struct fsl_samsung_hdmi_phy {
> +	struct device *dev;
> +	void __iomem *regs;
> +	struct clk *apbclk;
> +	struct clk *refclk;

refclk isn't really used beyond phy_clk_register, it doesn't have to be
stored in struct fsl_samsung_hdmi_phy.

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
> +static void fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
> +					  const struct phy_config *cfg)
> +{
> +	int i;
> +
> +	/* HDMI PHY init */
> +	writeb(REG33_FIX_DA, phy->regs + PHY_REG_33);
> +
> +	for (i = 0; i < PHY_PLL_REGS_NUM; i++)
> +		writeb(cfg->regs[i], phy->regs + i * 4);
> +
> +	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE , phy->regs + PHY_REG_33);
> +}
> +
> +static int phy_clk_prepare(struct clk_hw *hw)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
> +	int ret = 0;
> +	u8 val;
> +
> +	return 0;

I'd say remove this line or pyh_clk_prepare().

> +	ret = readb_poll_timeout(phy->regs + PHY_REG_34, val,
> +				 val & REG34_PLL_LOCK,
> +				 20, 20000);
> +	if (ret)
> +		dev_err(phy->dev, "PLL failed to lock\n");
> +
> +	return ret;
> +}
> +
> +static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
> +					 unsigned long parent_rate)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
> +
> +	if (!phy->cur_cfg)
> +		return 0;
> +
> +	return phy->cur_cfg->clk_rate;
> +}
> +
> +static long phy_clk_round_rate(struct clk_hw *hw,
> +			       unsigned long rate, unsigned long *parent_rate)
> +{
> +	const struct phy_config *phy_cfg = phy_pll_cfg;
> +
> +	for (; phy_cfg->clk_rate != 0; phy_cfg++)
> +		if (phy_cfg->clk_rate == rate)

 * @round_rate: Given a target rate as input, returns the closest rate actually
 *              supported by the clock. The parent rate is an input/output
 *              parameter.

This should round, not -EINVAL on unsupported rates.

> +			break;
> +
> +	if (phy_cfg->clk_rate == 0)
> +		return -EINVAL;
> +
> +	return phy_cfg->clk_rate;
> +}
> +
> +static int phy_clk_set_rate(struct clk_hw *hw,
> +			    unsigned long rate, unsigned long parent_rate)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
> +	const struct phy_config *phy_cfg = phy_pll_cfg;
> +	int ret = 0;

Unnecessary initialization.

> +	u8 val;
> +
> +	for (; phy_cfg->clk_rate != 0; phy_cfg++)
> +		if (phy_cfg->clk_rate == rate)
> +			break;
> +
> +	if (phy_cfg->clk_rate == 0)
> +		return -EINVAL;
> +
> +	phy->cur_cfg = phy_cfg;
> +
> +	fsl_samsung_hdmi_phy_configure(phy, phy_cfg);
> +
> +	ret = readb_poll_timeout(phy->regs + PHY_REG_34, val,
> +				 val & REG34_PLL_LOCK,
> +				 50, 20000);
> +	if (ret)
> +		dev_err(phy->dev, "PLL failed to lock\n");
> +
> +	return ret;
> +}
> +
> +static const struct clk_ops phy_clk_ops = {
> +	.prepare = phy_clk_prepare,
> +	.recalc_rate = phy_clk_recalc_rate,
> +	.round_rate = phy_clk_round_rate,
> +	.set_rate = phy_clk_set_rate,
> +};
> +
> +static int phy_clk_register(struct fsl_samsung_hdmi_phy *phy)
> +{
> +	struct device *dev = phy->dev;
> +	struct device_node *np = dev->of_node;
> +	struct clk_init_data init;
> +	const char *parent_name;
> +	struct clk *phyclk;
> +	int ret;
> +
> +	parent_name = __clk_get_name(phy->refclk);
> +
> +	init.parent_names = &parent_name;
> +	init.num_parents = 1;
> +	init.flags = 0;
> +	init.name = "hdmi_pclk";
> +	init.ops = &phy_clk_ops;
> +
> +	phy->hw.init = &init;
> +
> +	phyclk = devm_clk_register(dev, &phy->hw);
> +	if (IS_ERR(phyclk))
> +		return dev_err_probe(dev, PTR_ERR(phyclk),
> +				     "failed to register clock\n");
> +
> +	ret = of_clk_add_provider(np, of_clk_src_simple_get, phyclk);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to register clock provider\n");
> +
> +	return 0;
> +}
> +
> +static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy;
> +	int ret;
> +
> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev = &pdev->dev;
> +
> +	phy->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(phy->regs))
> +		return PTR_ERR(phy->regs);
> +
> +	phy->apbclk = devm_clk_get(phy->dev, "apb");
> +	if (IS_ERR(phy->apbclk))
> +		return dev_err_probe(phy->dev, PTR_ERR(phy->apbclk),
> +				     "failed to get apb clk\n");
> +
> +	phy->refclk = devm_clk_get(phy->dev, "ref");
> +	if (IS_ERR(phy->refclk))
> +		return dev_err_probe(phy->dev, PTR_ERR(phy->refclk),
> +				     "failed to get ref clk\n");
> +
> +	ret = clk_prepare_enable(phy->apbclk);
> +	if (ret) {
> +		dev_err(phy->dev, "failed to enable apbclk\n");
> +		return ret;
> +	}
> +
> +	pm_runtime_get_noresume(phy->dev);
> +	pm_runtime_set_active(phy->dev);
> +	pm_runtime_enable(phy->dev);
> +
> +	ret = phy_clk_register(phy);
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
> +#ifdef CONFIG_PM
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
> +	int ret;
> +
> +	ret = clk_prepare_enable(phy->apbclk);
> +	if (ret) {
> +		dev_err(phy->dev, "failed to enable apbclk\n");
> +		return ret;
> +	}
> +
> +	if (phy->cur_cfg)
> +		fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);

Not checking PLL lock during resume?


regards
Philipp
