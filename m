Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14E0E27EE92
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731214AbgI3QKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:10:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727681AbgI3QKO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:10:14 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41402C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 09:10:14 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1h6s0gDHz1rwDm;
        Wed, 30 Sep 2020 18:10:13 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1h6r6flRz1sM9L;
        Wed, 30 Sep 2020 18:10:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id OdE_t_nmycK2; Wed, 30 Sep 2020 18:10:11 +0200 (CEST)
X-Auth-Info: lqBrlfKTtG9CMheJ5tZcLFHMALKD/4tLxgLxKsJE9n0=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:10:11 +0200 (CEST)
Subject: Re: [PATCH 03/11] soc: imx: gpcv2: split power up and power down
 sequence control
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-4-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <0ea7824e-cf21-2180-1fa1-6b691d85faca@denx.de>
Date:   Wed, 30 Sep 2020 18:10:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930155006.535712-4-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 5:49 PM, Lucas Stach wrote:
[...]

> @@ -149,69 +148,111 @@ static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
>  	}
>  
>  	/* Enable reset clocks for all devices in the domain */
> +	for (i = 0; i < domain->num_clks; i++) {
> +		ret = clk_prepare_enable(domain->clk[i]);
> +		if (ret) {
> +			dev_err(domain->dev, "failed to enable clock %d\n", i);
> +			goto out_clk_disable;
> +		}
> +	}

Can we use clk_bulk functions here ?

[...]
