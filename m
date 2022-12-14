Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F8F864C8A6
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 13:03:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238335AbiLNMDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 07:03:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237830AbiLNMDR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 07:03:17 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F73E220EC
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:02:22 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 1so10076738lfz.4
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/YEFWnP5PkWVaGatN8QMHKtM46Kdvs/WcFnGw+TIVqk=;
        b=cBkQgXlzLeOOoztdKC9Osh4XQbFRnyGXOONlz7XWeAYPzS/6Z+mEY6a0BlGyeAxu2C
         xt6i8JNVAqFz5pFHFIC9bqXQy4Yx2l629CT45vb2GrOTS83ABR5YKbAwiyoKLDszl9xE
         4aa9+npUJ6Np5V8Ukr2rBptKlgs8XnMAXTgWPd7ExjbrKH+VwRcVjGQPnIhCH8JZkCsr
         zzu3E8c1VdcDrVcD9SfJ4z9C2bb1jpvqvTErn1jue73t3xXrSkRGQBFkxNCDJNvjwJus
         66w4f4uKppZvm1IFgF5ploPv0RmESVNEtllncvtPIpPf6cv+WlK3ohuriWVN8VpdgOGq
         nI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/YEFWnP5PkWVaGatN8QMHKtM46Kdvs/WcFnGw+TIVqk=;
        b=V3Bqy8eVNrVMyLMAblOEqAGmME50Rm/0XraPKJ1bnYw8xgUb8/3DHP88w+eJGOX7BD
         FXwicorl4Tswr/2rWiSlfDqdQuOsWZkuiqmMVPNVLqOS+irKpZ20D90721Rrc5Kf+4pJ
         6d/OqEseZx+dNbaQbR6TBA9LjyWs6hTW48JFzyeTcPb8ltWGcbEdNBCVaqntfB00+LhD
         gX9yVCBtP1H7akD3c3TQ+I/tAtVALXI2zcJ8dg/Def3Nj6JCIcjO0H5FynT6COK0m9XS
         hvgBkWuN1C5A5AfjjhTTeYStd+B04+5WP0IbGRoYEjXL7gDsrGDxMZHrPkQ8lwCKymGX
         oBBw==
X-Gm-Message-State: ANoB5plF9+pMnZx9Y/15RAqJwFvpR2xtGl8y8D/H8+1QdjeebJ5YnrCh
        1Hu8l9RHpM54S+EYUAy4EuNcUQ==
X-Google-Smtp-Source: AA0mqf52ws/+n72D2eyxSj47gzgLGurq8Cn/9wUG4OODdHWnvcCa5LDCYJGJk8zsXC/ibgJDCqmfog==
X-Received: by 2002:a05:6512:2353:b0:4b4:bca5:5bd with SMTP id p19-20020a056512235300b004b4bca505bdmr7434714lfu.46.1671019341083;
        Wed, 14 Dec 2022 04:02:21 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k8-20020ac257c8000000b004b0a1e77cb2sm782746lfo.137.2022.12.14.04.02.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 04:02:20 -0800 (PST)
Message-ID: <dd2a373e-d3a7-cec9-6608-379d61f4228f@linaro.org>
Date:   Wed, 14 Dec 2022 13:02:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 10/12] dt-bindings: mediatek: mt8188: add audio afe
 document
Content-Language: en-US
To:     =?UTF-8?B?VHJldm9yIFd1ICjlkLPmlofoia8p?= <Trevor.Wu@mediatek.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "tiwai@suse.com" <tiwai@suse.com>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
        "perex@perex.cz" <perex@perex.cz>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "angelogioacchino.delregno@collabora.com" 
        <angelogioacchino.delregno@collabora.com>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20221208033148.21866-1-trevor.wu@mediatek.com>
 <20221208033148.21866-11-trevor.wu@mediatek.com>
 <d7d9f3c7-b3e3-1e13-a80f-c7bf7b38a5b1@linaro.org>
 <45b4b287dfd57b99e0ba5675bf99194f6d84d9da.camel@mediatek.com>
 <fb34e446-2904-a357-e54b-3e82a2b0745c@linaro.org>
 <e08fab2a694313abc12e0f8303de3e2e704b388c.camel@mediatek.com>
 <e20884d2-5d30-9519-d070-8e2ac07f2171@linaro.org>
 <6eae5d7eef22443b6152c6655c89bdfd70e59089.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6eae5d7eef22443b6152c6655c89bdfd70e59089.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/12/2022 16:06, Trevor Wu (吳文良) wrote:
> On Mon, 2022-12-12 at 09:40 +0100, Krzysztof Kozlowski wrote:
>> On 12/12/2022 03:43, Trevor Wu (吳文良) wrote:
>>>>>
>>>>>>> +    uniqueItems: true
>>>>>>> +    items:
>>>>>>> +      minimum: 0
>>>>>>> +      maximum: 15
>>>>>>> +
>>>>>>> +  "^mediatek,etdm-in[1-2]-mclk-always-on-rate-hz$":
>>>>>>> +    description: Specify etdm in mclk output rate for
>>>>>>> always
>>>>>>> on
>>>>>>> case.
>>>>>>
>>>>>> How is it different than assigned-clock-rates?
>>>>>>
>>>>>
>>>>> This includes clock enabling at init stage.
>>>>
>>>> assigned-clock-rates are also at init stage. I asked what is
>>>> different.
>>>>
>>>
>>> If the property is used, there are three parts included in dai
>>> driver
>>> probe function.
>>>
>>> 1. set clock parent (which APLL)
>>> 2. set clock rate (MCLK rate)
>>> 3. enable clock (MCLK On)
>>>
>>> The first two parts can be done by existing dts clock properties,
>>> but
>>> the last one can't.
>>> When MCLK should be enabled at boot time and kept on, this property
>>> is used. That's why I say the property is designed for always-on
>>> case.
>>
>> Heh, so the "always on case" means this property enables clock? How
>> is
>> this even DT property? That's not how clocks should be kept enabled.
>> You
>> need proper clock provider and consumer.
>>
>>
> 
> Hi Krzysztof,
> 
> Sorry, I don't know it is not appropriate to notify driver that the
> clock should be ketp enabled after boot.
> 
> The original idea is that enabling this clock in the machine driver,
> but a property to inform machine driver is also required when the
> machine driver is shared by different codec combination. And it's
> easier to handle set_rate and set_parent in etdm dai driver, so I put
> the property here.
> 
> Do you mean if the clock consumer(audio codec or external DSP) requries
> the clock, the consumer should enable the clock by itself?

Yes, your clocks should have consumers and they keep the clock enabled
when needed. Certain clocks can be marked as IGNORE or CRITICAL to keep
enabled without consumers (or even when consumers disable), but that's
still not a DT property.


Best regards,
Krzysztof

