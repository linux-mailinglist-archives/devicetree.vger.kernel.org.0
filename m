Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C3ED4F7B2E
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 11:13:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243738AbiDGJP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 05:15:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243740AbiDGJPN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 05:15:13 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF79B1B72E0
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 02:12:41 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1ncOBt-0000cW-Q6; Thu, 07 Apr 2022 11:12:33 +0200
Message-ID: <e60a4bcad472411a8f82546b57d8d375ed8cbda8.camel@pengutronix.de>
Subject: Re: [PATCH v4 02/11] soc: imx: add i.MX8MP HSIO blk-ctrl
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date:   Thu, 07 Apr 2022 11:12:32 +0200
In-Reply-To: <e99520af-7b32-f1a4-7ebc-eb66611b850f@denx.de>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
         <20220406153402.1265474-3-l.stach@pengutronix.de>
         <e99520af-7b32-f1a4-7ebc-eb66611b850f@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Donnerstag, dem 07.04.2022 um 01:43 +0200 schrieb Marek Vasut:
> On 4/6/22 17:33, Lucas Stach wrote:
> 
> [...]
> 
> > +static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
> > +	.max_reg = 0x24,
> 
> Doesn't the HSIO_BLK_CTL go up to 0x10c ?

Technically yes, but there is already a driver for the USB glue
(fsl,imx8mp-dwc3) that occupies the USB registers at and above 0x100.
 
> 
> > +	.power_on = imx8mp_hsio_blk_ctrl_power_on,
> > +	.power_off = imx8mp_hsio_blk_ctrl_power_off,
> > +	.power_notifier_fn = imx8mp_hsio_power_notifier,
> > +	.domains = imx8mp_hsio_domain_data,
> > +	.num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data),
> > +};
> > +
> > +static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
> > +{
> > +	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
> > +	const struct imx8mp_blk_ctrl_domain_data *data = domain->data;
> > +	struct imx8mp_blk_ctrl *bc = domain->bc;
> > +	int ret;
> > +
> > +	/* make sure bus domain is awake */
> > +	ret = pm_runtime_resume_and_get(bc->bus_power_dev);
> > +	if (ret < 0) {
> > +		dev_err(bc->dev, "failed to power up bus domain\n");
> > +		return ret;
> > +	}
> > +
> > +	/* enable upstream clocks */
> > +	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);;
> > +	if (ret) {
> > +		dev_err(bc->dev, "failed to enable clocks\n");
> > +		goto bus_put;
> > +	}
> > +
> > +	/* domain specific blk-ctrl manipulation */
> > +	bc->power_on(bc, domain);
> 
> Would it make sense to add error checking ?
> 
I don't expect those functions to do any more than a bit of blk-ctrl
MMIO register poking. If that fails you are in much more trouble than
what you can reasonably fix with some error checking.

Regards,
Lucas

> > +	/* power up upstream GPC domain */
> > +	ret = pm_runtime_resume_and_get(domain->power_dev);
> > +	if (ret < 0) {
> > +		dev_err(bc->dev, "failed to power up peripheral domain\n");
> > +		goto clk_disable;
> > +	}
> > +
> > +	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> > +
> > +	return 0;
> > +
> > +clk_disable:
> > +	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> > +bus_put:
> > +	pm_runtime_put(bc->bus_power_dev);
> > +
> > +	return ret;
> > +}
> 
> [...]


