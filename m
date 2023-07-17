Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13B5B7569DD
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 19:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229861AbjGQRKW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 13:10:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbjGQRKH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 13:10:07 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED44131
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 10:10:06 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6686708c986so4867277b3a.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 10:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689613806; x=1692205806;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ui+5kFaQhEBk/elAgYltOKQsUH4OF0/XGE8UzsMb61M=;
        b=hZkcqmTWpwz6l3X+yRVS+3eyE9e6WH73zBq+ZqaKx/EFC7QTbvEVfvQ6K4ed7xhq/9
         pX1z0TOwttgKekgJZ3a/fQlGAIvw+VzrgRnxbOsfTbCtC8g8vEO7MU56mDphY3bJKiRr
         +LA80t6lkbKXrqS86nZS5/KTCwm2GE194ttbXJ18E5wL9VNt4KSZMQLBtp7MWVivq/DW
         QIrg3BSGWPepHYI4v9T/JR/xTMAZBPS+RNEQT/hZIoaSok9OinlAlQQJ3GXGvHBrI5zm
         9E7pzPrLwoR7MbhZ0r7IIBo88DYRxlW5U8wczj3kUHn7NYPfvuIAoD9EHL1ilmPkdn5P
         J7ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689613806; x=1692205806;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ui+5kFaQhEBk/elAgYltOKQsUH4OF0/XGE8UzsMb61M=;
        b=DoWxVVUzxKjGHUP4RgbY5aRpRw6GWLCn593TuRKpXTgilUn+O8cLszWoW+cE40j+bi
         7IvnlrV+IReQDHPhobopXygvg/ZuHlE0K1lB+B6nxGwqBJuX+Sche+HAr1NvCUT25384
         F2BtcdpW0AhJ0ACb8tdmaN04wv3hSnuoMDAX9Kf1cjMLmEZ16Dmrnkrw/6QqBw+7U1c3
         35Pr1X0mzI2o5yPIkiH4yoEpKURGLSxH2/EiX96JU7Ee5MiXeo1moMPpFkrICcTrme+K
         rj+GsIChwI7VTRiz/qs+ZpHhYe8aTYaJKN9L2N7oWox1Q8cLOiKmtDsmlqIr8nGcB/Hs
         Syng==
X-Gm-Message-State: ABy/qLYhz2pOMV5T0tFjfoHrrij+Kf7ycSBLcvCyM+NwFlWDVNMUte60
        hhZu/24bxBLZmQSx7LyNwHRfng==
X-Google-Smtp-Source: APBJJlE5EMPbRsXVLlVD6FoW2+kRp86bPE0pinr29pc2aSdTHz1MeIxibB57BjDc+ITD78EDWml7zA==
X-Received: by 2002:a05:6a20:158f:b0:134:7364:a59f with SMTP id h15-20020a056a20158f00b001347364a59fmr7150533pzj.29.1689613805900;
        Mon, 17 Jul 2023 10:10:05 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:3328:146c:de53:b695])
        by smtp.gmail.com with ESMTPSA id r17-20020a63a011000000b0051b8172fa68sm65209pge.38.2023.07.17.10.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 10:10:05 -0700 (PDT)
Date:   Mon, 17 Jul 2023 11:10:02 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-remoteproc@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] remoteproc: imx_rproc: Switch iMX8MN/MP from SMCCC
 to MMIO
Message-ID: <ZLV16sCOX9gRJS+S@p14s>
References: <20230707232626.374475-1-marex@denx.de>
 <20230707232626.374475-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230707232626.374475-2-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Good morning,

