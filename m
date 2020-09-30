Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B07E27EF5F
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:38:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731250AbgI3Qii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:38:38 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:34419 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731177AbgI3Qih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:38:37 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1hlZ26C5z1qs0j;
        Wed, 30 Sep 2020 18:38:34 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1hlZ0rC6z1sM9S;
        Wed, 30 Sep 2020 18:38:34 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id gxTK7355gXbw; Wed, 30 Sep 2020 18:38:32 +0200 (CEST)
X-Auth-Info: xSj/d+9u4FhzgJVzHmQ8d3oy+pVTWHj3KXUfKnHJsWg=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:38:32 +0200 (CEST)
Subject: Re: [PATCH 07/11] soc: imx: gpcv2: add support for optional resets
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-8-l.stach@pengutronix.de>
 <eecb12db-cf2f-c7bb-1da7-803f77e05e64@denx.de>
 <f86ecad9d46fa5ca2d92e314a9e3981ae4384da1.camel@pengutronix.de>
 <da60080c-8a2f-87f7-90cf-31bdfa338ef8@denx.de>
 <502fb976959b61472be351576ca8e6c880bea2bf.camel@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <c06ebae8-c694-47ed-3533-219ed820b8fb@denx.de>
Date:   Wed, 30 Sep 2020 18:38:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <502fb976959b61472be351576ca8e6c880bea2bf.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 6:34 PM, Lucas Stach wrote:
> On Mi, 2020-09-30 at 18:30 +0200, Marek Vasut wrote:
>> On 9/30/20 6:23 PM, Lucas Stach wrote:
>>> On Mi, 2020-09-30 at 18:15 +0200, Marek Vasut wrote:
>>>> On 9/30/20 5:50 PM, Lucas Stach wrote:
>>>>> Normally the reset for the devices inside the power domain is
>>>>> triggered automatically from the PGC in the power-up sequencing,
>>>>> however on i.MX8MM this doesn't work for the GPU power domains.
>>>>
>>>> One has to wonder whether the VPU power domain has similar hardware bug
>>>> on the MX8MM ?
>>>
>>> Nope the VPUs have separate reset bits in the BLK_CTL. So after
>>> powering up the VPUMIX domain one can assert/deassert reset to the
>>> individual VPU cores.
>>
>> Is there any documentation for the BLK_CTL on MX8MM ? I can't find any
>> in the official RM.
> 
> I'm still waiting on some info from NXP about this. It is not
> documented in the RM.

Yes, I know.

>> And also, the GPUs need to use SRC reset, does the BLK_CTL reset do the
>> same "degree" of reset to the VPU as the SRC reset does to the GPUs ?
> 
> At least that is what I'm assuming.
> 
> The fundamental issue with the GPU domain is that there is no BLK_CTL
> in the GPUMIX domain and the resets are hooked up to the shared SRC
> reset, instead of having GPU BLK_CTL level resets.

Yep.

I'll CC Abel, maybe there is still undocumented way to reset the GPUs on
the MX8MM separately too.
