Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2431D288517
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 10:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732569AbgJIITe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 04:19:34 -0400
Received: from mail-out.m-online.net ([212.18.0.10]:53901 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732547AbgJIITe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 04:19:34 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C71Fc5RBZz1sKws;
        Fri,  9 Oct 2020 10:19:32 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C71Fc4D6gz1qtwq;
        Fri,  9 Oct 2020 10:19:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id ABFMEeaL5yH6; Fri,  9 Oct 2020 10:19:30 +0200 (CEST)
X-Auth-Info: fKvGM5mLQK4ePu5NM1X0Z5DWCZf2cCK7yGXx3KyFg18=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Fri,  9 Oct 2020 10:19:30 +0200 (CEST)
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
 <e13b01ea-d0a0-7492-3b9c-88515a060405@denx.de>
 <AM0PR04MB4915FC935AB98EED05DCD0F787080@AM0PR04MB4915.eurprd04.prod.outlook.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <3c482bc9-e402-c267-b880-23825078f872@denx.de>
Date:   Fri, 9 Oct 2020 10:19:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB4915FC935AB98EED05DCD0F787080@AM0PR04MB4915.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/9/20 9:51 AM, Jacky Bai wrote:

[...]

>>>>>>> @@ -176,9 +180,19 @@ static int imx_pgc_power_up(struct
>>>> generic_pm_domain *genpd)
>>>>>>>  			   GPC_PGC_CTRL_PCR, 0);
>>>>>>>
>>>>>>>  	/* request the ADB400 to power up */
>>>>>>> -	if (domain->bits.hsk)
>>>>>>> +	if (domain->bits.hskreq) {
>>>>>>>  		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
>>>>>>> -				   domain->bits.hsk, domain->bits.hsk);
>>>>>>> +				   domain->bits.hskreq, domain->bits.hskreq);
>>>>>>> +
>>>>>>> +		ret = regmap_read_poll_timeout(domain->regmap,
>>>> GPC_PU_PWRHSK,
>>>>>>> +					       reg_val,
>>>>>>> +					       (reg_val & domain->bits.hskack),
>>>>>>> +					       0, USEC_PER_MSEC);
>>>>>>> +		if (ret) {
>>>>>>> +			dev_err(domain->dev, "failed to power up ADB400\n");
>>>>>>
>>>>>> The ADB400 is a bus bridge, so the bus is being attached here, not
>>>>>> powered up, right ?
>>>>>
>>>>> The bits in the PWRHSK register are called "power down" bits, so I
>>>>> kept this nomenclature. Also I think the ADB400 is mostly isolating
>>>>> the bus in the power domains from the rest of the NoC, "attaching"
>>>>> of the bus is really disabling the isolation.
>>>>>
>>>>> As there are multiple valid naming choices I kept the naming from
>>>>> the RM.
>>>>
>>>> Maybe NXP can finally explain what these bits really do ?
>>>
>>> This bit is used to sync the ADB400 bridge to a known status before MIX side
>> power down & isolation.
>>> Detailed info can be find in ARM's ADB400 TRM.
>>
>> Is this documentation publicly available ?
> 
> Ooh, Sorry, It seems confidential. Some info shared below:
> 
> When the powerdown interface is used then the bridge must enter the idle state before either
> domain can be reset or powered down:
> 1. The ADB-400 must be quiescent before a powerdown request. It is a system responsibility
> to ensure that all transactions are completed and no new transactions are sent to ADB-400.
> 2. When the ADB-400 receives the powerdown request signal, pwrdnreqn, LOW it ensures
> that all FIFOs are empty, pointers are reset to zero, and no false transactions can be
> generated.
> 3. When the ADB-400 completes the internal shutdown process, it sets the pwrdnackn
> signal LOW. The interface is in idle state and powerdown can commence.

Nice, this was useful, thanks !
