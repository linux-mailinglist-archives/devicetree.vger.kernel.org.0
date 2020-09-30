Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EED3D27EF04
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:23:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726476AbgI3QX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:23:29 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:56245 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725355AbgI3QX3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:23:29 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1hQ73nhRz1qs0w;
        Wed, 30 Sep 2020 18:23:27 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1hQ72Qnyz1sM9L;
        Wed, 30 Sep 2020 18:23:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id g69DTHQxIRaJ; Wed, 30 Sep 2020 18:23:25 +0200 (CEST)
X-Auth-Info: ycFD6wgpeN0gOP0f0ATVRJatmmW7lXFni5Y0klNoyMI=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:23:25 +0200 (CEST)
Subject: Re: [PATCH 04/11] soc: imx: gpcv2: wait for ADB400 handshake
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-5-l.stach@pengutronix.de>
 <818925c0-b45f-67b4-02a1-8db49ccc491e@denx.de>
 <9533c2b81a9866aec45d2604befe7cdda79d0679.camel@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <de6d73ea-c7dc-6405-29fb-7975368424c0@denx.de>
Date:   Wed, 30 Sep 2020 18:23:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9533c2b81a9866aec45d2604befe7cdda79d0679.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 6:19 PM, Lucas Stach wrote:
> On Mi, 2020-09-30 at 18:11 +0200, Marek Vasut wrote:
>> On 9/30/20 5:49 PM, Lucas Stach wrote:
>>
>> [...]
>>
>>> @@ -176,9 +180,19 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>>>  			   GPC_PGC_CTRL_PCR, 0);
>>>  
>>>  	/* request the ADB400 to power up */
>>> -	if (domain->bits.hsk)
>>> +	if (domain->bits.hskreq) {
>>>  		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
>>> -				   domain->bits.hsk, domain->bits.hsk);
>>> +				   domain->bits.hskreq, domain->bits.hskreq);
>>> +
>>> +		ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK,
>>> +					       reg_val,
>>> +					       (reg_val & domain->bits.hskack),
>>> +					       0, USEC_PER_MSEC);
>>> +		if (ret) {
>>> +			dev_err(domain->dev, "failed to power up ADB400\n");
>>
>> The ADB400 is a bus bridge, so the bus is being attached here, not
>> powered up, right ?
> 
> The bits in the PWRHSK register are called "power down" bits, so I kept
> this nomenclature. Also I think the ADB400 is mostly isolating the bus
> in the power domains from the rest of the NoC, "attaching" of the bus
> is really disabling the isolation.
> 
> As there are multiple valid naming choices I kept the naming from the
> RM.

Maybe NXP can finally explain what these bits really do ?