On Sat, Jul 08, 2023 at 01:26:26AM +0200, Marek Vasut wrote:
> The MX8M CM7 boot via SMC call is problematic, since not all versions
> of ATF support this interface. Extend the MMIO support so it can boot
> the CM7 on MX8MN/MP instead and discern the two alternatives using DT
> compatible strings.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-remoteproc@vger.kernel.org
> ---
>  drivers/remoteproc/imx_rproc.c | 53 ++++++++++++++++++++++++++++++++--
>  drivers/remoteproc/imx_rproc.h |  2 ++
>  2 files changed, 53 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index d0eb96d6a4fe1..09589f664a2be 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -41,6 +41,12 @@
>  #define IMX7D_M4_STOP			(IMX7D_ENABLE_M4 | IMX7D_SW_M4C_RST | \
>  					 IMX7D_SW_M4C_NON_SCLR_RST)
>  
> +#define IMX8M_M7_STOP			(IMX7D_ENABLE_M4 | IMX7D_SW_M4C_RST)
> +#define IMX8M_M7_POLL			IMX7D_ENABLE_M4
> +
> +#define IMX8M_GPR22			0x58
> +#define IMX8M_GPR22_CM7_CPUWAIT		BIT(0)
> +
>  /* Address: 0x020D8000 */
>  #define IMX6SX_SRC_SCR			0x00
>  #define IMX6SX_ENABLE_M4		BIT(22)
> @@ -92,6 +98,7 @@ static int imx_rproc_detach_pd(struct rproc *rproc);
>  struct imx_rproc {
>  	struct device			*dev;
>  	struct regmap			*regmap;
> +	struct regmap			*gpr;
>  	struct rproc			*rproc;
>  	const struct imx_rproc_dcfg	*dcfg;
>  	struct imx_rproc_mem		mem[IMX_RPROC_MEM_MAX];
> @@ -287,6 +294,18 @@ static const struct imx_rproc_att imx_rproc_att_imx6sx[] = {
>  	{ 0x80000000, 0x80000000, 0x60000000, 0 },
>  };
>  
> +static const struct imx_rproc_dcfg imx_rproc_cfg_imx8mn_mmio = {
> +	.src_reg	= IMX7D_SRC_SCR,
> +	.src_mask	= IMX7D_M4_RST_MASK,
> +	.src_start	= IMX7D_M4_START,
> +	.src_stop	= IMX8M_M7_STOP,
> +	.gpr_reg	= IMX8M_GPR22,
> +	.gpr_wait	= IMX8M_GPR22_CM7_CPUWAIT,
> +	.att		= imx_rproc_att_imx8mn,
> +	.att_size	= ARRAY_SIZE(imx_rproc_att_imx8mn),
> +	.method		= IMX_RPROC_MMIO,
> +};
> +
>  static const struct imx_rproc_dcfg imx_rproc_cfg_imx8mn = {
>  	.att		= imx_rproc_att_imx8mn,
>  	.att_size	= ARRAY_SIZE(imx_rproc_att_imx8mn),
> @@ -367,8 +386,14 @@ static int imx_rproc_start(struct rproc *rproc)
>  
>  	switch (dcfg->method) {
>  	case IMX_RPROC_MMIO:
> -		ret = regmap_update_bits(priv->regmap, dcfg->src_reg, dcfg->src_mask,
> -					 dcfg->src_start);
> +		if (priv->gpr) {
> +			ret = regmap_clear_bits(priv->gpr, dcfg->gpr_reg,
> +						dcfg->gpr_wait);
> +		} else {
> +			ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> +						 dcfg->src_mask,
> +						 dcfg->src_start);
> +		}
>  		break;
>  	case IMX_RPROC_SMC:
>  		arm_smccc_smc(IMX_SIP_RPROC, IMX_SIP_RPROC_START, 0, 0, 0, 0, 0, 0, &res);
> @@ -400,6 +425,16 @@ static int imx_rproc_stop(struct rproc *rproc)
>  
>  	switch (dcfg->method) {
>  	case IMX_RPROC_MMIO:
> +		if (priv->gpr) {
> +			ret = regmap_set_bits(priv->gpr, dcfg->gpr_reg,
> +					      dcfg->gpr_wait);
> +			if (ret) {
> +				dev_err(priv->dev,
> +					"Failed to quiescence M4 platform!\n");
> +				return ret;
> +			}
> +		}
> +
>  		ret = regmap_update_bits(priv->regmap, dcfg->src_reg, dcfg->src_mask,
>  					 dcfg->src_stop);
>  		break;
> @@ -988,6 +1023,10 @@ static int imx_rproc_detect_mode(struct imx_rproc *priv)
>  		break;
>  	}
>  
> +	priv->gpr = syscon_regmap_lookup_by_phandle(dev->of_node, "gpr");
> +	if (IS_ERR(priv->gpr))
> +		priv->gpr = NULL;
> +
>  	regmap = syscon_regmap_lookup_by_phandle(dev->of_node, "syscon");
>  	if (IS_ERR(regmap)) {
>  		dev_err(dev, "failed to find syscon\n");
> @@ -997,6 +1036,14 @@ static int imx_rproc_detect_mode(struct imx_rproc *priv)
>  	priv->regmap = regmap;
>  	regmap_attach_dev(dev, regmap, &config);
>  
> +	if (priv->gpr) {
> +		ret = regmap_read(priv->gpr, dcfg->gpr_reg, &val);
> +		if (val & dcfg->gpr_wait) {
> +			imx_rproc_stop(priv->rproc);
> +			return 0;
> +		}
> +	}

Can you provide a comment to explain what is happening above?  In what kind of
scenario would a GPR be set with the wait bit on startup?

Thanks,
Mathieu

> +
>  	ret = regmap_read(regmap, dcfg->src_reg, &val);
>  	if (ret) {
>  		dev_err(dev, "Failed to read src\n");
> @@ -1142,6 +1189,8 @@ static const struct of_device_id imx_rproc_of_match[] = {
>  	{ .compatible = "fsl,imx8mm-cm4", .data = &imx_rproc_cfg_imx8mq },
>  	{ .compatible = "fsl,imx8mn-cm7", .data = &imx_rproc_cfg_imx8mn },
>  	{ .compatible = "fsl,imx8mp-cm7", .data = &imx_rproc_cfg_imx8mn },
> +	{ .compatible = "fsl,imx8mn-cm7-mmio", .data = &imx_rproc_cfg_imx8mn_mmio },
> +	{ .compatible = "fsl,imx8mp-cm7-mmio", .data = &imx_rproc_cfg_imx8mn_mmio },
>  	{ .compatible = "fsl,imx8qxp-cm4", .data = &imx_rproc_cfg_imx8qxp },
>  	{ .compatible = "fsl,imx8qm-cm4", .data = &imx_rproc_cfg_imx8qm },
>  	{ .compatible = "fsl,imx8ulp-cm33", .data = &imx_rproc_cfg_imx8ulp },
> diff --git a/drivers/remoteproc/imx_rproc.h b/drivers/remoteproc/imx_rproc.h
> index 1c7e2127c7584..79a1b8956d142 100644
> --- a/drivers/remoteproc/imx_rproc.h
> +++ b/drivers/remoteproc/imx_rproc.h
> @@ -31,6 +31,8 @@ struct imx_rproc_dcfg {
>  	u32				src_mask;
>  	u32				src_start;
>  	u32				src_stop;
> +	u32				gpr_reg;
> +	u32				gpr_wait;
>  	const struct imx_rproc_att	*att;
>  	size_t				att_size;
>  	enum imx_rproc_method		method;
> -- 
> 2.40.1
> 
