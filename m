Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAF266508F7
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 09:59:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231473AbiLSI7O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 03:59:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbiLSI7M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 03:59:12 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A715FF3
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:59:11 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id b13so12685400lfo.3
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 00:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LtuvsFL509ZEQZpmq6WtJdbfoNX3fcck2fWxFfpn5vA=;
        b=Ofsoqd4wvIXZSWJJukSmyMXcYVziYPtH8yzJ8LBA5sSL7Ec+GxILTxu3Rh659Suucd
         CN/mj39vWRvW22y7m97UVpFF3AY/bVFIYnRDEn9aV1MTNHZECfCdp24ZsPEkCanhVK3X
         OqtXj+yZ2W6G4Tisn131lvMotd1JiOHXuWNQagqZvYsfRSeytVoPLHd8jWCGeoFLo4qi
         nKiuAQ7jHAg6CiKrzakAnOJuhPNlKpN4lWnJwqQ3RObfmhnbf3ArCZx3ieTSA9E9S4nv
         J7B2v3DVJXlatXcCKWdbgNN1a7vu1/bd/gXMTAdw0LNg0lUaycIV66VquSZH+u8Zl78l
         cEYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LtuvsFL509ZEQZpmq6WtJdbfoNX3fcck2fWxFfpn5vA=;
        b=jUs0xfYmKlu+/ssEpasUttI5BFqrMcidyHyu9FhdbVNIGBrAYwG8obUuCin0+vjmxh
         v3sEafWeG37UNVb57u8zZJK4FzYmFH8GqTnBHpmMof4YnZ01Wb1vt2CHhaCxx9Kyi5Ei
         qUVzw3Geh4MYU+FcC6SIONUqK/VYadFz06XZfM1WnT6vVkZmF8LD6LEsSHcQzsoRUrj4
         yc/YCYfC5TXP7NUzdBA1+HLSZXk/FH4kVAuGs6REBoGZEaKM/NE0da0skPTRsSSj+rhe
         /fS77JmyclE0X36mmWzXGCibRIP9Z1vcOVxa6I9UdugOUJAQZvpxA3+nSUVjZCiEF8Ql
         hzDA==
X-Gm-Message-State: ANoB5pnC6KFLH94Nj/6IhHwgw71CWIjYo6hsljwxM6CFJ51VYk13ESuJ
        6uMW7RyCupQtWYpeS8/+lnAAbg==
X-Google-Smtp-Source: AA0mqf5kaQ1tCCWcaVsjQ6hQV2ryftsw/8lEncJjAmxTW0ayJReSoUGEwgIY/G27sW3SR9S6d/e0dA==
X-Received: by 2002:a05:6512:118e:b0:4b6:e64c:aec7 with SMTP id g14-20020a056512118e00b004b6e64caec7mr12049024lfr.3.1671440349685;
        Mon, 19 Dec 2022 00:59:09 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e1-20020a05651236c100b004bd8534ebbcsm1034822lfs.37.2022.12.19.00.59.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 00:59:09 -0800 (PST)
Message-ID: <ba2b5984-06eb-f4d2-8a66-3b68ec15e872@linaro.org>
Date:   Mon, 19 Dec 2022 09:59:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 2/3] dt-bindings: iio: adc: Add binding documentation
 for NXP IMX93 ADC
Content-Language: en-US
To:     Bough Chen <haibo.chen@nxp.com>,
        "jic23@kernel.org" <jic23@kernel.org>,
        "lars@metafoo.de" <lars@metafoo.de>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Cc:     "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <1671024939-29322-1-git-send-email-haibo.chen@nxp.com>
 <1671024939-29322-2-git-send-email-haibo.chen@nxp.com>
 <559fe1ef-cd12-851c-0cfd-282c4cec10ac@linaro.org>
 <DB7PR04MB4010275048307A186BA3D22D90E59@DB7PR04MB4010.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB7PR04MB4010275048307A186BA3D22D90E59@DB7PR04MB4010.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/12/2022 09:52, Bough Chen wrote:
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: 2022年12月15日 18:12
>> To: Bough Chen <haibo.chen@nxp.com>; jic23@kernel.org; lars@metafoo.de;
>> robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de
>> Cc: festevam@gmail.com; dl-linux-imx <linux-imx@nxp.com>;
>> linux-iio@vger.kernel.org; devicetree@vger.kernel.org;
>> linux-arm-kernel@lists.infradead.org
>> Subject: Re: [PATCH v2 2/3] dt-bindings: iio: adc: Add binding documentation for
>> NXP IMX93 ADC
>>
>> On 14/12/2022 14:35, haibo.chen@nxp.com wrote:
>>> From: Haibo Chen <haibo.chen@nxp.com>
>>>
>>> The IMX93 SoC has a new ADC IP, so add binding documentation for NXP
>>> IMX93 ADC.
>>>
>>> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
>>> ---
>>>  .../bindings/iio/adc/nxp,imx93-adc.yaml       | 79
>> +++++++++++++++++++
>>>  1 file changed, 79 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/iio/adc/nxp,imx93-adc.yaml
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/iio/adc/nxp,imx93-adc.yaml
>>> b/Documentation/devicetree/bindings/iio/adc/nxp,imx93-adc.yaml
>>> new file mode 100644
>>> index 000000000000..229bb79e255c
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/iio/adc/nxp,imx93-adc.yaml
>>
>> This was already sent, so I am surprised to see this in worse or the same state.
>> Don't force us to repeat review, it's a waste of time.
> 
> Sorry, I'm focus on the driver side, will pay much attention on the yaml binding.
> 
> By the way, for your first review comments:
> 
>    > +
>    > +  clocks:
>    > +    maxItems: 1
>    > +
>    > +  clock-names:
>    > +    const: ipg
> 
>    No need for clock-names in such case.

I think this was for the other patch and recommendation was to drop
entire clock-names. Here you do not have it, so no need to change this.

Best regards,
Krzysztof

