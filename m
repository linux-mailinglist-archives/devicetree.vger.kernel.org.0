Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD1E75329D4
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 13:58:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236695AbiEXL6B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 07:58:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236731AbiEXL6A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 07:58:00 -0400
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com [199.106.114.39])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 977DF62BE6
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 04:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1653393479; x=1684929479;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=ewuLGbHpk8fgS+KzjyjDeksIuY2nJYimb3XiN3oMsfE=;
  b=fkg/luNHHW+5er8bgGZd5joWP4FRXSTEAvXZDfzkkTFpb7CguEoxV/nu
   6keGOb+SlhevldHhUmDxwM1Z6CIWKmaVb5sFVEt3rUl9HGPjzf0FgmbaP
   0qSLaTLCXh1c7TD+8zT+3KeMDEbasA0srgeRiA6GXo6MuThUDUt6etDBo
   E=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 24 May 2022 04:57:59 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 May 2022 04:57:59 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 24 May 2022 04:57:59 -0700
Received: from [10.110.76.156] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 24 May
 2022 04:57:57 -0700
Message-ID: <71613fa5-c468-e3ab-935a-7aa675e822fc@quicinc.com>
Date:   Tue, 24 May 2022 04:57:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH -next] ARM: dts: aspeed: nuvia: rename vendor nuvia to
 qcom
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        "Andrew Jeffery" <andrew@aj.id.au>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
References: <20220523175640.60155-1-quic_jaehyoo@quicinc.com>
 <dd67a453-b75b-d092-f999-3faf05ef8160@linaro.org>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <dd67a453-b75b-d092-f999-3faf05ef8160@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On 5/24/2022 2:53 AM, Krzysztof Kozlowski wrote:
> On 23/05/2022 19:56, Jae Hyun Yoo wrote:
>> Nuvia has been acquired by Qualcomm and the vendor name 'nuvia' will
>> not be used anymore so rename aspeed-bmc-nuvia-dc-scm.dts to
>> aspeed-bmc-qcom-dc-scm-v1.dts and change 'nuvia' to 'qcom' as its vendor
>> name in the file.
> 
> And all users of this DTB now have to update their bootloaders, scripts,
> installation methods. We did not rename FSL or Marvell boards, so
> neither should be renamed this one.

Yeah, I know that we don't rename dts but the previous version of this
change was picked recently in the middle of code review
https://lore.kernel.org/all/979a5c87-a7ea-a1f0-e42e-29043df6b348@quicinc.com/
and the v3 was pulled recently so it's still in the -next queue so
I believe it has a chance to be renamed since no one is using the DTB
yet.

>>
>> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
>> ---
>>   arch/arm/boot/dts/Makefile                                    | 2 +-
>>   ...eed-bmc-nuvia-dc-scm.dts => aspeed-bmc-qcom-dc-scm-v1.dts} | 4 ++--
>>   2 files changed, 3 insertions(+), 3 deletions(-)
>>   rename arch/arm/boot/dts/{aspeed-bmc-nuvia-dc-scm.dts => aspeed-bmc-qcom-dc-scm-v1.dts} (97%)
>>
>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>> index 03f5b3a15415..2a3c95387613 100644
>> --- a/arch/arm/boot/dts/Makefile
>> +++ b/arch/arm/boot/dts/Makefile
>> @@ -1584,7 +1584,6 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>   	aspeed-bmc-lenovo-hr630.dtb \
>>   	aspeed-bmc-lenovo-hr855xg2.dtb \
>>   	aspeed-bmc-microsoft-olympus.dtb \
>> -	aspeed-bmc-nuvia-dc-scm.dtb \
>>   	aspeed-bmc-opp-lanyang.dtb \
>>   	aspeed-bmc-opp-mihawk.dtb \
>>   	aspeed-bmc-opp-mowgli.dtb \
>> @@ -1597,6 +1596,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>   	aspeed-bmc-opp-witherspoon.dtb \
>>   	aspeed-bmc-opp-zaius.dtb \
>>   	aspeed-bmc-portwell-neptune.dtb \
>> +	aspeed-bmc-qcom-dc-scm-v1.dtb \
>>   	aspeed-bmc-quanta-q71l.dtb \
>>   	aspeed-bmc-quanta-s6q.dtb \
>>   	aspeed-bmc-supermicro-x11spi.dtb \
>> diff --git a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts b/arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
>> similarity index 97%
>> rename from arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
>> rename to arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
>> index f4a97cfb0f23..259ef3f54c5c 100644
>> --- a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
>> +++ b/arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
>> @@ -6,8 +6,8 @@
>>   #include "aspeed-g6.dtsi"
>>   
>>   / {
>> -	model = "Nuvia DC-SCM BMC";
>> -	compatible = "nuvia,dc-scm-bmc", "aspeed,ast2600";
>> +	model = "Qualcomm DC-SCM V1 BMC";
>> +	compatible = "qcom,dc-scm-v1-bmc", "aspeed,ast2600";
> 
> 
> You need also change bindings.

I didn't see any case of changing bindings for adding a new Aspped BMC
dts.

Thanks,
Jae

> 
> Best regards,
> Krzysztof
