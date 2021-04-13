Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0CA035E5B1
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 19:54:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238932AbhDMRyu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 13:54:50 -0400
Received: from mail-pg1-f170.google.com ([209.85.215.170]:36667 "EHLO
        mail-pg1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232240AbhDMRx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 13:53:57 -0400
Received: by mail-pg1-f170.google.com with SMTP id j7so3066413pgi.3
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 10:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=iGGtMZKX2YLInurh4BISwmydKhxsm8+tXWheKKbrJIs=;
        b=rfQecIKorawU48j142/9Powbab19AS70OsdZMCxOaMfzjXotbKEKLhMqB6uU6S434u
         CNZACcrqivLnL6gIbONfmDUaZX3MZLQYT6VbxNNuCP01E71jspFIvM+hyJsEEGNJNkz2
         F4+6IzZzlfYkAiZl1QijjOIF5excLkeQOCZgco+bFM12pR7FfsUn8ySz/Gsd94lrxzes
         FsgkyzWDs6g3CiqSZ8mMP3L2wcC4DhG2DrfvnQyhoMgwbCiUfW09Sb3xnMNd9BGo99s7
         EN5TkCAHM4iiTi7H4C0H6LrwUIY9oL7Nexu4ySuBTf3o2XyZfA/Nw6EtZDtIClTX+Abw
         tn5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iGGtMZKX2YLInurh4BISwmydKhxsm8+tXWheKKbrJIs=;
        b=AKV27USMLAMafV1S8+d1+a0wxFx20NoAv8/a9LwZO2ehHKhyTyabHfxxTUXbqacuIe
         YqTIE3wlkuknz5zdQ0KdgbGa9xJhxl00+dvnhnx3izZoEOU/wVoHDM23GfEddzxgksku
         WcOMvb/BpMmFCPjo6zTw2LCGpa1Lf+DbN6JQCB6mMMMtb8A671Dm2YpyVicdJwe8C9aj
         /qzdHMu9v6YVUUvTOelspPRRakg3MIr6nSS2ujboHi8GjmKQT7g7wUoiFBRHPXG15kjF
         0c4l6sGweSdrZRf51GYwEI4/WQ2MTCL6/cr2y1TuEtyEjM9FDj3+ki5NWSNCBeGuFmQM
         yHgw==
X-Gm-Message-State: AOAM531yZZNaZDXcq6dctHhk9LdDKbduZ/dNmRhzY60F6GIKlaoWVtBw
        unTnG7UT0kxYLttbNX1FrnNj2w==
X-Google-Smtp-Source: ABdhPJyyEXg62i5BdZiDu0m3S1V8MbiV5Jtp4AJkMbfRpffdDq9CsEFWExEnMEN31utSbTMwGh4KWA==
X-Received: by 2002:a63:650:: with SMTP id 77mr33021690pgg.190.1618336357575;
        Tue, 13 Apr 2021 10:52:37 -0700 (PDT)
Received: from xps15 (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id w16sm13047504pfj.87.2021.04.13.10.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 10:52:37 -0700 (PDT)
Date:   Tue, 13 Apr 2021 11:52:35 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     peng.fan@oss.nxp.com
Cc:     ohad@wizery.com, bjorn.andersson@linaro.org,
        o.rempel@pengutronix.de, robh+dt@kernel.org,
        devicetree@vger.kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-remoteproc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3 8/8] remoteproc: imx_rproc: support i.MX8MN/P
Message-ID: <20210413175235.GF750651@xps15>
References: <1617846898-13662-1-git-send-email-peng.fan@oss.nxp.com>
 <1617846898-13662-9-git-send-email-peng.fan@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1617846898-13662-9-git-send-email-peng.fan@oss.nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 08, 2021 at 09:54:58AM +0800, peng.fan@oss.nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX8MN/P remote processor(Cortex-M7) support, we are using ARM
> SMCCC to start/stop M core, not using regmap interface.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/remoteproc/imx_rproc.c | 89 +++++++++++++++++++++++++++++++---
>  1 file changed, 82 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index b911a7539897..9351626f09c0 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2017 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
>   */
>  
> +#include <linux/arm-smccc.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <linux/interrupt.h>
> @@ -50,6 +51,11 @@
>  
>  #define IMX_RPROC_MEM_MAX		32
>  
> +#define IMX_SIP_RPROC			0xC2000005
> +#define IMX_SIP_RPROC_START		0x00
> +#define IMX_SIP_RPROC_STARTED		0x01
> +#define IMX_SIP_RPROC_STOP		0x02
> +
>  /**
>   * struct imx_rproc_mem - slim internal memory structure
>   * @cpu_addr: MPU virtual address of the memory region
> @@ -119,6 +125,36 @@ struct imx_rproc {
>  	enum imx_rproc_mode		mode;
>  };
>  
> +static const struct imx_rproc_att imx_rproc_att_imx8mn[] = {
> +	/* dev addr , sys addr  , size	    , flags */
> +	/* ITCM   */
> +	{ 0x00000000, 0x007E0000, 0x00020000, ATT_OWN },
> +	/* OCRAM_S */
> +	{ 0x00180000, 0x00180000, 0x00009000, 0 },
> +	/* OCRAM */
> +	{ 0x00900000, 0x00900000, 0x00020000, 0 },
> +	/* OCRAM */
> +	{ 0x00920000, 0x00920000, 0x00020000, 0 },
> +	/* OCRAM */
> +	{ 0x00940000, 0x00940000, 0x00050000, 0 },
> +	/* QSPI Code - alias */
> +	{ 0x08000000, 0x08000000, 0x08000000, 0 },
> +	/* DDR (Code) - alias */
> +	{ 0x10000000, 0x40000000, 0x0FFE0000, 0 },
> +	/* DTCM */
> +	{ 0x20000000, 0x00800000, 0x00020000, ATT_OWN },
> +	/* OCRAM_S - alias */
> +	{ 0x20180000, 0x00180000, 0x00008000, ATT_OWN },
> +	/* OCRAM */
> +	{ 0x20200000, 0x00900000, 0x00020000, ATT_OWN },
> +	/* OCRAM */
> +	{ 0x20220000, 0x00920000, 0x00020000, ATT_OWN },
> +	/* OCRAM */
> +	{ 0x20240000, 0x00940000, 0x00040000, ATT_OWN },
> +	/* DDR (Data) */
> +	{ 0x40000000, 0x40000000, 0x80000000, 0 },
> +};
> +
>  static const struct imx_rproc_att imx_rproc_att_imx8mq[] = {
>  	/* dev addr , sys addr  , size	    , flags */
>  	/* TCML - alias */
> @@ -205,6 +241,12 @@ static const struct imx_rproc_att imx_rproc_att_imx6sx[] = {
>  	{ 0x80000000, 0x80000000, 0x60000000, 0 },
>  };
>  
> +static const struct imx_rproc_dcfg imx_rproc_cfg_imx8mn = {
> +	.att		= imx_rproc_att_imx8mn,
> +	.att_size	= ARRAY_SIZE(imx_rproc_att_imx8mn),
> +	.method		= IMX_RPROC_SMC,
> +};
> +
>  static const struct imx_rproc_dcfg imx_rproc_cfg_imx8mq = {
>  	.src_reg	= IMX7D_SRC_SCR,
>  	.src_mask	= IMX7D_M4_RST_MASK,
> @@ -246,12 +288,24 @@ static int imx_rproc_start(struct rproc *rproc)
>  	struct imx_rproc *priv = rproc->priv;
>  	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
>  	struct device *dev = priv->dev;
> +	struct arm_smccc_res res;
>  	int ret;
>  
> -	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> -				 dcfg->src_mask, dcfg->src_start);
> +	switch (dcfg->method) {
> +	case IMX_RPROC_MMIO:
> +		ret = regmap_update_bits(priv->regmap, dcfg->src_reg, dcfg->src_mask,
> +					 dcfg->src_start);
> +		break;
> +	case IMX_RPROC_SMC:
> +		arm_smccc_smc(IMX_SIP_RPROC, IMX_SIP_RPROC_START, 0, 0, 0, 0, 0, 0, &res);
> +		ret = res.a0;
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
>  	if (ret)
> -		dev_err(dev, "Failed to enable M4!\n");
> +		dev_err(dev, "Failed to enable remote cores!\n");
>  
>  	return ret;
>  }
> @@ -261,12 +315,26 @@ static int imx_rproc_stop(struct rproc *rproc)
>  	struct imx_rproc *priv = rproc->priv;
>  	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
>  	struct device *dev = priv->dev;
> +	struct arm_smccc_res res;
>  	int ret;
>  
> -	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> -				 dcfg->src_mask, dcfg->src_stop);
> +	switch (dcfg->method) {
> +	case IMX_RPROC_MMIO:
> +		ret = regmap_update_bits(priv->regmap, dcfg->src_reg, dcfg->src_mask,
> +					 dcfg->src_stop);
> +		break;
> +	case IMX_RPROC_SMC:
> +		arm_smccc_smc(IMX_SIP_RPROC, IMX_SIP_RPROC_STOP, 0, 0, 0, 0, 0, 0, &res);
> +		ret = res.a0;
> +		if (res.a1)
> +			dev_info(dev, "Not in wfi, force stopped\n");
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
>  	if (ret)
> -		dev_err(dev, "Failed to stop M4!\n");
> +		dev_err(dev, "Failed to stop remote cores\n");
>  
>  	return ret;
>  }
> @@ -600,6 +668,7 @@ static int imx_rproc_detect_mode(struct imx_rproc *priv)
>  {
>  	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
>  	struct device *dev = priv->dev;
> +	struct arm_smccc_res res;
>  	int ret;
>  	u32 val;
>  
> @@ -616,8 +685,12 @@ static int imx_rproc_detect_mode(struct imx_rproc *priv)
>  			priv->mode = IMX_RPROC_EARLY_BOOT;
>  	}
>  
> -	if (dcfg->method == IMX_RPROC_NONE)
> +	if (dcfg->method == IMX_RPROC_NONE) {
>  		priv->mode = IMX_RPROC_EARLY_BOOT;
> +	} else if (dcfg->method == IMX_RPROC_SMC) {
> +		arm_smccc_smc(IMX_SIP_RPROC, IMX_SIP_RPROC_STARTED, 0, 0, 0, 0, 0, 0, &res);
> +		priv->mode = res.a0 ? IMX_RPROC_EARLY_BOOT : IMX_RPROC_NORMAL;
> +	}

When all patches have been applied this function is really hard to read.  I
suggest using a switch() statement like you did in imx_rproc_start() and
imx_rproc_stop().

Thanks,
Mathieu

>  
>  	if (priv->mode == IMX_RPROC_EARLY_BOOT)
>  		priv->rproc->state = RPROC_DETACHED;
> @@ -747,6 +820,8 @@ static const struct of_device_id imx_rproc_of_match[] = {
>  	{ .compatible = "fsl,imx6sx-cm4", .data = &imx_rproc_cfg_imx6sx },
>  	{ .compatible = "fsl,imx8mq-cm4", .data = &imx_rproc_cfg_imx8mq },
>  	{ .compatible = "fsl,imx8mm-cm4", .data = &imx_rproc_cfg_imx8mq },
> +	{ .compatible = "fsl,imx8mn-cm7", .data = &imx_rproc_cfg_imx8mn },
> +	{ .compatible = "fsl,imx8mp-cm7", .data = &imx_rproc_cfg_imx8mn },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, imx_rproc_of_match);
> -- 
> 2.30.0
> 
