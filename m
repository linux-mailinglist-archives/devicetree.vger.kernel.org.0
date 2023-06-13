Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A01072EBA6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 21:10:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbjFMTJL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 15:09:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232117AbjFMTJJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 15:09:09 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49C781BDB
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 12:09:06 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5183101690cso6547247a12.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 12:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686683345; x=1689275345;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MKlCZA3/0PkDlUywQkb1PhLDuUB0+9ELHymR4eA15rU=;
        b=lZ1wJxBDp4pcSXNcp8cWxLTeTK+HfrIKZf+m6Da9S4dJxZnFROIxyPWK29t5lg1uIz
         f1vRtdGpZwRVf763rgTVMVwR52eCt803s6ILFw2sgIwPUWkL73MljIkpr4sheWylcuRy
         IdJCUShTOt/IM3ybMAIoedKwvM1U2UAUzAByDo40cgdBapXMYB33FM8PLgrfRI7mCy3G
         i1kcpoccvYIFngDig6XYaxjmxrD3eM2eiDq0BOxzXbr3Q7AGJ/44syvx/knQZz6NUWv5
         Ru5Sc4OsHz5xRVMvUd9RxoIXp+VA99Mg8ZtC+zGhpZ10wgU6JWA4QDHTWWzWtgq2dNae
         r2Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683345; x=1689275345;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MKlCZA3/0PkDlUywQkb1PhLDuUB0+9ELHymR4eA15rU=;
        b=WYtN0Yc3NTUea/g5eAz3PtG0gQHb1Gx3yZA/7lHyIrLp2i5bGPP0EIY834gHIkB1bY
         dswK8VbI9NibYiMeeKpen6oFW8NgK/UrcElsNgWW5u28MyNdpl4aFbOkOWjcVOGfRM0f
         9kcWxVtwnI0CG+zoIGQAnWXdRTVBTrbY3lguKc2BF8eSwSraWGU1A9D6ovgx6xOAgXcL
         MECKDcBfExIHwtrLfNjzFu7L3RFs+iX3StMxowfGYzNQQqgItqBfg13fOw2rfPi51UyC
         +phhkAB/WBUowsUT1S8OBlrwHi2L+KjubcIOdHJr7XPT9ZGkjumX8RYISYTX2blu4Q/H
         uHYg==
X-Gm-Message-State: AC+VfDzjwA0+JI3CZ8BeyDsEyBQqrxHzWPd1yjsEy/aSFogzdZkP4sXr
        S9huyMFpg/Ixlt4uMKRpS04R0Q==
X-Google-Smtp-Source: ACHHUZ4yc/iBIzssqHOIK2gvJxevALXcV3FSbVA9Not+FCwtqKOBEB2uVioxt8Oj1PA/XRY9ZE8rTg==
X-Received: by 2002:a05:6402:2691:b0:514:9e81:6185 with SMTP id w17-20020a056402269100b005149e816185mr9449038edd.16.1686683344773;
        Tue, 13 Jun 2023 12:09:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id j25-20020aa7c0d9000000b005148f0e8568sm6820301edp.39.2023.06.13.12.09.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:09:04 -0700 (PDT)
Message-ID: <0600a505-d1bf-f4be-57ef-51d34c77501e@linaro.org>
Date:   Tue, 13 Jun 2023 21:09:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 3/8] dt-bindings: rtc: isl12022: add bindings for
 battery alarm trip levels
Content-Language: en-US
To:     Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230613130011.305589-1-linux@rasmusvillemoes.dk>
 <20230613130011.305589-4-linux@rasmusvillemoes.dk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230613130011.305589-4-linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/06/2023 15:00, Rasmus Villemoes wrote:
> The isl12022 has a built-in support for monitoring the voltage of the
> backup battery, and setting bits in the status register when that
> voltage drops below two predetermined levels (usually 85% and 75% of
> the nominal voltage). However, since it can operate at wide range of
> battery voltages (2.5V - 5.5V), one must configure those trip levels
> according to which battery is used on a given board.
> 
> Add bindings for defining these two trip levels. While the register
> and bit names suggest that they should correspond to 85% and 75% of
> the nominal battery voltage, the data sheet also says
> 
>   There are total of 7 levels that could be selected for the first
>   alarm. Any of the of levels could be selected as the first alarm
>   with no reference as to nominal Battery voltage level.
> 
> Hence this provides the hardware designer the ability to choose values
> based on the discharge characteristics of the battery chosen for the
> given product, rather than just having one battery-microvolt property
> and having the driver choose levels close to 0.85/0.75 times that.
> 
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
>  .../devicetree/bindings/rtc/intersil,isl12022.yaml | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
> index 7c1e638d657a..d5d3a687a34d 100644
> --- a/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
> +++ b/Documentation/devicetree/bindings/rtc/intersil,isl12022.yaml
> @@ -22,6 +22,18 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  isil,trip-level85-microvolt:

Why encoding level85 in the property name? Your commit msg (datasheet)
suggests this is quite flexible, so why it cannot be just list of two
trip levels - for first and second interrupt?

> +    description: |

Do not need '|' unless you need to preserve formatting.

Best regards,
Krzysztof

