Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DED268F833
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 20:38:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231923AbjBHTio (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 14:38:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231636AbjBHTin (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 14:38:43 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 991634B18E
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 11:38:42 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id ba1so13850156wrb.5
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 11:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BdAD5QrpEcQ0zzaMz4kMFeIBnTyIJbzpOOt7zHm3IRI=;
        b=FkmfxtiPgxjuvvp4A+gPUuNqzf4PAY4/hh36cKhM/flGzlXiF9Zv4MydUlzd8fF/kQ
         +LUEqLUIm/VeVFGaLnqhnTzrCMtqGCKJ061eSTxQYwnSt1VCKqXN9XdzT5YGh9Zbs15x
         y79wRHq2HVwTCNYwUX68HNb2pikwg1qXjzpgvXbnPF810JZAtxVE2pLKDIv9/cDrzmJ5
         Ga84vuFFML6iq3/dvb8y8QPrM7sOZ80Ml1Rv2aJ7UfcT5VpLifz7AWhnDG1bdhuNZcoO
         4Drt5rZoGR5frOnpRnlBwWjx/X4D2P4PQnLe7hw8WqtDkwVBm1yjqznc+qyza4Nk09Cw
         lCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BdAD5QrpEcQ0zzaMz4kMFeIBnTyIJbzpOOt7zHm3IRI=;
        b=khmJGCGroGjQHXDLa5U5N1FntekHrawYV6W3VWKYI1bLXMtIudub8P+EP1JNO9Jgs7
         Pe6hSghd+NKWmZQuJcm7MvDasguEjj13k+CjnXRWpyEB0NGVsU838Xem/YhRH2zafMEI
         eLYb8HKPk+4A+Upd5hHQ3+Yc1Lx3uyJUlRUsVqI4CeGlR9k2AJ2Cy91mdcNhunnRb5tL
         Xl3RbUOSVgksTUEHcNoTfmgrMTXGzCFn+oAeyVWUh5dghwRKLPhMovssQAqG8bN3u4xW
         c2dWAulJPTAtHL4DyOFgsk1o60EpiqFTlE6AxER7gPmopka66Vr3/Mtp8sARf91fhL2B
         /D2Q==
X-Gm-Message-State: AO0yUKVC2lN0Ix4OBFyINCoDI6pVSGl4bSjirgyHXWrTQ0E15zRa9mTd
        hSuQaWn5IFbv8Za0AlcZLXzh+w==
X-Google-Smtp-Source: AK7set/Sk+mM5Gp0qTAl+sx2O3tRO1dQ1UUP0ecynbikcu/9D+jv85ph6CzBBq4we+evJn0ovJMdnA==
X-Received: by 2002:a5d:62c8:0:b0:2c3:f250:f1ed with SMTP id o8-20020a5d62c8000000b002c3f250f1edmr10154258wrv.1.1675885121164;
        Wed, 08 Feb 2023 11:38:41 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h10-20020a5d504a000000b002c3efca57e1sm6382181wrt.110.2023.02.08.11.38.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 11:38:40 -0800 (PST)
Message-ID: <f09a89e0-c93f-dacd-2270-379e43773b61@linaro.org>
Date:   Wed, 8 Feb 2023 20:38:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ASoC: dt-bindings: wlf,wm8994: Convert to dtschema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        - <patches@opensource.cirrus.com>, devicetree@vger.kernel.org
References: <20230208172552.404324-1-krzysztof.kozlowski@linaro.org>
 <167588125123.2283195.8694738903913228349.robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <167588125123.2283195.8694738903913228349.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 19:46, Rob Herring wrote:
> 
> On Wed, 08 Feb 2023 18:25:52 +0100, Krzysztof Kozlowski wrote:
>> Convert the Wolfson WM1811/WM8994/WM8958 audio codecs bindings to DT
>> schema.
>>
>> Changes against original binding:
>> 1. Add missing LDO1VDD-supply for WM1811.
>> 2. Use "gpios" suffix for wlf,ldo1ena and wlf,ldo2ena (Linux kernel's
>>    gpiolib already looks for both variants).
>> 3. Do not require AVDD1-supply and DCVDD-supply, because at least on
>>    Arndale board with Exynos5250 these are grounded.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  .../devicetree/bindings/sound/wlf,wm8994.yaml | 203 ++++++++++++++++++
>>  .../devicetree/bindings/sound/wm8994.txt      | 112 ----------
>>  2 files changed, 203 insertions(+), 112 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8994.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/sound/wm8994.txt
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230208172552.404324-1-krzysztof.kozlowski@linaro.org
> 
> 
> audio-codec@1a: 'AVDD1-supply' is a required property
> 	arch/arm/boot/dts/exynos5250-smdk5250.dtb
> 	arch/arm/boot/dts/s5pv210-fascinate4g.dtb
> 	arch/arm/boot/dts/s5pv210-galaxys.dtb
> 
> audio-codec@1a: 'DCVDD-supply' is a required property
> 	arch/arm/boot/dts/exynos5250-smdk5250.dtb
> 	arch/arm/boot/dts/s5pv210-fascinate4g.dtb
> 	arch/arm/boot/dts/s5pv210-galaxys.dtb

These two need corrections in the binding - next version of patch.

> 
> audio-codec@1a: Unevaluated properties are not allowed ('wlf,ldo1ena', 'wlf,ldo2ena' were unexpected)
> 	arch/arm/boot/dts/exynos4412-i9300.dtb

These are fixed here:
https://lore.kernel.org/linux-samsung-soc/20230208172634.404452-1-krzysztof.kozlowski@linaro.org/T/#t

Best regards,
Krzysztof

