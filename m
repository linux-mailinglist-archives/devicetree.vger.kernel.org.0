Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76F792883D4
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 09:45:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726326AbgJIHpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 03:45:33 -0400
Received: from mail-out.m-online.net ([212.18.0.10]:52687 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732086AbgJIHpd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 03:45:33 -0400
X-Greylist: delayed 169815 seconds by postgrey-1.27 at vger.kernel.org; Fri, 09 Oct 2020 03:45:32 EDT
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C70VL400Vz1sKj1;
        Fri,  9 Oct 2020 09:45:30 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C70VL2xk3z1qrgm;
        Fri,  9 Oct 2020 09:45:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id iRImTw88UWoX; Fri,  9 Oct 2020 09:45:28 +0200 (CEST)
X-Auth-Info: 0DYx/3Tvo+cfql6DOTVsQAje7mvS0FJUCE5yvi0hmJQ=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Fri,  9 Oct 2020 09:45:28 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 04/11] soc: imx: gpcv2: wait for ADB400 handshake
To:     Jacky Bai <ping.bai@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-5-l.stach@pengutronix.de>
 <818925c0-b45f-67b4-02a1-8db49ccc491e@denx.de>
 <9533c2b81a9866aec45d2604befe7cdda79d0679.camel@pengutronix.de>
 <de6d73ea-c7dc-6405-29fb-7975368424c0@denx.de>
 <AM0PR04MB4915964704698912AC3AEFF487080@AM0PR04MB4915.eurprd04.prod.outlook.com>
Message-ID: <e13b01ea-d0a0-7492-3b9c-88515a060405@denx.de>
Date:   Fri, 9 Oct 2020 09:27:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB4915964704698912AC3AEFF487080@AM0PR04MB4915.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/9/20 5:05 AM, Jacky Bai wrote:
[...]

>>>>> @@ -176,9 +180,19 @@ static int imx_pgc_power_up(struct
>> generic_pm_domain *genpd)
>>>>>  			   GPC_PGC_CTRL_PCR, 0);
>>>>>
>>>>>  	/* request the ADB400 to power up */
>>>>> -	if (domain->bits.hsk)
>>>>> +	if (domain->bits.hskreq) {
>>>>>  		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
>>>>> -				   domain->bits.hsk, domain->bits.hsk);
>>>>> +				   domain->bits.hskreq, domain->bits.hskreq);
>>>>> +
>>>>> +		ret = regmap_read_poll_timeout(domain->regmap,
>> GPC_PU_PWRHSK,
>>>>> +					       reg_val,
>>>>> +					       (reg_val & domain->bits.hskack),
>>>>> +					       0, USEC_PER_MSEC);
>>>>> +		if (ret) {
>>>>> +			dev_err(domain->dev, "failed to power up ADB400\n");
>>>>
>>>> The ADB400 is a bus bridge, so the bus is being attached here, not
>>>> powered up, right ?
>>>
>>> The bits in the PWRHSK register are called "power down" bits, so I
>>> kept this nomenclature. Also I think the ADB400 is mostly isolating
>>> the bus in the power domains from the rest of the NoC, "attaching" of
>>> the bus is really disabling the isolation.
>>>
>>> As there are multiple valid naming choices I kept the naming from the
>>> RM.
>>
>> Maybe NXP can finally explain what these bits really do ?
> 
> This bit is used to sync the ADB400 bridge to a known status before MIX side power down & isolation.
> Detailed info can be find in ARM's ADB400 TRM.

Is this documentation publicly available ?
