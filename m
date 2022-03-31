Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93FCC4EDE69
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 18:08:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233738AbiCaQIl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 12:08:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230379AbiCaQIk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 12:08:40 -0400
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8B80D5567
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 09:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648742812; x=1680278812;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=kFnw7dJUzYNVuYo76Qjh+kui113vMoaYyH7pGpND/9o=;
  b=m9nxHo6CxZwMnRc6/6MkcnBAChXIsCkpyvUNPxUoRGpQCbAGJXkjTAVf
   wnoiX4m8nxaZukLVJRg6gPmifDfbqW++FXMSaGRqP6cKJFFvxsvG5D6IG
   YH2HDSi+7M2+bKOrKUidDi/Nhno6z++HAQ5ZE0Q+qZPT3dHjihzRIauDO
   I=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 31 Mar 2022 09:06:51 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 09:06:47 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Thu, 31 Mar 2022 09:06:15 -0700
Received: from [10.110.21.173] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Thu, 31 Mar
 2022 09:06:14 -0700
Message-ID: <42694139-61d0-fb0d-d4c3-a81cc31488d2@quicinc.com>
Date:   Thu, 31 Mar 2022 09:06:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 0/7] Fix AST2600 quad mode SPI pinmux settings
Content-Language: en-US
To:     =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>,
        Joel Stanley <joel@jms.id.au>
CC:     devicetree <devicetree@vger.kernel.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "Graeme Gregory" <quic_ggregory@quicinc.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <CACPK8Xed5Kh_Y2B3NY41bjgoALvz1gC4zbNfmUaHn_8EbHio4g@mail.gmail.com>
 <ea2ecef9-f47f-2a4e-8dda-ffd0c3691389@quicinc.com>
 <c4bcb633-02d2-1cd5-3485-787ebd4b1e0a@kaod.org>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <c4bcb633-02d2-1cd5-3485-787ebd4b1e0a@kaod.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
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

Hello Cédric,

On 3/31/2022 8:56 AM, Cédric Le Goater wrote:
> Hello Jae,
> 
> On 3/31/22 17:44, Jae Hyun Yoo wrote:
>> On 3/30/2022 10:50 PM, Joel Stanley wrote:
>>> On Tue, 29 Mar 2022 at 17:40, Jae Hyun Yoo <quic_jaehyoo@quicinc.com> 
>>> wrote:
>>>>
>>>> I’m sending this patch series to fix current issues in AST2600 pinmux
>>>> settings while enabling quad mode SPI support.
>>>>
>>>> FWSPI18 pins are basically 1.8v logic pins that are different from the
>>>> dedicated FWSPI pins that provide 3.3v logic level, so FWSPI18 pins 
>>>> can’t
>>>> be grouped with FWSPIDQ2 and FWSPIDQ3, so this series fix the issue.
>>>>
>>>> Also, fixes QSPI1 and QSPI2 function settings in AST2600 pinctrl 
>>>> dtsi to
>>>> make it able to enable quad mode on SPI1 and SPI2 interfaces.
>>>>
>>>> With this series, quad mode pinmux can be set like below.
>>>>
>>>> FW SPI:
>>>> &fmc {
>>>>          pinctrl-names = "default";
>>>>          pinctrl-0 = <&pinctrl_fwqspi_default>;
>>>> }
>>>>
>>>> SPI1:
>>>> &spi1 {
>>>>          pinctrl-names = "default";
>>>>          pinctrl-0 = <&pinctrl_qspi1_default>;
>>>> }
>>>>
>>>> SPI2:
>>>> &spi2 {
>>>>          pinctrl-names = "default";
>>>>          pinctrl-0 = <&pinctrl_qspi2_default>;
>>>> }
>>>
>>> Thanks. I hope to see a board from you that uses this soon :)
>>>
>>> I'll send the patches as fixes once -rc1 is out.
>>
>> Thanks Joel!
>>
>> Yes, I would be able to send my BMC board dts soon.
>> Thanks in advance for your review on that too.
> 
> Out of curiosity, which driver are you using ? the one from SDK ?
> 
> I proposed a new one for upstream supporting all AST2400, AST2500, AST2600
> controllers. I would be glad to have some feedback if you have time.

Yes, I saw your patch set of the new driver.

I'm currently using this fix with legacy aspeed-smc driver after
adding some fixes. I'll give it a try with your new driver as well and
will give you some feedback if I find any.

Thanks,
Jae

> Thanks,
> 
> C.
