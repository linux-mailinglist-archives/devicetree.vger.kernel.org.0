Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40CF04E9974
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 16:26:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243800AbiC1O2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 10:28:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235732AbiC1O2f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 10:28:35 -0400
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 666B929CBB
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 07:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648477615; x=1680013615;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=sHEhFTmfHQvItWnTPLYzVUvpewpc86cxrxC966USIe8=;
  b=ZSC1ScXvwcZx+j031zSJUXXoU1dxQS4QwMZSYTdK5LjrlhkyXsQi3d4Z
   bYfSdCzk724anDoUeAnW5+jykNlMoATNGI+d3Fb/5tSIAh632foA5Nfws
   1S91Bd7ax8ueZeDoBqRZ9KPf/c0YblZZ4pKvSh0mhMM7jxt6c9OFSTP8p
   s=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 28 Mar 2022 07:26:54 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 07:26:54 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 28 Mar 2022 07:26:53 -0700
Received: from [10.110.126.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 28 Mar
 2022 07:26:52 -0700
Message-ID: <c01d55d4-3b54-591b-bc13-1671481fe08e@quicinc.com>
Date:   Mon, 28 Mar 2022 07:26:51 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 3/5] pinctrl: pinctrl-aspeed-g6: add FWQSPI
 function-group
Content-Language: en-US
To:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        "Joel Stanley" <joel@jms.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        Johnny Huang <johnny_huang@aspeedtech.com>
References: <20220325154048.467245-1-quic_jaehyoo@quicinc.com>
 <20220325154048.467245-4-quic_jaehyoo@quicinc.com>
 <50fe6b39-e5ca-439c-a390-59eddca4a021@www.fastmail.com>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <50fe6b39-e5ca-439c-a390-59eddca4a021@www.fastmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
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



On 3/27/2022 8:15 PM, Andrew Jeffery wrote:
> 
> 
> On Sat, 26 Mar 2022, at 02:10, Jae Hyun Yoo wrote:
>> From: Johnny Huang <johnny_huang@aspeedtech.com>
>>
>> Add FWSPIDQ2 (AE12) and FWSPIDQ3 (AF12) function-group to support
>> AST2600 FW SPI quad mode. These pins can be used with dedicated FW
>> SPI pins - FWSPICS0# (AB14), FWSPICK (AF13), FWSPIMOSI (AC14)
>> and FWSPIMISO (AB13).
>>
>> Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
>> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
>> ---
>> Changes in v2:
>>   * None.
>>
>>   drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 11 +++++++++--
>>   1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>> b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>> index 54064714d73f..80838dc54b3a 100644
>> --- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>> +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
>> @@ -1236,12 +1236,17 @@ FUNC_GROUP_DECL(SALT8, AA12);
>>   FUNC_GROUP_DECL(WDTRST4, AA12);
>>
>>   #define AE12 196
>> +SIG_EXPR_LIST_DECL_SESG(AE12, FWSPIQ2, FWQSPI, SIG_DESC_SET(SCU438, 4));
>>   SIG_EXPR_LIST_DECL_SESG(AE12, GPIOY4, GPIOY4);
>> -PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, GPIOY4));
>> +PIN_DECL_(AE12, SIG_EXPR_LIST_PTR(AE12, FWSPIQ2),
>> +	  SIG_EXPR_LIST_PTR(AE12, GPIOY4));
>>
>>   #define AF12 197
>> +SIG_EXPR_LIST_DECL_SESG(AF12, FWSPIQ3, FWQSPI, SIG_DESC_SET(SCU438, 5));
>>   SIG_EXPR_LIST_DECL_SESG(AF12, GPIOY5, GPIOY5);
>> -PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, GPIOY5));
>> +PIN_DECL_(AF12, SIG_EXPR_LIST_PTR(AF12, FWSPIQ3),
>> +	  SIG_EXPR_LIST_PTR(AF12, GPIOY5));
>> +FUNC_GROUP_DECL(FWQSPI, AE12, AF12);
>>
>>   #define AC12 198
>>   SSSF_PIN_DECL(AC12, GPIOY6, FWSPIABR, SIG_DESC_SET(SCU438, 6));
>> @@ -1911,6 +1916,7 @@ static const struct aspeed_pin_group
>> aspeed_g6_groups[] = {
>>   	ASPEED_PINCTRL_GROUP(FSI2),
>>   	ASPEED_PINCTRL_GROUP(FWSPIABR),
>>   	ASPEED_PINCTRL_GROUP(FWSPID),
>> +	ASPEED_PINCTRL_GROUP(FWQSPI),
>>   	ASPEED_PINCTRL_GROUP(FWSPIWP),
>>   	ASPEED_PINCTRL_GROUP(GPIT0),
>>   	ASPEED_PINCTRL_GROUP(GPIT1),
>> @@ -2152,6 +2158,7 @@ static const struct aspeed_pin_function
>> aspeed_g6_functions[] = {
>>   	ASPEED_PINCTRL_FUNC(FSI2),
>>   	ASPEED_PINCTRL_FUNC(FWSPIABR),
>>   	ASPEED_PINCTRL_FUNC(FWSPID),
>> +	ASPEED_PINCTRL_FUNC(FWQSPI),
> 
> You need to update the binding documentation as well.

Will do it in v3.

Thanks,
Jae
