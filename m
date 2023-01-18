Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4ADB4671E36
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 14:42:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230238AbjARNmU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 08:42:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230260AbjARNl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 08:41:29 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A6895CFCF
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 05:10:39 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so1476298wms.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 05:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gMt/wp3WbOXbTfbA+d1k09lZt+rQel9nwZQ3NXLePAc=;
        b=XI9Hc0rxtv7qdXArMx0THTwzLrHzWSOElocAZ+jT5Ec7PcwRHPsx7GS761Kd+dCRpY
         Z6lqSeBdIyoLQxiJLIUmleTXhYcuBagN7N1EpM4fSKnZFwiBG74PM9qNw2H6AcAsiL/4
         QaaS4hIqUUrQMjsCJoJcuHpWXmlXKpSkoTcuqIzuEqvH+3JvObkCl7W5OhR+rdZmBDbF
         PTlG/BLQYRyuPPMeci2If4izJ6dpSVtJqM1nPqhSfOizthD3wEMc7BVm+bPjmF1i+rNT
         rSAm7T5Ynvw1nn8NiU+EjO+hpUnU4QA7BnQDVu4jQYEN4yYXJQF5JQFXUfl7XGMJwABz
         zg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gMt/wp3WbOXbTfbA+d1k09lZt+rQel9nwZQ3NXLePAc=;
        b=in8+kEBtZHj0SeUZ7lO5zXRnClUuAlwm3EyBnKvGecGvjiCpZFb5ZYjoL0T3Ceqjsx
         3BZyFuL7RXFOprWOOG1eo3EKh+wmka7B0RDP2F8m+UFuYivfeAHq2Lp0X29bnzIrEOq0
         8Zm41gtKKF+/xhUNi0BehYyeS3wGN250m7TzomZ/r7AoVc7aHG8CjsgU4w55b9IWw+rE
         rO+b2lFKxpftFoz81pba4W3RTZYdElLLolbn2oe9PEw5KkUhMPEatwdnHO8sOpgR0gvX
         xMh+gDtopGo+HrykSQ9Chqe6lvZWB2qoFbZeIIQPBGkW9rUNerhoPyQXcGMrFyTLOFr3
         D2Bg==
X-Gm-Message-State: AFqh2krcZySJoRLFI6986L3cWa2aZUNY//g/QmQWwCb97g9c4MJ6JLmx
        VWOL75k0DuENfuC5gTKtz2QY8V3J4JnUWJ6/
X-Google-Smtp-Source: AMrXdXvJsQkYWVVLm/ooySmLne6fQKOUzS/1iKpwLlj2xSp4xexKExxdKGMZZC7qwEiS4TFB9gTlag==
X-Received: by 2002:a05:600c:1e09:b0:3d1:f16d:5848 with SMTP id ay9-20020a05600c1e0900b003d1f16d5848mr6541616wmb.26.1674047436416;
        Wed, 18 Jan 2023 05:10:36 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bg14-20020a05600c3c8e00b003b4cba4ef71sm2416963wmb.41.2023.01.18.05.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 05:10:36 -0800 (PST)
Message-ID: <50f1fe82-0589-1108-ca42-195cf48229a8@linaro.org>
Date:   Wed, 18 Jan 2023 14:10:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH] MAINTAINERS: Add entry for DHCOM i.MX8M Plus SoMs and
 boards
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230117223852.130143-1-marex@denx.de>
 <e3b73baf-b36b-17c0-f414-bbf2dd746411@linaro.org>
 <13b341ba-92d1-0989-5d7c-a9df080ca56b@denx.de>
 <9dd523e7-5493-12b2-5bce-75ed632df0e0@linaro.org>
 <9fe9092e-953b-3e19-60aa-0d83904d9c84@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9fe9092e-953b-3e19-60aa-0d83904d9c84@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 13:47, Marek Vasut wrote:
> On 1/18/23 13:38, Krzysztof Kozlowski wrote:
>> On 18/01/2023 13:35, Marek Vasut wrote:
>>> On 1/18/23 12:37, Krzysztof Kozlowski wrote:
>>>> On 17/01/2023 23:38, Marek Vasut wrote:
>>>>> Add maintainers entry for DH electronics DHCOM i.MX8M Plus
>>>>> based SoMs and boards.
>>>>>
>>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>>> ---
>>>>> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
>>>>> Cc: Fabio Estevam <festevam@gmail.com>
>>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>>>> Cc: Marek Vasut <marex@denx.de>
>>>>> Cc: NXP Linux Team <linux-imx@nxp.com>
>>>>> Cc: Peng Fan <peng.fan@nxp.com>
>>>>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>>>>> Cc: Rob Herring <robh+dt@kernel.org>
>>>>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>>>>> Cc: Shawn Guo <shawnguo@kernel.org>
>>>>> Cc: devicetree@vger.kernel.org
>>>>> To: linux-arm-kernel@lists.infradead.org
>>>>> ---
>>>>>    MAINTAINERS | 6 ++++++
>>>>>    1 file changed, 6 insertions(+)
>>>>>
>>>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>>>> index d0a36e45aa4be..e9be585d507e9 100644
>>>>> --- a/MAINTAINERS
>>>>> +++ b/MAINTAINERS
>>>>> @@ -5968,6 +5968,12 @@ S:	Maintained
>>>>>    F:	arch/arm/boot/dts/imx6*-dhcom-*
>>>>>    F:	arch/arm/boot/dts/imx6*-dhcor-*
>>>>>    
>>>>> +DH ELECTRONICS IMX8M PLUS DHCOM BOARD SUPPORT
>>>>> +M:	Marek Vasut <marex@denx.de>
>>>>> +L:	kernel@dh-electronics.com
>>>>> +S:	Maintained
>>>>> +F:	arch/arm64/boot/dts/freescale/imx8mp*-dhcom-*
>>>>
>>>> We do not keep maintainer per board. The idea was to use in-board
>>>> emails, but the patch doing that was not accepted. But regardless -
>>>> entries per board in maintainers is crazy amount of new entries. Way too
>>>> many.
>>>
>>> What would you propose I should do here to get a valid entry for this
>>> machine ?
>>
>> There can be no entry for the machine because we do not keep entries for
>> machines. Just look at MAINTAINERS file.
>>
>> If anyone thinks per-board maintainership is useful, should revive patch:
>>
>> https://lore.kernel.org/all/20210809080204.8381-1-shawnguo@kernel.org/
> 
> This wouldn't add the L: list entries to CC, would it ?

Shawn's patch can be updated to parse whatever you wish. But anyway what
stops in such case adding list address to the DTS, the same as person's
address?

Anyway this is independent topic. This board is not special so it does
not deserve special treatment. None of other boards receive entries.
Otherwise please Cc Arnd, Olof and soc, so we can make a policy and
start adding hundreds of per-board entries (I will be happy to add
several of them).

Best regards,
Krzysztof

