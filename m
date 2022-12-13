Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E093564B9DB
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 17:35:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235810AbiLMQe6 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 13 Dec 2022 11:34:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234735AbiLMQe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 11:34:57 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CF2D115B
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 08:34:56 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1p58Ew-0002Ff-Kb; Tue, 13 Dec 2022 17:34:46 +0100
Message-ID: <ac3096c8f8c0b5b95d54d2cf93cb0f8d743c3d60.camel@pengutronix.de>
Subject: Re: [PATCH 4/4] soc: imx: imx8mp-blk-ctrl: expose high performance
 PLL clock
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     marex@denx.de, devicetree@vger.kernel.org,
        richard.leitner@linux.dev, marcel.ziswiler@toradex.com,
        tharvey@gateworks.com, patchwork-lst@pengutronix.de,
        alexander.stein@ew.tq-group.com,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        lukas@mntre.com, linux-arm-kernel@lists.infradead.org
Date:   Tue, 13 Dec 2022 17:34:44 +0100
In-Reply-To: <20221213160112.1900410-4-l.stach@pengutronix.de>
References: <20221213160112.1900410-1-l.stach@pengutronix.de>
         <20221213160112.1900410-4-l.stach@pengutronix.de>
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

Am Dienstag, dem 13.12.2022 um 17:01 +0100 schrieb Lucas Stach:
> Expose the high performance PLL as a regular Linux clock, so the
> PCIe PHY can use it when there is no external refclock provided.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/soc/imx/imx8mp-blk-ctrl.c | 99 +++++++++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
> 
> diff --git a/drivers/soc/imx/imx8mp-blk-ctrl.c b/drivers/soc/imx/imx8mp-blk-ctrl.c
> index b3d9f6e083ba..ad5aebd640eb 100644
> --- a/drivers/soc/imx/imx8mp-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8mp-blk-ctrl.c
> @@ -5,6 +5,7 @@
>   */
>  
>  #include <linux/clk.h>
> +#include <linux/clk-provider.h>
>  #include <linux/device.h>
>  #include <linux/interconnect.h>
>  #include <linux/module.h>
> @@ -21,6 +22,15 @@
>  #define  USB_CLOCK_MODULE_EN	BIT(1)
>  #define  PCIE_PHY_APB_RST	BIT(4)
>  #define  PCIE_PHY_INIT_RST	BIT(5)
> +#define GPR_REG1		0x4
> +#define  PLL_LOCK		BIT(13)
> +#define GPR_REG2		0x8
> +#define  P_PLL_MASK		GENMASK(5, 0)
> +#define  M_PLL_MASK		GENMASK(15, 6)
> +#define  S_PLL_MASK		GENMASK(18, 16)
> +#define GPR_REG3		0xc
> +#define  PLL_CKE		BIT(17)
> +#define  PLL_RST		BIT(31)
>  
>  struct imx8mp_blk_ctrl_domain;
>  
> @@ -74,6 +84,94 @@ to_imx8mp_blk_ctrl_domain(struct generic_pm_domain *genpd)
>  	return container_of(genpd, struct imx8mp_blk_ctrl_domain, genpd);
>  }
>  
> +struct clk_hsio_pll {
> +	struct clk_hw	hw;
> +	struct regmap *regmap;
> +};
> +
> +static inline struct clk_hsio_pll *to_clk_hsio_pll(struct clk_hw *hw)
> +{
> +	return container_of(hw, struct clk_hsio_pll, hw);
> +}
> +
> +static int clk_hsio_pll_prepare(struct clk_hw *hw)
> +{
> +	struct clk_hsio_pll *clk = to_clk_hsio_pll(hw);
> +	u32 val;
> +
> +	/* set the PLL configuration */
> +	regmap_update_bits(clk->regmap, GPR_REG2,
> +			   P_PLL_MASK | M_PLL_MASK | S_PLL_MASK,
> +			   FIELD_PREP(P_PLL_MASK, 12) |
> +			   FIELD_PREP(M_PLL_MASK, 800) |
> +			   FIELD_PREP(S_PLL_MASK, 4));
> +
> +	/* de-assert PLL reset */
> +	regmap_update_bits(clk->regmap, GPR_REG3, PLL_RST, PLL_RST);
> +
> +	/* enable PLL */
> +	regmap_update_bits(clk->regmap, GPR_REG3, PLL_CKE, PLL_CKE);
> +
> +	return regmap_read_poll_timeout(clk->regmap, GPR_REG1, val,
> +					val & PLL_LOCK, 10, 100);
> +}
> +
> +static void clk_hsio_pll_unprepare(struct clk_hw *hw)
> +{
> +	struct clk_hsio_pll *clk = to_clk_hsio_pll(hw);
> +
> +	regmap_update_bits(clk->regmap, GPR_REG3, PLL_RST | PLL_CKE, 0);
> +}
> +
> +static int clk_hsio_pll_is_prepared(struct clk_hw *hw)
> +{
> +	struct clk_hsio_pll *clk = to_clk_hsio_pll(hw);
> +
> +	return regmap_test_bits(clk->regmap, GPR_REG1, PLL_LOCK);
> +}
> +
> +static unsigned long clk_hsio_pll_recalc_rate(struct clk_hw *hw,
> +					      unsigned long parent_rate)
> +{
> +	return 100000000;
> +}
> +
> +static const struct clk_ops clk_hsio_pll_ops = {
> +	.prepare = clk_hsio_pll_prepare,
> +	.unprepare = clk_hsio_pll_unprepare,
> +	.is_prepared = clk_hsio_pll_is_prepared,
> +	.recalc_rate = clk_hsio_pll_recalc_rate,
> +};
> +
> +int imx8mp_hsio_blk_ctrl_probe(struct imx8mp_blk_ctrl *bc)
> +{
> +	struct clk_hsio_pll *clk_hsio_pll;
> +	struct clk_hw *hw;
> +	struct clk_init_data init = {};
> +	int ret;
> +
> +	printk("%s\n", __func__);

This printk should obviously not be here. Removed locally. I'll wait
for some feedback before sending v2.

Regards,
Lucas

> +
> +	clk_hsio_pll = devm_kzalloc(bc->dev, sizeof(*clk_hsio_pll), GFP_KERNEL);
> +	if (!clk_hsio_pll)
> +		return -ENOMEM;
> +
> +	init.name = "hsio_pll";
> +	init.ops = &clk_hsio_pll_ops;
> +	init.parent_names = (const char *[]){"osc_24m"};
> +	init.num_parents = 1;
> +
> +	clk_hsio_pll->regmap = bc->regmap;
> +	clk_hsio_pll->hw.init = &init;
> +
> +	hw = &clk_hsio_pll->hw;
> +	ret = devm_clk_hw_register(bc->dev, hw);
> +	if (ret)
> +		return ret;
> +
> +	return devm_of_clk_add_hw_provider(bc->dev, of_clk_hw_simple_get, hw);
> +}
> +
>  static void imx8mp_hsio_blk_ctrl_power_on(struct imx8mp_blk_ctrl *bc,
>  					  struct imx8mp_blk_ctrl_domain *domain)
>  {
> @@ -188,6 +286,7 @@ static const struct imx8mp_blk_ctrl_domain_data imx8mp_hsio_domain_data[] = {
>  
>  static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
>  	.max_reg = 0x24,
> +	.probe = imx8mp_hsio_blk_ctrl_probe,
>  	.power_on = imx8mp_hsio_blk_ctrl_power_on,
>  	.power_off = imx8mp_hsio_blk_ctrl_power_off,
>  	.power_notifier_fn = imx8mp_hsio_power_notifier,

