Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7395A5B88F6
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 15:18:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbiINNSe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 09:18:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbiINNSd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 09:18:33 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AA315F7C5
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 06:18:31 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id c2-20020a1c3502000000b003b2973dafb7so15485645wma.2
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 06:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=DS/dB1Z8F2XdEan+7+v8LqVABBrY3Wgrn6yGpXksSnc=;
        b=U3uQB5mdqAWulEk/fX6kGrPUKTRAaJXxtaOqKnZAK5Ttyefxo59iAwEwEq8JOs8iDO
         8bg+Va6JCMlpApltHBGInErDhsVO/awvtfjGuzGNSlwI02Q0ktap8u/XuljHFlumrxPW
         VLi5lh1mJys7EZxxZ/Nr7IES8Ir9goTJkdpzG2VjdnfSsdSNGhvpbQErQ+qsVh2WkQMu
         oaXx1T8Y9JtzepZG8kPn4V5SP9bnXVKSbygKNW6mTmPEfC/OREA9Im1NSxl4L7Dm0UWf
         wTkmIKou80/6UwkmnHY8AJxZTKgznM7FrmL6CVqn1JYMegf1VFmsHppG76zsL+OL9EMb
         yS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=DS/dB1Z8F2XdEan+7+v8LqVABBrY3Wgrn6yGpXksSnc=;
        b=5odAcesRK2RjYmfivQbSjDqCmFrYxkhkLsMuWcW3GOBRFNhhQ4U4N0aNfSy9ntPRGK
         daFr5kWowc57lTuk2cOM5E1tDrGNsQwySiQdOwCc5jHRFT+VF6hYpNpOHhJZpPFBB/ME
         W30faipCH6Y095IE5L80wZRhhelEtvkU/a3oWhVyXtpGiX5n+wk78F6xUgOkrTI2bINJ
         Ia5eNKsAWjwOpiLVQdKScSPH9jGqHdAWNTrbW3S09j8MU0wqdjLEzn81tUcj03qrIHje
         TtbaECD6OYrqJld87sCBA7AO2TkUs9ShQpLmSnl0u11Aqty4HqhB0VoY2MMWI124p46i
         e4Aw==
X-Gm-Message-State: ACgBeo2pQyLHePtk9C+lE1wKVteuLjyOpbp2AaNYKwg3I0kvQZXbE+7r
        a4ehCic2+XFQsbZtKmkLXSRtIQ==
X-Google-Smtp-Source: AA6agR4grufWg+c3qXZKBLUKABCRUYDpCsb6qvLVWtV85cOL2R6YF4TAyyUjumc/HzIXaQ4ecB7u6w==
X-Received: by 2002:a05:600c:1ca8:b0:3b4:a5d1:2033 with SMTP id k40-20020a05600c1ca800b003b4a5d12033mr1741290wms.23.1663161510097;
        Wed, 14 Sep 2022 06:18:30 -0700 (PDT)
Received: from [192.168.0.20] (210.145.15.109.rev.sfr.net. [109.15.145.210])
        by smtp.gmail.com with ESMTPSA id w10-20020a05600c038a00b003b2878b9e0dsm16599554wmd.20.2022.09.14.06.18.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Sep 2022 06:18:29 -0700 (PDT)
Message-ID: <fda72ade-3c47-e9f8-d041-3a87d55318aa@baylibre.com>
Date:   Wed, 14 Sep 2022 15:18:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re:
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220914131219.18236-1-aouledameur@baylibre.com>
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
In-Reply-To: <20220914131219.18236-1-aouledameur@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The subject has not been parsed correctly, I resent a proper patch here:

https://patchwork.kernel.org/project/linux-mediatek/patch/20220914131339.18348-1-aouledameur@baylibre.com/


Sorry for the noise.

Regards,

Amjad

On 9/14/22 15:12, Amjad Ouled-Ameur wrote:
> Subject: [PATCH] arm64: dts: mediatek: mt8183: remove thermal zones without
>   trips.
>
> Thermal zones without trip point are not registered by thermal core.
>
> tzts1 ~ tzts6 zones of mt8183 were intially introduced for test-purpose
> only but are not supposed to remain on DT.
>
> Remove the zones above and keep only cpu_thermal.
>
> Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
> ---
>   arch/arm64/boot/dts/mediatek/mt8183.dtsi | 57 ------------------------
>   1 file changed, 57 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 9d32871973a2..f65fae8939de 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -1182,63 +1182,6 @@ THERMAL_NO_LIMIT
>   					};
>   				};
>   			};
> -
> -			/* The tzts1 ~ tzts6 don't need to polling */
> -			/* The tzts1 ~ tzts6 don't need to thermal throttle */
> -
> -			tzts1: tzts1 {
> -				polling-delay-passive = <0>;
> -				polling-delay = <0>;
> -				thermal-sensors = <&thermal 1>;
> -				sustainable-power = <5000>;
> -				trips {};
> -				cooling-maps {};
> -			};
> -
> -			tzts2: tzts2 {
> -				polling-delay-passive = <0>;
> -				polling-delay = <0>;
> -				thermal-sensors = <&thermal 2>;
> -				sustainable-power = <5000>;
> -				trips {};
> -				cooling-maps {};
> -			};
> -
> -			tzts3: tzts3 {
> -				polling-delay-passive = <0>;
> -				polling-delay = <0>;
> -				thermal-sensors = <&thermal 3>;
> -				sustainable-power = <5000>;
> -				trips {};
> -				cooling-maps {};
> -			};
> -
> -			tzts4: tzts4 {
> -				polling-delay-passive = <0>;
> -				polling-delay = <0>;
> -				thermal-sensors = <&thermal 4>;
> -				sustainable-power = <5000>;
> -				trips {};
> -				cooling-maps {};
> -			};
> -
> -			tzts5: tzts5 {
> -				polling-delay-passive = <0>;
> -				polling-delay = <0>;
> -				thermal-sensors = <&thermal 5>;
> -				sustainable-power = <5000>;
> -				trips {};
> -				cooling-maps {};
> -			};
> -
> -			tztsABB: tztsABB {
> -				polling-delay-passive = <0>;
> -				polling-delay = <0>;
> -				thermal-sensors = <&thermal 6>;
> -				sustainable-power = <5000>;
> -				trips {};
> -				cooling-maps {};
> -			};
>   		};
>   
>   		pwm0: pwm@1100e000 {
