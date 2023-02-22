Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA66069F4C7
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 13:42:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232174AbjBVMmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 07:42:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230440AbjBVMmU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 07:42:20 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C975A38E97
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 04:42:19 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id f13so29261425edz.6
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 04:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YrzMakcOOzZUVFm4JbVcFgj1K440KfwGhI4SW59K+OI=;
        b=bQ2HpWZ9B+PCUcf4/YZOLKZWOYmH5rZUdEl/DIha3BPOImbopbhwhJQpcSKSZdW5Yv
         WpBX37Duc9+JC6Y/aDCXEyY5NUq4sF3yfXc6avmaLWqUkpTTrQ7dkhnnD8autQD39jUa
         1oc54E1b+B1uMWzdV3pLVyuoeSLXPSspFDsq9VZCR/dQ1tmQhNAygUxDXg+BpvZpLVmc
         7DEwFY6261GjSwmewUTbdh4IZJ4I3xq2ergB+EVJWwGwUqsZRvfOKWYoTW9t7KQ6imby
         BWeaJ8dLadBBafh5DyaivsoqpbLhtzve574wpK4Kkr6KAnsf2OljEhQX/cnHZiefFlDP
         Um4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YrzMakcOOzZUVFm4JbVcFgj1K440KfwGhI4SW59K+OI=;
        b=6cLl5W3TMkEzRGjxONBeccH6lx1Bfv1sSNVFtIcwRTDhJ5GBs3QkjhggR20jmJaLF0
         lz9PO6J9ZvadfpHRbd/dswtkIiA9heQp6o4vMc5+j/bVD2d0skaqGmGT07emqUkP6nhP
         9Z3GIShHsyZS7/LUoxOJz9RMIDPEqX+WdF+/0zTXnmIE0gY+WQHavxJe71Th2FDMy5NF
         2p0TUh6TpIpSLnHQ1T4eTCCiaqmUmHVsFQ1g9DRaNfFNSz9R3UXvYnpSR8gy6BdYMrNG
         JhzjDtaqhfyfxh7GSKa1jfmcvC1Q8P4QehIsz9V7miNa5hv2srP8FwA3OpG6Pr8oGrQD
         EW5A==
X-Gm-Message-State: AO0yUKWU6OFal+lMJepqO71QJpk1jKd44WC4jIH74Yh8x91tly1yV7fn
        8l5I147k75+Qrjql7txm8V+Nmn4UEr+MbVl0
X-Google-Smtp-Source: AK7set+Osxu3f3jN7fxzKcBM4yGQLcOKGxAn0fzmJemEkNsgcp7K4ihSod8UT6RPaLf/MzCWkBPXMg==
X-Received: by 2002:a17:906:4081:b0:878:72d0:2817 with SMTP id u1-20020a170906408100b0087872d02817mr14835920ejj.29.1677069738302;
        Wed, 22 Feb 2023 04:42:18 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bw10-20020a170906c1ca00b008b133f9b33dsm8347517ejb.169.2023.02.22.04.42.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 04:42:17 -0800 (PST)
Message-ID: <506f92cd-7cf5-4fd5-a930-9af086732f84@linaro.org>
Date:   Wed, 22 Feb 2023 13:42:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: wlf,wm8524: Add a property to
 specify power up sequency time
Content-Language: en-US
To:     Chancel Liu <chancel.liu@nxp.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        ckeepax@opensource.cirrus.com, patches@opensource.cirrus.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230222113945.3390672-1-chancel.liu@nxp.com>
 <20230222113945.3390672-2-chancel.liu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222113945.3390672-2-chancel.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/02/2023 12:39, Chancel Liu wrote:
> This property specifies power up to audio out time. It's necessary
> beacause this device has to wait some time before ready to output audio

typo... run spellcheck, also on the subject

> after MCLK, BCLK and MUTE=1 are enabled. For more details about the
> timing constraints, please refer to WTN0302 on
> https://www.cirrus.com/products/wm8524/
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>
> ---
>  .../devicetree/bindings/sound/wlf,wm8524.yaml          | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8524.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8524.yaml
> index 09c54cc7de95..54b4da5470e4 100644
> --- a/Documentation/devicetree/bindings/sound/wlf,wm8524.yaml
> +++ b/Documentation/devicetree/bindings/sound/wlf,wm8524.yaml
> @@ -21,6 +21,15 @@ properties:
>      description:
>        a GPIO spec for the MUTE pin.
>  
> +  wlf,power-up-delay-ms:
> +    maximum: 1500

maximum is 1003. Where do you see 1500?

minimum: 82

> +    default: 100
> +    description:
> +      Power up sequency delay time in millisecond. It specifies power up to

typo: sequence?

> +      audio out time. For more details about the timing constraints of this
> +      device, please refer to WTN0302 on
> +      https://www.cirrus.com/products/wm8524/.

According to WTN0302 this might or might not include regulator
ramp-up-delay. You should clearly indicate which part of it this delay
is to not mix up with ramp up. IOW, mention exactly from where the value
comes (e.g. Δt POWER UP TO AUDIO OUT TIMING table, depending on sampling
clock rate). Otherwise you introduce quite loose property which will be
including regulator ramp up in some cases...

Best regards,
Krzysztof

