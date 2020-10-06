Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 899B928529D
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 21:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726073AbgJFTmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 15:42:17 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:35282 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725943AbgJFTmQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 15:42:16 -0400
Received: by mail-ot1-f67.google.com with SMTP id s66so13431021otb.2
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 12:42:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oMoNfavxvblIfRmkSezl0TERvE0PCRTDTAkpdHlbN1I=;
        b=JDe7+DmmTP9k96d0sEPQYNbaSywXwWYEFOH5QlhRD2h4oR4WCnqHC+2lHFgXpjJCDv
         BiHrkdh8aVdOsOsssfYyU8KUyVHvZLNm9l6I1sy+HepX0Fxm5zSIYfkblKpseqT2oAVu
         1tLj34dTilQEOfKC+ipoUnWeQbZMdlSie8IFI/fh95OHfrKnan4l5vQHocfcTw9LOLRC
         kZvI2iwMbm/4cwIgq52uqv+msdKNRqpfUQi+/yb5U+13lq113F6FvPP316Kdc23GTJeB
         VeFK8e1DxKPAprA3XGZAwbSzyzl9eJ5y7KxT0higaBDp8qO3N9QX6WzWPlKMVDuVjvn2
         7vWQ==
X-Gm-Message-State: AOAM531x5PN3vWW+kx2SQ4GU3vFGrPvI3nK0b1hUkaOWAtDzjyVd/y1c
        DZF4ajSNgU83jZ5oOlwGLg==
X-Google-Smtp-Source: ABdhPJzwxqbKiOvCs5GwsyjAErqx3aN1H/wAhum4+pyyAtGtuPidpk1NMbZG5pXXfWeQkwfbycV2BQ==
X-Received: by 2002:a9d:491:: with SMTP id 17mr4064278otm.338.1602013335758;
        Tue, 06 Oct 2020 12:42:15 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m7sm1486436otk.74.2020.10.06.12.42.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 12:42:15 -0700 (PDT)
Received: (nullmailer pid 2707920 invoked by uid 1000);
        Tue, 06 Oct 2020 19:42:14 -0000
Date:   Tue, 6 Oct 2020 14:42:14 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: Re: [PATCH 07/11] soc: imx: gpcv2: add support for optional resets
Message-ID: <20201006194214.GA2702908@bogus>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-8-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200930155006.535712-8-l.stach@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 05:50:02PM +0200, Lucas Stach wrote:
> Normally the reset for the devices inside the power domain is
> triggered automatically from the PGC in the power-up sequencing,
> however on i.MX8MM this doesn't work for the GPU power domains.
> 
> Add support for triggering the reset explicitly during the power
> up sequencing.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../devicetree/bindings/power/fsl,imx-gpcv2.yaml    |  6 ++++++
>  drivers/soc/imx/gpcv2.c                             | 13 +++++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> index bde09a0b2da3..9773771b9000 100644
> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> @@ -62,6 +62,12 @@ properties:
>  
>            power-supply: true
>  
> +          resets:
> +            description: |
> +              A number of phandles to resets that need to be asserted during
> +              power-up sequencing of the domain.
> +            minItems: 1

What's the max? It's going to default to 1 if you don't say.

> +
>          required:
>            - '#power-domain-cells'
>            - reg
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index db93fef0c76b..76aa8a67d8a7 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -15,6 +15,7 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/reset.h>
>  #include <linux/sizes.h>
>  #include <dt-bindings/power/imx7-power.h>
>  #include <dt-bindings/power/imx8mq-power.h>
> @@ -112,6 +113,7 @@ struct imx_pgc_domain {
>  	struct regulator *regulator;
>  	struct clk *clk[GPC_CLK_MAX];
>  	int num_clks;
> +	struct reset_control *reset;
>  
>  	unsigned int pgc;
>  
> @@ -167,6 +169,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>  		}
>  	}
>  
> +	reset_control_assert(domain->reset);
> +
>  	if (domain->bits.pxx) {
>  		/* request the domain to power up */
>  		regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
> @@ -189,6 +193,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>  				   GPC_PGC_CTRL_PCR, 0);
>  	}
>  
> +	reset_control_deassert(domain->reset);
> +
>  	/* request the ADB400 to power up */
>  	if (domain->bits.hskreq) {
>  		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
> @@ -577,6 +583,13 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
>  				      domain->voltage, domain->voltage);
>  	}
>  
> +	domain->reset = devm_reset_control_array_get_optional_exclusive(domain->dev);
> +	if (IS_ERR(domain->reset)) {
> +		if (PTR_ERR(domain->reset) != -EPROBE_DEFER)
> +			dev_err(domain->dev, "Failed to get domain's reset\n");
> +		return PTR_ERR(domain->reset);
> +	}
> +
>  	ret = imx_pgc_get_clocks(domain);
>  	if (ret) {
>  		if (ret != -EPROBE_DEFER)
> -- 
> 2.20.1
> 
