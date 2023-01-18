Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CBF6671D3D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 14:15:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbjARNPX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 08:15:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231366AbjARNPG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 08:15:06 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27028457E3
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 04:38:13 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id t5so29373795wrq.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 04:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E99zHyJ+Pd+SWISxdU5lR2QvzoAbFy5WjBWHYOWy1Q4=;
        b=hFqe9beCY6jQtEh+tVIslgRF8seQwYXsXWfa6m8iK4HuKfyriu44UBmYpd7dCnAT1A
         V75WjnzT4ZN8RfonysHPhd0CTjovO+LeeRzZHV+ML2cY1Wout6W0BIrV86SWV8pOCr4k
         wTWtjEfHV9Ykw15DWGUsUxo+OvAeKBvd8Yp9/yZIqSYMA/N+jYRTUph6mfJe3yqGq1B7
         GiZnnUO510AeXy3RiNF+VLgu0Q4pwnN/Eb19cVS6UccUDz1WrKjN5v7cRZo1fZL7fdPz
         znnHTtt/1DOLelBBhrSmFx0d7u1EMvH5Gb/ozQyA5myZEx10WeWJNPC1FqzqHRSnTzqT
         AYTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E99zHyJ+Pd+SWISxdU5lR2QvzoAbFy5WjBWHYOWy1Q4=;
        b=UOR92FQmO7hKP7CpSs9KjKANUoTJAyMTHcg1DWfmGXrzJ9tzwenE8wNVzW3ogjgs3S
         4ApaUsV76hI9t0RCnPXS7KlEB4UQJ6/uAj8NSj+GaPtZj9D6XTeFcKyPvLWMaSuUMojZ
         DNT70qMi/d89cMcSqxtIbV+UpQK+w4zMmWpWzcSFwiSOJonNGFazNOpaE5dNHtq5W29C
         w6I87r9cbImb7mkQFK5BYJVDaRabIYklRFgtfAU84iHswuugGYtiQXYeduQVBtZh6PmW
         XT+uvSdYso122xWiYWvFfv+FFuBI6FjyLIgm5nOS8U3NRl6TfmLMdOv41Ns4R/jM51p3
         4a1Q==
X-Gm-Message-State: AFqh2kouIr0fZYmx3CTCGc9eFn/UqdwyNPUF8oBbnD8oylJpLqYun2r7
        CToPKneIR+R0Y7RMdJv378/lYA==
X-Google-Smtp-Source: AMrXdXupX6Jqq1sJCbQjkalvbRivPL3xMDa1QVEGSu7UH3ceXKK0DA2930yTE0OMiSnHoGyeoQk/Hw==
X-Received: by 2002:a05:6000:603:b0:2bd:f651:3a67 with SMTP id bn3-20020a056000060300b002bdf6513a67mr7033775wrb.64.1674045491677;
        Wed, 18 Jan 2023 04:38:11 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r12-20020a5d4e4c000000b002be1d1c0bd7sm4378059wrt.93.2023.01.18.04.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 04:38:11 -0800 (PST)
Message-ID: <9dd523e7-5493-12b2-5bce-75ed632df0e0@linaro.org>
Date:   Wed, 18 Jan 2023 13:38:09 +0100
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <13b341ba-92d1-0989-5d7c-a9df080ca56b@denx.de>
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

On 18/01/2023 13:35, Marek Vasut wrote:
> On 1/18/23 12:37, Krzysztof Kozlowski wrote:
>> On 17/01/2023 23:38, Marek Vasut wrote:
>>> Add maintainers entry for DH electronics DHCOM i.MX8M Plus
>>> based SoMs and boards.
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
>>> Cc: Fabio Estevam <festevam@gmail.com>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Marek Vasut <marex@denx.de>
>>> Cc: NXP Linux Team <linux-imx@nxp.com>
>>> Cc: Peng Fan <peng.fan@nxp.com>
>>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>>> Cc: Shawn Guo <shawnguo@kernel.org>
>>> Cc: devicetree@vger.kernel.org
>>> To: linux-arm-kernel@lists.infradead.org
>>> ---
>>>   MAINTAINERS | 6 ++++++
>>>   1 file changed, 6 insertions(+)
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index d0a36e45aa4be..e9be585d507e9 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -5968,6 +5968,12 @@ S:	Maintained
>>>   F:	arch/arm/boot/dts/imx6*-dhcom-*
>>>   F:	arch/arm/boot/dts/imx6*-dhcor-*
>>>   
>>> +DH ELECTRONICS IMX8M PLUS DHCOM BOARD SUPPORT
>>> +M:	Marek Vasut <marex@denx.de>
>>> +L:	kernel@dh-electronics.com
>>> +S:	Maintained
>>> +F:	arch/arm64/boot/dts/freescale/imx8mp*-dhcom-*
>>
>> We do not keep maintainer per board. The idea was to use in-board
>> emails, but the patch doing that was not accepted. But regardless -
>> entries per board in maintainers is crazy amount of new entries. Way too
>> many.
> 
> What would you propose I should do here to get a valid entry for this 
> machine ?

There can be no entry for the machine because we do not keep entries for
machines. Just look at MAINTAINERS file.

If anyone thinks per-board maintainership is useful, should revive patch:

https://lore.kernel.org/all/20210809080204.8381-1-shawnguo@kernel.org/

Best regards,
Krzysztof

