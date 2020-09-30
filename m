Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71B1C27EEAD
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:14:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725893AbgI3QOO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:14:14 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:36657 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725468AbgI3QOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:14:14 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1hCS5zr6z1qrfw;
        Wed, 30 Sep 2020 18:14:12 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1hCS4fWBz1sM9L;
        Wed, 30 Sep 2020 18:14:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 6PjH2GXi3RBq; Wed, 30 Sep 2020 18:14:11 +0200 (CEST)
X-Auth-Info: Jsnl7l9GHzc72CaZRx0/0CswlD2G8xJMtxpKYrjAzWk=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:14:11 +0200 (CEST)
Subject: Re: [PATCH 05/11] soc: imx: gpcv2: add runtime PM support for
 power-domains
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-6-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <857201e9-01bc-c2cd-e3e3-244544fc9e0e@denx.de>
Date:   Wed, 30 Sep 2020 18:14:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930155006.535712-6-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 5:50 PM, Lucas Stach wrote:
[...]
> @@ -143,11 +144,17 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>  	u32 reg_val;
>  	int i, ret;
>  
> +	ret = pm_runtime_get_sync(domain->dev);
> +	if (ret) {
> +		pm_runtime_put_noidle(domain->dev);
> +		return ret;
> +	}
> +
>  	if (!IS_ERR(domain->regulator)) {
>  		ret = regulator_enable(domain->regulator);
>  		if (ret) {
>  			dev_err(domain->dev, "failed to enable regulator\n");
> -			return ret;
> +			goto out_put_pm;
>  		}
>  	}
>  
> @@ -205,6 +212,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>  		clk_disable_unprepare(domain->clk[i]);
>  	if (!IS_ERR(domain->regulator))
>  		regulator_disable(domain->regulator);
> +out_put_pm:
> +	pm_runtime_put(domain->dev);
>  
>  	return ret;
>  }
Shouldn't this be pm_runtime_put_sync() ?
