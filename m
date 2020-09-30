Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C88F727EEB4
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:15:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725893AbgI3QP5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:15:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725837AbgI3QP5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:15:57 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 561BEC061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 09:15:57 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1hFR0chWz1rvxj;
        Wed, 30 Sep 2020 18:15:55 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1hFR0Dd7z1sM9Q;
        Wed, 30 Sep 2020 18:15:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id jhbZIrap4U9a; Wed, 30 Sep 2020 18:15:53 +0200 (CEST)
X-Auth-Info: dUg1wZSxEFEt7lYtKKp1UDXnlx7xFmEXvR7e/rezBFI=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:15:53 +0200 (CEST)
Subject: Re: [PATCH 07/11] soc: imx: gpcv2: add support for optional resets
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-8-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <eecb12db-cf2f-c7bb-1da7-803f77e05e64@denx.de>
Date:   Wed, 30 Sep 2020 18:15:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200930155006.535712-8-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 5:50 PM, Lucas Stach wrote:
> Normally the reset for the devices inside the power domain is
> triggered automatically from the PGC in the power-up sequencing,
> however on i.MX8MM this doesn't work for the GPU power domains.

One has to wonder whether the VPU power domain has similar hardware bug
on the MX8MM ?

[...]

> @@ -112,6 +113,7 @@ struct imx_pgc_domain {
>  	struct regulator *regulator;
>  	struct clk *clk[GPC_CLK_MAX];
>  	int num_clks;
> +	struct reset_control *reset;

Keep this sorted as reverse xmas tree please.

>  	unsigned int pgc;

[...]
