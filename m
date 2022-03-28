Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F2C14EA378
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 01:13:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230287AbiC1XOb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 19:14:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230240AbiC1XOa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 19:14:30 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA09C1AD9E
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 16:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648509169; x=1680045169;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=M4buzmPO4upRBYLI4kxZlBG5pAdbcfrcEIVARBYaV1A=;
  b=sxXdhQpK9NUSexiV1JKFkr0HLa5IkCRco5ORjOlSbGQ40hFFjYm8bCRf
   1kRRGAR/9eERxhQKawiBLyTbMAPMustgbGG5hz03psZPIcbbzBt27Z8OG
   k/VseaVKuERo19qn20NyjKUBebt/d/jNuS7PNRZjvLiyaEFDRpIsJEuqh
   E=;
Received: from ironmsg09-lv.qualcomm.com ([10.47.202.153])
  by alexa-out.qualcomm.com with ESMTP; 28 Mar 2022 16:12:48 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg09-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 16:12:48 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 28 Mar 2022 16:12:47 -0700
Received: from [10.110.126.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 28 Mar
 2022 16:12:46 -0700
Message-ID: <93c5b062-dfa8-1089-7f13-443fcc3fa080@quicinc.com>
Date:   Mon, 28 Mar 2022 16:12:40 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/5] pinctrl: pinctrl-aspeed-g6: remove FWQSPID group
 in pinctrl
Content-Language: en-US
To:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        "Joel Stanley" <joel@jms.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
References: <20220325154048.467245-1-quic_jaehyoo@quicinc.com>
 <20220325154048.467245-3-quic_jaehyoo@quicinc.com>
 <c846fd5f-56e0-4289-af2c-42603c1abda2@www.fastmail.com>
 <0645f716-d664-4e48-577e-57251c1c3f58@quicinc.com>
 <1898df07-f66c-4452-91a2-eaa8a5b48095@www.fastmail.com>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <1898df07-f66c-4452-91a2-eaa8a5b48095@www.fastmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/28/2022 4:01 PM, Andrew Jeffery wrote:
> 
> 
> On Tue, 29 Mar 2022, at 01:11, Jae Hyun Yoo wrote:
>> On 3/27/2022 8:18 PM, Andrew Jeffery wrote:
>>>
>>>
>>> On Sat, 26 Mar 2022, at 02:10, Jae Hyun Yoo wrote:
>>>> FWSPIDQ2 and FWSPIDQ3 are not part of FWSPI18 interface so remove
>>>> FWQSPID group in pinctrl. These pins must be used with the FWSPI
>>>> pins that are dedicated for boot SPI interface which provides
>>>> same 3.3v logic level.
>>>>
>>>> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
>>>> Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
>>>> ---
>>>> Changes in v2:
>>>>    * None.
>>>>
>>>>    drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 14 +++-----------
>>>>    1 file changed, 3 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>>>> b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>>>> index a3fa03bcd9a3..54064714d73f 100644
>>>> --- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>>>> +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>>>> @@ -1236,18 +1236,12 @@ FUNC_GROUP_DECL(SALT8, AA12);
>>>>    FUNC_GROUP_DECL(WDTRST4, AA12);
>>>>
>>>>    #define AE12 196
>>>> -SIG_EXPR_LIST_DECL_SEMG(AE12, FWSPIDQ2, FWQSPID, FWSPID,
>>>> -			SIG_DESC_SET(SCU438, 4));
>>>>    SIG_EXPR_LIST_DECL_SESG(AE12, GPIOY4, GPIOY4);
>>>> -PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, FWSPIDQ2),
>>>> -	  SIG_EXPR_LIST_PTR(AE12, GPIOY4));
>>>> +PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, GPIOY4));
>>>>
>>>>    #define AF12 197
>>>> -SIG_EXPR_LIST_DECL_SEMG(AF12, FWSPIDQ3, FWQSPID, FWSPID,
>>>> -			SIG_DESC_SET(SCU438, 5));
>>>>    SIG_EXPR_LIST_DECL_SESG(AF12, GPIOY5, GPIOY5);
>>>> -PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, FWSPIDQ3),
>>>> -	  SIG_EXPR_LIST_PTR(AF12, GPIOY5));
>>>> +PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, GPIOY5));
>>>>
>>>>    #define AC12 198
>>>>    SSSF_PIN_DECL(AC12, GPIOY6, FWSPIABR, SIG_DESC_SET(SCU438, 6));
>>>> @@ -1520,9 +1514,8 @@ SIG_EXPR_LIST_DECL_SEMG(Y4, EMMCDAT7, EMMCG8,
>>>> EMMC, SIG_DESC_SET(SCU404, 3));
>>>>    PIN_DECL_3(Y4, GPIO18E3, FWSPIDMISO, VBMISO, EMMCDAT7);
>>>>
>>>>    GROUP_DECL(FWSPID, Y1, Y2, Y3, Y4);
>>>> -GROUP_DECL(FWQSPID, Y1, Y2, Y3, Y4, AE12, AF12);
>>>>    GROUP_DECL(EMMCG8, AB4, AA4, AC4, AA5, Y5, AB5, AB6, AC5, Y1, Y2, Y3,
>>>> Y4);
>>>> -FUNC_DECL_2(FWSPID, FWSPID, FWQSPID);
>>>> +FUNC_DECL_1(FWSPID, FWSPID);
>>>
>>> Really this is the FWSPI18 group now? The FWSPID name never made sense.
>>> I'm not sure what I was thinking.
>>
>> Yes, it's now the FWSPI18 which is described as 'debug SPI' in the
>> datasheet. Corresponding SCU500[3] bit is also described as that 'the
>> bit is for verification and testing only'. Probably, you was thinking
>> 'D' as in 'Debug' for the FWSPID naming.
> 
> I suspect it was also to do with some lack of detail in the early data sheets :)

Right, there were lots of lack of detail in the early version of AST2600
datasheets and FWSPI18 description is still insufficient even in the
latest version, IMO.

>>
>>> Actually, I think it's worth squashing this with 3/5 so it's a proper
>>> fix rather than separate remove/add?
>>
>> Two reasons I separated them.
>> 1. Author is different.
>> 2. 2/5 is a bug fix and 3/5 introduces a new pinmux.
> 
> Okay, I'm not terribly fussed.

Thanks! I'll keep them separated.

> 
>>
>>>>    FUNC_GROUP_DECL(VB, Y1, Y2, Y3, Y4);
>>>>    FUNC_DECL_3(EMMC, EMMCG1, EMMCG4, EMMCG8);
>>>>    /*
>>>> @@ -1918,7 +1911,6 @@ static const struct aspeed_pin_group
>>>> aspeed_g6_groups[] = {
>>>>    	ASPEED_PINCTRL_GROUP(FSI2),
>>>>    	ASPEED_PINCTRL_GROUP(FWSPIABR),
>>>>    	ASPEED_PINCTRL_GROUP(FWSPID),
>>>> -	ASPEED_PINCTRL_GROUP(FWQSPID),
>>>
>>> We should also remove the function (not just the group).
>>
>> Still worth to keep FWSPID to support SCU500[3] - Boot from debug SPI.
>> FWSPID would work on single and dual data mode only.
> 
> I guess, yeah, though the only use case I see for it is a temporary
> devicetree change to account for someone setting the strap pin into the
> debug state. I don't see a reason to support it beyond that, but that said
> we still need to support it for that use case.

Great! I'll keep FWSPID as supported.

I'll send v3 soon.
Thanks a lot for your review!

-Jae
