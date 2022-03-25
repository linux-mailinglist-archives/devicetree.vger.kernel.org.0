Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B9494E7488
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 14:55:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353188AbiCYN4q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 09:56:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234035AbiCYN4p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 09:56:45 -0400
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3881ED0802
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 06:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648216511; x=1679752511;
  h=message-id:date:mime-version:subject:from:to:cc:
   references:in-reply-to:content-transfer-encoding;
  bh=VSRddfIDJSZ4M31ioRYtDUoXN9LB7IUgTCVpG0uaOKM=;
  b=TAp9qPP1Dp2EAn7nNa2xKLfl5ZbsqxuYCI2kpOEXS61Rr89IKn+YMYEB
   CZ/J62xH2Yg6AyANub0lh4e/CPy/pgrQequU/SFPWA3jiVIsY7LGu/Kev
   3u6gDXO3f10JA9ZqClzrjzQxAWLM2/8o8+dWuDUZWmcp3E4oyBBQlbqPG
   s=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 25 Mar 2022 06:55:10 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2022 06:55:10 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 25 Mar 2022 06:55:09 -0700
Received: from [10.110.37.17] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Fri, 25 Mar
 2022 06:55:08 -0700
Message-ID: <685b5cd3-38a2-f1d7-2277-62d824ea2a3e@quicinc.com>
Date:   Fri, 25 Mar 2022 06:55:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] ARM: dts: aspeed: add Nuvia DC-SCM BMC
Content-Language: en-US
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
References: <20220325010316.451471-1-quic_jaehyoo@quicinc.com>
 <37768dc5-16ac-23ea-61a0-27f44e2fbd84@kernel.org>
 <fe55ba03-3989-4566-1831-ad43329e4628@quicinc.com>
In-Reply-To: <fe55ba03-3989-4566-1831-ad43329e4628@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/25/2022 6:46 AM, Jae Hyun Yoo wrote:
> On 3/25/2022 5:10 AM, Krzysztof Kozlowski wrote:
>> On 25/03/2022 02:03, Jae Hyun Yoo wrote:
>>> From: Graeme Gregory <quic_ggregory@quicinc.com>
>>>
>>> Add initial version of device tree for Nuvia DC-SCM BMC which is
>>> equipped with Aspeed AST2600 BMC SoC.
>>>
>>> Signed-off-by: Graeme Gregory <quic_ggregory@quicinc.com>
>>> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
>>> ---
>>> Changes in v2:
>>> * Added a comment to explain 'rgmii' phy mode setting. (Andrew)
>>>
>>>   arch/arm/boot/dts/Makefile                    |   1 +
>>>   arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts | 189 ++++++++++++++++++
>>>   2 files changed, 190 insertions(+)
>>>   create mode 100644 arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
>>>
>>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>>> index 7c16f8a2b738..e63cd6ed0faa 100644
>>> --- a/arch/arm/boot/dts/Makefile
>>> +++ b/arch/arm/boot/dts/Makefile
>>> @@ -1546,6 +1546,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>>       aspeed-bmc-lenovo-hr630.dtb \
>>>       aspeed-bmc-lenovo-hr855xg2.dtb \
>>>       aspeed-bmc-microsoft-olympus.dtb \
>>> +    aspeed-bmc-nuvia-dc-scm.dtb \
>>>       aspeed-bmc-opp-lanyang.dtb \
>>>       aspeed-bmc-opp-mihawk.dtb \
>>>       aspeed-bmc-opp-mowgli.dtb \
>>> diff --git a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts 
>>> b/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
>>> new file mode 100644
>>> index 000000000000..1984d545b66e
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
>>> @@ -0,0 +1,189 @@
>>> +// SPDX-License-Identifier: GPL-2.0-or-later
>>> +// Copyright (c) 2021-2022 Qualcomm Innovation Center, Inc. All 
>>> rights reserved.
>>
>> This does not look like DTS comment style (Only SPDX should be in //).
>>
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "aspeed-g6.dtsi"
>>> +
>>> +/ {
>>> +    model = "Nuvia DC-SCM BMC";
>>> +    compatible = "nuvia,dc-scm-bmc", "aspeed,ast2600";
>>> +
>>> +    aliases {
>>> +        serial4 = &uart5;
>>> +    };
>>> +
>>> +    chosen {
>>> +        bootargs = "console=ttyS4,115200n8";
>>
>> You should use stdout path instead.

Oh, I missed this comment. I'll add 'stdout-path'.
Thanks for your pointing it out.

-Jae

> 
> "The format of the .dts "source" file is "C" like, supports C and C++
> style comments."
> 
> According to the
> https://www.kernel.org/doc/Documentation/devicetree/booting-without-of.txt
> 
> Thanks,
> Jae
