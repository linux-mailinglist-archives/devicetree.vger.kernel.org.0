Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D035127EE63
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728081AbgI3QHc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:07:32 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:43148 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726476AbgI3QHc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:07:32 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1h3k5v5jz1qsbM;
        Wed, 30 Sep 2020 18:07:30 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1h3k5235z1sM9N;
        Wed, 30 Sep 2020 18:07:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id fbOSTuzegyrM; Wed, 30 Sep 2020 18:07:29 +0200 (CEST)
X-Auth-Info: cYsguOCUzXjdQzoEIsQlLEqh4CTdPG+DpebTtsGuq4E=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:07:29 +0200 (CEST)
Subject: Re: [PATCH 02/11] soc: imx: gpcv2: move domain mapping to domain
 driver probe
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-3-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <c85c9f30-522d-1324-942e-45165ebe3155@denx.de>
Date:   Wed, 30 Sep 2020 18:07:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930155006.535712-3-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 5:49 PM, Lucas Stach wrote:
[...]
> @@ -504,10 +499,13 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
> +			   domain->bits.map, domain->bits.map);

Shouldn't this also clear the "top" bits of the mapping, to remove power
control from the CM4 , now that CA53 Linux is in control of those domains ?

In fact, what happens if you boot linux on the CM4 instead ? I think you
can do it on MX7D .
