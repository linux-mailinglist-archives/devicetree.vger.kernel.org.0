Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9843764EA75
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbiLPLbJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:31:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231260AbiLPLaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:30:52 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C15641B9FD
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:30:45 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id y4so1812660ljc.9
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=05rB3U3b128McDFXG+s8KkNAz+6RDwWkT+PP9f8F8g0=;
        b=CYF7wwDduN06j7EB8tWkH8cas//i9408CEC94xDtMIUSVVjWMvzOR625N8hH0EGvqG
         Ep0ZAb6GP0omDHpJPWGfLOyHjvw/ZFf0xPwMuRrNlCuXFkNFfAdTaI2BqtRWMfQLJbpP
         oKscIgxdH33uKinTOOv/C5yLi8JY83w4zgFZwTHAIGJeEM69GiI4dcTIsy4lo5rYB6iR
         8f4CuG3INKmY800QFaUh9ri4EUXVc2L3EmxivEffUe2ZQW+k9O+zIAptAVV+RbfzAV1U
         J5kwkazGf6Dac46EAR4BqE1ynBWAAGcAzwrAAwD6YG9H4ErYZ4YwMVPKcm5DvHYUh0DD
         6k0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=05rB3U3b128McDFXG+s8KkNAz+6RDwWkT+PP9f8F8g0=;
        b=aEGsMGdVhYTEMA72KowXGluKughSktFVUui6WrIHe2H95la5W83GYOSK2gJQaB2EGR
         GxtHPPY6CznJHoHREqgmKBjrZ2prNOsnaTL97kVrOQ3pjd7WTxgLV9zMD0GUc+z+iVme
         dRJ1Ac0ZxHM1Kmdd71pQXnD45Mzp8/B45nULsXDsliQxf7L/RXpQUQ7XSBWAZh3Qb0Xh
         qS+lqU2jVgJ3dR6RK43zqSf1ER+jA/KXVNmCq2oReZcfd6dHWxq0Hsv6LiRrjt+I22MK
         Nk9vec7WIjISjq1mMXmrNoCw1GEmVlVTGc9bcDxSuManZek7ClhwCWxl//laY6SATnyK
         d6nA==
X-Gm-Message-State: ANoB5plJ2b128knsU4jpkKCGZkHCIjUcp7REHG1QLgnYxOAhuRorlLHz
        OY1uiiVX65VF8/F71e5clo7VKg==
X-Google-Smtp-Source: AA0mqf5pFuvT/S4FjixUoT6vGlM3G/op9kapqcPJ8/DLnGwyFrfT5P+FnPPT4w1U+a9+HK4JUtFF2Q==
X-Received: by 2002:a2e:b544:0:b0:276:b5ec:d4db with SMTP id a4-20020a2eb544000000b00276b5ecd4dbmr7170297ljn.23.1671190243715;
        Fri, 16 Dec 2022 03:30:43 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q9-20020a2eb4a9000000b00279f3c58278sm130903ljm.51.2022.12.16.03.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:30:43 -0800 (PST)
Message-ID: <e7b95521-9a2d-7c0f-a379-b32d4aaf1031@linaro.org>
Date:   Fri, 16 Dec 2022 12:30:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] dt-bindings: iio: adc: max1238: Fix a typo in the
 description
Content-Language: en-US
To:     Fabio Estevam <festevam@denx.de>, jic23@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org
References: <20221216004015.2902966-1-festevam@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221216004015.2902966-1-festevam@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 01:40, Fabio Estevam wrote:
> Fix a typo in the description, where "interface" is spelled incorrectly.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/iio/adc/maxim,max1238.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max1238.yaml b/Documentation/devicetree/bindings/iio/adc/maxim,max1238.yaml
> index 50bcd72ac9d6..60d7b34e3286 100644
> --- a/Documentation/devicetree/bindings/iio/adc/maxim,max1238.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max1238.yaml

While fixing such, fix also max1363 in the same patch. Or maybe even
more files (but then usually split per maintainer).

Best regards,
Krzysztof

