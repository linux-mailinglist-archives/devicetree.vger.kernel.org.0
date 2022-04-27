Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40A995119A4
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 16:55:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236666AbiD0NxH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 09:53:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236686AbiD0NxG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 09:53:06 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC9850E24
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 06:49:54 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id g6so3570201ejw.1
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 06:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QFNQrA32fuYd2F5FV6KhiOUfB8l/5BedQGZrfnsP4yI=;
        b=Q8sDVTiOtwfCFN6Y1i78Wb2+hSJz8MldDwCCvg1H08T9lEkzx/7tU5utplVJzPZPAD
         /5UXHNlu63/oDW0cjU2Aph8GqH13LXUkXY8GyW/rx6oBnNC7V5SX6NTU+CVsdiS0mgKx
         cOGYJoxcuQWTgy3hCrIBiEdZ/Ux/VzEJe29JpvueNHKalwqClVwSKfR9kzCx+WKtz9UT
         mgzgas/8b8QY/E9II84+5exRU50GdDR7/aJKWIE6C62NS34fa3xse8ZefKtLirjb+Bv4
         DL7mgfaqV0oT/WAewapi8HyT+FnHrfWP5M7RQULiu1RHSpCCfbNvBpwC5h/OJ7cw15EJ
         HAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QFNQrA32fuYd2F5FV6KhiOUfB8l/5BedQGZrfnsP4yI=;
        b=RKbJqcC+nLdUdl4t0z45EpfwClRU4uFzjK1kyxOYy/WRV7687hAi7uNvQhHyQADMg8
         7UkHvsHkAbBxfwi2uNbN6s9aJv2qmOD/KnjmFe4CblsFF3kKAMdavwdSnmJUzdCW8dbk
         69e7tONspc4d4THFbTNX4wqG3/bh2w8GMl1GA8B6UbmIU3TY7zDBEvkgLtql/xQebQf7
         4AoLLMq8B3vbk5cQG/hH7Dwr4zWHWY1BOwisDymmf/lNOiQSwmn86HehiicJRbx97d+7
         vhyrhX3gDowHO849jE10hgmpdtPe28Llk85SBciNSQ0X1MOp6ks+5Se+Z2+/WJShptFe
         lvsQ==
X-Gm-Message-State: AOAM533uaVFbiysbuGiypSzjfG21C+QhhB/E71VGkVhBq0dZ5vP6y75f
        a8noc+joZVGISrd3wyR/pp4Ybw==
X-Google-Smtp-Source: ABdhPJz+P7BK3aoOx/zpYvDHz+oF6jP0divRXrX3SJm+BoaLMDLEd64XLg5K3Qi7ul6dN4sVmqVXQw==
X-Received: by 2002:a17:907:86a8:b0:6f0:1f97:d7da with SMTP id qa40-20020a17090786a800b006f01f97d7damr26851297ejc.663.1651067393017;
        Wed, 27 Apr 2022 06:49:53 -0700 (PDT)
Received: from [192.168.0.154] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id li18-20020a170906f99200b006f3a79f51f0sm3201684ejb.207.2022.04.27.06.49.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 06:49:52 -0700 (PDT)
Message-ID: <d43d7e40-40d7-a89e-115f-04a305d7239b@linaro.org>
Date:   Wed, 27 Apr 2022 15:49:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: mfd: wlf,arizona: Add spi-max-frequency
Content-Language: en-US
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        - <patches@opensource.cirrus.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
References: <20220427065102.109046-1-krzysztof.kozlowski@linaro.org>
 <20220427122143.GB38351@ediswmail.ad.cirrus.com>
 <20220427125801.GC38351@ediswmail.ad.cirrus.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427125801.GC38351@ediswmail.ad.cirrus.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 14:58, Charles Keepax wrote:
> On Wed, Apr 27, 2022 at 12:21:43PM +0000, Charles Keepax wrote:
>> On Wed, Apr 27, 2022 at 08:51:02AM +0200, Krzysztof Kozlowski wrote:
>>> The Wolfson Microelectronics Arizona audio can be connected via SPI bus
>>> (e.g. WM5110 on Exynos5433 TM2 board), so allow spi-max-frequency
>>> property.
>>>
>>> Reported-by: Rob Herring <robh@kernel.org>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>
>> Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>
>>
> 
> Apologies but looking at this again I can't quite see why this is
> necessary. The Arizona schema should allow properties that arn't
> specified. Do you have an example of what failed to warrant this?

The Arizona schema has unevaluatedProperties: false, which means unknown
properties will not be accepted. Neither Arizona schema nor other
referenced schemas define spi-max-frequency, so when the schema is run,
the property will be unevaluated, thus cause a warning.

This is visible here at the bottom (with Rob's work-in-progress):
https://lore.kernel.org/linux-devicetree/345716e9-5624-5ba0-09f0-46e9850c546c@linaro.org/T/#m4b5d7cfdf34dbd410003b2faae4d840113050c51

Although I think that I did not fix it properly, because I missed
'controller-data', so instead this should be fixed with referencing
spi-peripheral-props like here:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.17.y&id=f412fe11c1a9d815565f3918c56f3fd02167c734



Best regards,
Krzysztof
