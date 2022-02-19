Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEDB24BC6BC
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 08:33:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237866AbiBSHdX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 02:33:23 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:57568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbiBSHdW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 02:33:22 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DD4E50E3C
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 23:33:03 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 61F7547F;
        Sat, 19 Feb 2022 08:33:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1645255981;
        bh=1PcP5NFUlV2CZ2sRFjeLtMwSCSCVUNTVqMR/f+jeDUU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FWm5NR5iQyCOSoUgQbNs7teuS0y4K/xVG3fiupAkFpGbHyMGpQ7eCNdBR66EvXt+I
         B9y0NrFp3lIofDqcZK8oiSDFheK3K8lhFH4XZ1j9+eJvFfv1JYSAlf40eKz/jufhjI
         aPMhYWQz8sO+CmbwaPBhjcnpgzMVdTgXTyizEZUQ=
Date:   Sat, 19 Feb 2022 09:32:51 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v2 1/9] soc: imx: gpcv2: add PGC control register
 indirection
Message-ID: <YhCdI5VKIkAJJOmH@pendragon.ideasonboard.com>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-1-l.stach@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

Thank you for the patch.

On Mon, Feb 07, 2022 at 08:25:39PM +0100, Lucas Stach wrote:
> The PGC control registers in the shared (not per-PGC) region of the
> GPC address space have different offsets on i.MX8MP to make space for
> additional interrupt control registers.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/soc/imx/gpcv2.c | 43 ++++++++++++++++++++++++++++++-----------
>  1 file changed, 32 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index 3e59d479d001..01f46b078df3 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -184,9 +184,17 @@
>  
>  #define GPC_PGC_CTRL_PCR		BIT(0)
>  
> +struct imx_pgc_regs {
> +	u16 map;
> +	u16 pup;
> +	u16 pdn;
> +	u16 hsk;
> +};
> +
>  struct imx_pgc_domain {
>  	struct generic_pm_domain genpd;
>  	struct regmap *regmap;
> +	const struct imx_pgc_regs *regs;
>  	struct regulator *regulator;
>  	struct reset_control *reset;
>  	struct clk_bulk_data *clks;
> @@ -210,6 +218,7 @@ struct imx_pgc_domain_data {
>  	const struct imx_pgc_domain *domains;
>  	size_t domains_num;
>  	const struct regmap_access_table *reg_access_table;
> +	const struct imx_pgc_regs *pgc_regs;
>  };
>  
>  static inline struct imx_pgc_domain *
> @@ -249,14 +258,14 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>  
>  	if (domain->bits.pxx) {
>  		/* request the domain to power up */
> -		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
> +		regmap_update_bits(domain->regmap, domain->regs->pup,
>  				   domain->bits.pxx, domain->bits.pxx);
>  		/*
>  		 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
>  		 * for PUP_REQ/PDN_REQ bit to be cleared
>  		 */
>  		ret = regmap_read_poll_timeout(domain->regmap,
> -					       GPC_PU_PGC_SW_PUP_REQ, reg_val,
> +					       domain->regs->pup, reg_val,
>  					       !(reg_val & domain->bits.pxx),
>  					       0, USEC_PER_MSEC);
>  		if (ret) {
> @@ -278,11 +287,11 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>  
>  	/* request the ADB400 to power up */
>  	if (domain->bits.hskreq) {
> -		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
> +		regmap_update_bits(domain->regmap, domain->regs->hsk,
>  				   domain->bits.hskreq, domain->bits.hskreq);
>  
>  		/*
> -		 * ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK, reg_val,
> +		 * ret = regmap_read_poll_timeout(domain->regmap, domain->regs->hsk, reg_val,
>  		 *				  (reg_val & domain->bits.hskack), 0,
>  		 *				  USEC_PER_MSEC);
>  		 * Technically we need the commented code to wait handshake. But that needs
> @@ -329,10 +338,10 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
>  
>  	/* request the ADB400 to power down */
>  	if (domain->bits.hskreq) {
> -		regmap_clear_bits(domain->regmap, GPC_PU_PWRHSK,
> +		regmap_clear_bits(domain->regmap, domain->regs->hsk,
>  				  domain->bits.hskreq);
>  
> -		ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK,
> +		ret = regmap_read_poll_timeout(domain->regmap, domain->regs->hsk,
>  					       reg_val,
>  					       !(reg_val & domain->bits.hskack),
>  					       0, USEC_PER_MSEC);
> @@ -350,14 +359,14 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
>  		}
>  
>  		/* request the domain to power down */
> -		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
> +		regmap_update_bits(domain->regmap, domain->regs->pdn,
>  				   domain->bits.pxx, domain->bits.pxx);
>  		/*
>  		 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
>  		 * for PUP_REQ/PDN_REQ bit to be cleared
>  		 */
>  		ret = regmap_read_poll_timeout(domain->regmap,
> -					       GPC_PU_PGC_SW_PDN_REQ, reg_val,
> +					       domain->regs->pdn, reg_val,
>  					       !(reg_val & domain->bits.pxx),
>  					       0, USEC_PER_MSEC);
>  		if (ret) {
> @@ -441,10 +450,18 @@ static const struct regmap_access_table imx7_access_table = {
>  	.n_yes_ranges	= ARRAY_SIZE(imx7_yes_ranges),
>  };
>  
> +static const struct imx_pgc_regs imx7_pgc_regs = {
> +	.map = GPC_PGC_CPU_MAPPING,
> +	.pup = GPC_PU_PGC_SW_PUP_REQ,
> +	.pdn = GPC_PU_PGC_SW_PDN_REQ,
> +	.hsk = GPC_PU_PWRHSK,
> +};
> +
>  static const struct imx_pgc_domain_data imx7_pgc_domain_data = {
>  	.domains = imx7_pgc_domains,
>  	.domains_num = ARRAY_SIZE(imx7_pgc_domains),
>  	.reg_access_table = &imx7_access_table,
> +	.pgc_regs = &imx7_pgc_regs,
>  };
>  
>  static const struct imx_pgc_domain imx8m_pgc_domains[] = {
> @@ -613,6 +630,7 @@ static const struct imx_pgc_domain_data imx8m_pgc_domain_data = {
>  	.domains = imx8m_pgc_domains,
>  	.domains_num = ARRAY_SIZE(imx8m_pgc_domains),
>  	.reg_access_table = &imx8m_access_table,
> +	.pgc_regs = &imx7_pgc_regs,
>  };
>  
>  static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
> @@ -803,6 +821,7 @@ static const struct imx_pgc_domain_data imx8mm_pgc_domain_data = {
>  	.domains = imx8mm_pgc_domains,
>  	.domains_num = ARRAY_SIZE(imx8mm_pgc_domains),
>  	.reg_access_table = &imx8mm_access_table,
> +	.pgc_regs = &imx7_pgc_regs,
>  };
>  
>  static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
> @@ -894,6 +913,7 @@ static const struct imx_pgc_domain_data imx8mn_pgc_domain_data = {
>  	.domains = imx8mn_pgc_domains,
>  	.domains_num = ARRAY_SIZE(imx8mn_pgc_domains),
>  	.reg_access_table = &imx8mn_access_table,
> +	.pgc_regs = &imx7_pgc_regs,
>  };
>  
>  static int imx_pgc_domain_probe(struct platform_device *pdev)
> @@ -926,7 +946,7 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
>  	pm_runtime_enable(domain->dev);
>  
>  	if (domain->bits.map)
> -		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
> +		regmap_update_bits(domain->regmap, domain->regs->map,
>  				   domain->bits.map, domain->bits.map);
>  
>  	ret = pm_genpd_init(&domain->genpd, NULL, true);
> @@ -952,7 +972,7 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
>  	pm_genpd_remove(&domain->genpd);
>  out_domain_unmap:
>  	if (domain->bits.map)
> -		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
> +		regmap_update_bits(domain->regmap, domain->regs->map,
>  				   domain->bits.map, 0);
>  	pm_runtime_disable(domain->dev);
>  
> @@ -967,7 +987,7 @@ static int imx_pgc_domain_remove(struct platform_device *pdev)
>  	pm_genpd_remove(&domain->genpd);
>  
>  	if (domain->bits.map)
> -		regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
> +		regmap_update_bits(domain->regmap, domain->regs->map,
>  				   domain->bits.map, 0);
>  
>  	pm_runtime_disable(domain->dev);
> @@ -1098,6 +1118,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
>  
>  		domain = pd_pdev->dev.platform_data;
>  		domain->regmap = regmap;
> +		domain->regs = domain_data->pgc_regs;
>  		domain->genpd.power_on  = imx_pgc_power_up;
>  		domain->genpd.power_off = imx_pgc_power_down;
>  
> 

-- 
Regards,

Laurent Pinchart
