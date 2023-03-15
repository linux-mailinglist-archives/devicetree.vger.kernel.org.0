Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EE596BBB58
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 18:50:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232607AbjCORts (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 13:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230280AbjCORtn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 13:49:43 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2B8813DDB
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 10:49:35 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id f16so20282750ljq.10
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 10:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678902574;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v1MViw2h4qxXqTK71HTICpK4bye50r2hsxjELYtaWNs=;
        b=tQI1fOWqcFwGSpfxs9uQHMcOiYgmD4iP0T1Phx1MUqIcNWjm8DV/sgxGbpugjtlzua
         sWQm7lkB5fjo2HsROvNKHFv11Ax4G/i6xD4TNQM8/2t3iFfZpDauDDlVbQ1sDo86m7Q8
         //wqIu9W/mwYwh29hv/kYnmGRoK/x48JEWGwsEfsZiM31M2p3EqSVAmc8IpRIJkSvCOM
         iNTHatvDH59JW7IF9fu8w8jmXrn0i2ee3Dt3SYKe63not6dlEmkWMGUIy5CmVj3FJB1N
         RyhQMmj/c7j62zYYJqcY+bNPl/+6BA25Solcj+NpoJ2adWSuEfq1ix7g2rhkqP7aT4oG
         xUbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678902574;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v1MViw2h4qxXqTK71HTICpK4bye50r2hsxjELYtaWNs=;
        b=OzmZRv82TDOTyWqJVdcxu9w4nofpnLQlqY52lzaYxmNdmn8Anekp9m2pS1Lbz85RHC
         O9tQ+cQQHOMKUFe8M21G2Hz4oi5quiwO3at8fz+t7LiMbA7p8jb3CLlsmBlSZPwqltb0
         +Wp5AaOO/ZnyGjenAyYE0WAXQPm5OzGA3VyXn1SELzyA594FN7w+VE1gGCuk6MQFqBlu
         OFLUMmwdVwnBwIL/0decuWfg1mLmufyaUSiFHnQB94mX4LZ7kM1r7I/NLEfx17VqWWes
         goJ62M94nxVmWD/gCcUoREy4pe/S4UBJUa9OWirFDehac5UN3pTobEDTLaZEk51WRNwT
         042w==
X-Gm-Message-State: AO0yUKU+Z92rpx/JlKGRA2faGHDUxkTj5H/6kcE4UKqbxLRCnBYWOjQY
        7z2E70P0JExsiPXVd5s3yZrUCVVy9VbwJCSjaQo=
X-Google-Smtp-Source: AK7set9PfJS532bfged2jGTd67+ou2GA/ukWmGGPVkBfjq9IcitAFkhioG0xJazEUV61CuRKW4g5Kw==
X-Received: by 2002:a05:651c:1a09:b0:295:945d:d483 with SMTP id by9-20020a05651c1a0900b00295945dd483mr1512355ljb.44.1678902573808;
        Wed, 15 Mar 2023 10:49:33 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id v2-20020a2e9242000000b002986854f27dsm934574ljg.23.2023.03.15.10.49.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 10:49:33 -0700 (PDT)
Message-ID: <30a9f859-b1df-a123-fc43-07029335a47c@linaro.org>
Date:   Wed, 15 Mar 2023 18:49:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add Acer Aspire 1
Content-Language: en-US
To:     Nikita Travkin <nikita@trvn.ru>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230315154311.37299-1-nikita@trvn.ru>
 <20230315154311.37299-5-nikita@trvn.ru>
 <b8805711-d720-8f91-c198-10b0553417a4@linaro.org>
 <e901b4f51d258a505b771b1acec6bc64@trvn.ru>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <e901b4f51d258a505b771b1acec6bc64@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15.03.2023 17:41, Nikita Travkin wrote:
> Krzysztof Kozlowski писал(а) 15.03.2023 21:09:
>> On 15/03/2023 16:43, Nikita Travkin wrote:
>>> Acer Aspire 1 is a WoA laptop based on Snapdragon 7c gen1 platform.
>>>
>>> The laptop design is similar to trogdor in the choice of primary
>>> components but the specifics on usage of those differ slightly.
>>>
>>> Add the devicetree for the laptop with support for most of the
>>> hardware present.
>>>
>>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>>> ---
>>> Changed in v2:
>>>  - Various styling, ordering and node naming issues fixed. (Krzysztof)
>>>
>>> Changed in v3:
>>>  - Kepp camcc on, wakeup on touchpad, minor style issues. (Konrad)
>>> ---
>>>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>>>  .../boot/dts/qcom/sc7180-acer-aspire1.dts     | 859 ++++++++++++++++++
>>>  2 files changed, 860 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>>> index 89e23a74bc7f..4bd4b4079b17 100644
>>> --- a/arch/arm64/boot/dts/qcom/Makefile
>>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>>> @@ -76,6 +76,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sa8155p-adp.dtb
>>>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8295p-adp.dtb
>>>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8540p-ride.dtb
>>>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8775p-ride.dtb
>>> +dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-acer-aspire1.dtb
>>>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-idp.dtb
>>>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-coachz-r1.dtb
>>>  dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-coachz-r1-lte.dtb
>>> diff --git a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
>>> new file mode 100644
>>> index 000000000000..b4161f1f21a7
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
>>> @@ -0,0 +1,859 @@
>>> +// SPDX-License-Identifier: BSD-3-Clause
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>> +
>>> +#include "sc7180.dtsi"
>>> +
>>> +#include "pm6150.dtsi"
>>> +#include "pm6150l.dtsi"
>>> +
>>> +/delete-node/ &tz_mem;
>>> +/delete-node/ &ipa_fw_mem;
>>> +
>>> +/ {
>>> +	model = "Acer Aspire 1";
>>> +	compatible = "acer,aspire1", "qcom,sc7180";
>>> +	chassis-type = "laptop";
>>> +
>>> +	aliases {
>>> +		bluetooth0 = &bluetooth;
>>> +		hsuart0 = &uart3;
>>> +		serial0 = &uart8;
>>> +		wifi0 = &wifi;
>>> +	};
>>> +
>>> +	chosen {
>>> +		stdout-path = "serial0:115200n8";
>>> +	};
>>> +
>>> +	reserved-memory {
>>
>> I still don't think it is ordered by name.... "r" is definitely after "a".
> 
> Yes, as I said before, I want to separate the "special" DT spec nodes
> (aliases, chosen, reserved-memory, ... that are defined in the
> chapter 3 of the DT spec) from the other, device nodes.
> 
> I see them on the top on many other boards and I believe this separation
> makes sense since those are not really devices but "more extended"
> properties of the board as a whole.
> 
> If you still believe those must be mixed together and sorted, please 
> explicitly let me know that and I will change the order.
> 
> Also, if there is any documentation that already enforces the order,
> making clear that my opinion is wrong, I would appreciate you pointing
> me to that.
Not really, things are still developing and won't be sparsely written up
until there's good tooling to enforce it..

Konrad
> 
> Regards,
> Nikita
> 
>>
>> Best regards,
>> Krzysztof
