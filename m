Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64CD769E595
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 18:10:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233675AbjBURKP convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 21 Feb 2023 12:10:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233749AbjBURKP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 12:10:15 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF3AC16321
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 09:10:11 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1pUW9M-0003uJ-BB; Tue, 21 Feb 2023 18:09:56 +0100
Message-ID: <6181434024ae29aafe1da2088be0f48c377e303b.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
 drivers to them
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Liu Ying <victor.liu@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Date:   Tue, 21 Feb 2023 18:09:54 +0100
In-Reply-To: <20230221152804.6061-3-marex@denx.de>
References: <20230221152804.6061-1-marex@denx.de>
         <20230221152804.6061-3-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Am Dienstag, dem 21.02.2023 um 16:28 +0100 schrieb Marek Vasut:
> This particular block can have DT subnodes describing the LVDS LDB
> bridge. Instead of misusing simple-bus to scan for those nodes, do
> the scan within the driver.
> 
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Turn this into 3/4
>     - Warn and continue in case of error
> V3: Add RB from Liu
> ---
>  drivers/soc/imx/imx8m-blk-ctrl.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
> index 399cb85105a18..4f5736e612fb0 100644
> --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -169,7 +169,9 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
>  {
>  	const struct imx8m_blk_ctrl_data *bc_data;
>  	struct device *dev = &pdev->dev;
> +	struct platform_device *child;
>  	struct imx8m_blk_ctrl *bc;
> +	struct device_node *np;
>  	void __iomem *base;
>  	int i, ret;
>  
> @@ -310,6 +312,13 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
>  
>  	dev_set_drvdata(dev, bc);
>  
> +	for_each_child_of_node(dev->of_node, np) {
> +		child = of_platform_device_create(np, NULL, dev);
> +		if (child)
> +			continue;
> +		dev_warn(dev, "failed to create device for %pOF\n", np);
> +	}

Any reason for not using devm_of_platform_populate() instead?

Regards,
Lucas

> +
>  	return 0;
>  
>  cleanup_provider:

