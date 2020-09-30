Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B2B627EE9F
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:11:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726992AbgI3QLt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:11:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725837AbgI3QLt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:11:49 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01860C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 09:11:49 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1h8g61xGz1rxw2;
        Wed, 30 Sep 2020 18:11:47 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1h8g4vpFz1sM9L;
        Wed, 30 Sep 2020 18:11:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 56pmXOe2X2gX; Wed, 30 Sep 2020 18:11:46 +0200 (CEST)
X-Auth-Info: rRUJcTQM21weAAGtmD/E4ZF0w8ZgffbVRE3MKqlMlVo=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:11:46 +0200 (CEST)
Subject: Re: [PATCH 04/11] soc: imx: gpcv2: wait for ADB400 handshake
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-5-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <818925c0-b45f-67b4-02a1-8db49ccc491e@denx.de>
Date:   Wed, 30 Sep 2020 18:11:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930155006.535712-5-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 5:49 PM, Lucas Stach wrote:

[...]

> @@ -176,9 +180,19 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>  			   GPC_PGC_CTRL_PCR, 0);
>  
>  	/* request the ADB400 to power up */
> -	if (domain->bits.hsk)
> +	if (domain->bits.hskreq) {
>  		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
> -				   domain->bits.hsk, domain->bits.hsk);
> +				   domain->bits.hskreq, domain->bits.hskreq);
> +
> +		ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK,
> +					       reg_val,
> +					       (reg_val & domain->bits.hskack),
> +					       0, USEC_PER_MSEC);
> +		if (ret) {
> +			dev_err(domain->dev, "failed to power up ADB400\n");

The ADB400 is a bus bridge, so the bus is being attached here, not
powered up, right ?
