Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 291F25A363E
	for <lists+devicetree@lfdr.de>; Sat, 27 Aug 2022 11:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231222AbiH0JUb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Aug 2022 05:20:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233349AbiH0JUa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Aug 2022 05:20:30 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB5A4AD6D
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 02:19:56 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id x10so3613879ljq.4
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 02:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=P5IKHw0PPwsgve7Zpk2kqjbiuJZNeLQkkjQUnI5YT3Y=;
        b=QeaCRvzIQ7HdjCRxOb/aMHZ+OwqTZ51R27GFaNnFtPAnw8haUixp2xvCEqendjo7wE
         UGufRjIKNLoQgvZBLl+Eogct45CsnCLuj16DzZ+82F+n2o7uHSUJ2rVUiJstlm25d8py
         +Jn5FG/hoJw7XiSn0jNAFY5DR6b+mdUIK4s5PN2e4kZVDwOYXgPtOc33ejb4AilHDJ4V
         CfYz9+DWHCi9TM2GqImZ3aNJ8iSwWSBN7fvLJYDJF2g7sigWd2QKPXB6OmGB/ZuN/sQN
         FYcBMpkcIRJcmtP0WqMEgCq+gmIe3yEYWhCqK3JqUq0ZzeEEP79a3mXlHyuuLN2QVgbW
         NadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=P5IKHw0PPwsgve7Zpk2kqjbiuJZNeLQkkjQUnI5YT3Y=;
        b=MEe4+oIK9ISFOnsHorHUPske3puvKhDrh2GXJ11AcWHMclVNurYyJ9fRtK83yT2IPX
         fr1KM4e9gY2834V4MQ74qas4Q9iNLHGGYZ+F7Iqb6M9/oN5iNnZOtXY6JoqzkroGt89z
         9z80PFXCkJpFc5oxxkIIyhs+FpveXn4jPiojq/sKh7yBRmps0YGD+T1PRdvPFAYSipG0
         HQ+wPsrUnDGrPmIfJvMXTaaTkIAdEWarbZxJJeFAercBS61pvSwvXwaG8BNJ95lEMV86
         cSeq0jExLHjeuPHn66tvcXmB+51jiBQJdZMbhAH3AjOQZJk+scl87I2NSDADZYUSKc0X
         bmOw==
X-Gm-Message-State: ACgBeo3hXslA0UZlqtST01broPoOvfGQZmPI1IAWdNPag+mJ19Rnaj68
        ywpNORZkLuei2hTsTXFg19HHnA==
X-Google-Smtp-Source: AA6agR6edN6BcBtXJ+BLtILymRaC0Fp66FwzG+ppD8pr+j7o714Swgc1fW+ugd3qvO26b+4oSEHE5g==
X-Received: by 2002:a2e:851a:0:b0:261:e2cb:6390 with SMTP id j26-20020a2e851a000000b00261e2cb6390mr3028495lji.104.1661591994596;
        Sat, 27 Aug 2022 02:19:54 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id o3-20020ac25e23000000b0048b12ff12e8sm619619lfg.99.2022.08.27.02.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 02:19:54 -0700 (PDT)
Message-ID: <670dee09-4e37-abb6-dea3-898eb04dd2ee@linaro.org>
Date:   Sat, 27 Aug 2022 12:19:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: Aw: Re: Re: [PATCH v5 5/5] arm64: dts: rockchip: Add PCIe v3
 nodes to BPI-R2-Pro
Content-Language: en-US
To:     Frank Wunderlich <frank-w@public-files.de>
Cc:     Frank Wunderlich <linux@fw-web.de>,
        linux-rockchip@lists.infradead.org,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Yifeng Zhao <yifeng.zhao@rock-chips.com>,
        Johan Jonker <jbx6244@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Simon Xue <xxm@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-6-linux@fw-web.de>
 <cae915f6-c951-ba97-346d-00922c85067d@linaro.org>
 <trinity-88fbbdbe-de76-4479-9580-70edc34a4181-1661590200169@3c-app-gmx-bs16>
 <ee6dc940-8b90-1f57-28b7-6de8e3483027@linaro.org>
 <trinity-9006aaf2-5bc2-467c-a86e-ba43efc692e6-1661591668494@3c-app-gmx-bs16>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-9006aaf2-5bc2-467c-a86e-ba43efc692e6-1661591668494@3c-app-gmx-bs16>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/08/2022 12:14, Frank Wunderlich wrote:
>> Gesendet: Samstag, 27. August 2022 um 10:56 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
> 
>> On 27/08/2022 11:50, Frank Wunderlich wrote:
>>> Hi
>>>
>>>> Gesendet: Freitag, 26. August 2022 um 08:50 Uhr
>>>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
>>>> On 25/08/2022 22:38, Frank Wunderlich wrote:
>>>>> From: Frank Wunderlich <frank-w@public-files.de>
>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>>>> index 93d383b8be87..40b90c052634 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>>>> @@ -86,6 +86,66 @@ vcc5v0_sys: vcc5v0-sys {
>>>>>  		vin-supply = <&dc_12v>;
>>>>>  	};
>>>>>
>>>>> +	pcie30_avdd0v9: pcie30-avdd0v9 {
>>>>
>>>> Use consistent naming, so if other nodes have "regulator" suffix, use it
>>>> here as well.
>>>
>>> only these 3 new have the suffix:
>>>
>>> vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator
>>> vcc3v3_minipcie: vcc3v3-minipcie-regulator
>>> vcc3v3_ngff: vcc3v3-ngff-regulator
>>>
>>> so i would drop it there...
>>>
>>> so i end up with (including existing ones to compare):
>>>
>>> vcc3v3_sys: vcc3v3-sys
>>> vcc5v0_sys: vcc5v0-sys
>>> pcie30_avdd0v9: pcie30-avdd0v9
>>> pcie30_avdd1v8: pcie30-avdd1v8
>>> vcc3v3_pi6c_05: vcc3v3-pi6c-05
>>> vcc3v3_minipcie: vcc3v3-minipcie
>>> vcc3v3_ngff: vcc3v3-ngff
>>> vcc5v0_usb: vcc5v0_usb
>>> vcc5v0_usb_host: vcc5v0-usb-host
>>> vcc5v0_usb_otg: vcc5v0-usb-otg
>>>
>>> is this ok?
>>>
>>> maybe swap avdd* and pcie30 part to have voltage in front of function.
>>>
>>
>> I prefer all of them have regulator suffix. I think reasonable is also
>> to rename the old ones and then add new ones with suffix.
> 
> ok, will change these to add -regulator in name (not label). and then rename the others in separate Patch outside of the series.
> 
> so basicly here
> -       pcie30_avdd0v9: pcie30-avdd0v9 {
> +       pcie30_avdd0v9: pcie30-avdd0v9-regulator {
> -       pcie30_avdd1v8: pcie30-avdd1v8 {
> +       pcie30_avdd1v8: pcie30-avdd1v8-regulator {
> 
> how about the swapping of pcie30 and the avddXvY? In Schematic they are named PCIE30_AVDD_0V9 / PCIE30_AVDD_1V8, so better leave this?
> 
> avdd0v9-pcie30 will be more similar to the other regulators, but inconsistent with Schematic.

Does not matter to me - it is still a specific prefix, so whatever you
put there it's for you, not for me. Keeping something aligned to
schematic - even if not consistently named - makes sense to me.

Best regards,
Krzysztof
