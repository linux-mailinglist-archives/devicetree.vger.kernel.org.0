Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 485EB50EBAA
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 00:21:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234332AbiDYWYl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 18:24:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343533AbiDYVbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 17:31:43 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D24DF220CE
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 14:28:37 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 22882496;
        Mon, 25 Apr 2022 23:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1650922115;
        bh=6Y4D8PervITwFxAlLq9FlZzsI9j5ByjzNg68Bt4nvbI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=szmF1yHcQKnImWetmZTy6EiMl9MCtcjwb5W61qVnNKYbQyFk6Y2yRAggQknEIraBq
         OjpZGJU66aUivvDUgvFkwJ0DihIJxjIXHcJArZRGPUeUXJxosq+2IpwO1YogIRjWMD
         ljYLcI4LkcRJyat7FZaK0EfCVuJcxdSN/ZoVHbL8=
Date:   Tue, 26 Apr 2022 00:28:34 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 01/11] soc: imx: imx8m-blk-ctrl: set power device name
Message-ID: <YmcSgncaiqn7AjhU@pendragon.ideasonboard.com>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
 <20220406153402.1265474-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220406153402.1265474-2-l.stach@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

Thank you for the patch.

On Wed, Apr 06, 2022 at 05:33:52PM +0200, Lucas Stach wrote:
> Set the name for the virtual power device to the name of the attached
> blk-ctrl domain. Makes the debug output for the power domains a lot
> more pleasant to read.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/soc/imx/imx8m-blk-ctrl.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
> index 122f9c884b38..3071a8eca8ef 100644
> --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -241,6 +241,7 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
>  			ret = PTR_ERR(domain->power_dev);
>  			goto cleanup_pds;
>  		}
> +		dev_set_name(domain->power_dev, "%s", data->name);

Would it make sense to keep "genpd" in the name ? Maybe "genpd:%s" ?

With or without that,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  
>  		domain->genpd.name = data->name;
>  		domain->genpd.power_on = imx8m_blk_ctrl_power_on;

-- 
Regards,

Laurent Pinchart
