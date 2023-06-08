Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8AD272788D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 09:18:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232721AbjFHHSg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 03:18:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234612AbjFHHSe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 03:18:34 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 745B81B9
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 00:18:32 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5147dce372eso379131a12.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 00:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686208711; x=1688800711;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LXEBC8JZMICwE4VG2uXVfSnwe1adhgVGBUr3vurvFKA=;
        b=xcDa5UVUhBlXQH80j2JcXOoWmuVBnEfRyqotJ80tYTSl3B4CCJX/kGZTayYM5G+e8q
         Iy2DmVneWnLuvV6I8ygi7liOcJD4UBAPKcanlgyQrWQI/0RLzzoCVxob6zv3dknWykrs
         BXOyHyzo3IkG4bf2sUs/6zu88oRfs4L4c56DkIXpOamxeVvOwgrYrtfmmQBZTQjApxC6
         j5HyHni+vtgru9wBUamm5UNPInaeiVu7DOTLCWFiX3vUykYPW7D/MAg3yPZde/d1vSAG
         7GO2A/9YNe3UEDCUmC60vZM7P2ompCcJsstm8FSTQdug1B6oBHKK53o2H4muBkhBrZAl
         aArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686208711; x=1688800711;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LXEBC8JZMICwE4VG2uXVfSnwe1adhgVGBUr3vurvFKA=;
        b=cStHEEW7NtdJ5420ycpEroLwwwnxzwZZYOzYtXizlxEf6djtOShYXJx93ziPnTBbXy
         K070NMHhAw9YnwHDB17OyURJJ/NizADEeur4uIA1RGtU1CDJsVii2n7aadk+uT3rpRTx
         hUf73zq/p8J5hwJaswAbdckuW5Q28oxtC8CIWDxEbg6L/Dxw77IHRw3orVZxal9caWbT
         os5/gBVm43+qEj4Oz6w6ElWBGdDE72HNUmVQvUcFjUa87fRq8MzNNY+WNr3o+FTtxtIO
         x0V81TOxcfgZasqTvvrePnxSAjM8yD0kU02YegqGKfw05kCUmwhWU4kTmIHrZcjMZRiN
         9wqQ==
X-Gm-Message-State: AC+VfDyryy6c6dNlfVoPMMTVkQjDfK3bPNiKgcxd0D4/Q9nl/1rhOrzi
        RfmYFtkkR0GgKJtyC7176Q6TSg==
X-Google-Smtp-Source: ACHHUZ72SvwbpUytBAKFCe10PfP9CXgTzMFZzoPmBNYuWG1B6C8gUGZQKrwYE0kngcCRTA7RNZatqg==
X-Received: by 2002:a05:6402:1adc:b0:514:95d5:3994 with SMTP id ba28-20020a0564021adc00b0051495d53994mr6872541edb.32.1686208710949;
        Thu, 08 Jun 2023 00:18:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id g16-20020aa7c590000000b0051056dc47e0sm215250edq.8.2023.06.08.00.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 00:18:30 -0700 (PDT)
Message-ID: <87b9c96a-09bf-ec5d-85a0-65f59e5c593d@linaro.org>
Date:   Thu, 8 Jun 2023 09:18:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: max98388: add amplifier driver
Content-Language: en-US
To:     =?UTF-8?B?4oCcUnlhbg==?= <ryan.lee.analog@gmail.com>,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        rf@opensource.cirrus.com, ryans.lee@analog.com,
        wangweidong.a@awinic.com, shumingf@realtek.com,
        herve.codina@bootlin.com, ckeepax@opensource.cirrus.com,
        doug@schmorgal.com, ajye_huang@compal.corp-partner.google.com,
        kiseok.jo@irondevice.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     venkataprasad.potturu@amd.com
References: <20230608054230.344014-1-ryan.lee.analog@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608054230.344014-1-ryan.lee.analog@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2023 07:42, “Ryan wrote:
> From: Ryan Lee <ryans.lee@analog.com>
> 
> Add dt-bindings information for Analog Devices MAX98388 I2S Amplifier
> 
> Signed-off-by: Ryan Lee <ryans.lee@analog.com>

Thank you for your patch. There is something to discuss/improve.

> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max98388

Blank line

> +  reg:
> +    maxItems: 1
> +    description: I2C address of the device.

Drop description, it's obvious.

> +
> +  '#sound-dai-cells':
> +    const: 0
> +
> +  adi,vmon-slot-no:
> +    description: slot number of the voltage feedback monitor
> +    $ref: "/schemas/types.yaml#/definitions/uint32"

Drop quotes.

> +    minimum: 0
> +    maximum: 15
> +    default: 0
> +
> +  adi,imon-slot-no:
> +    description: slot number of the current feedback monitor
> +    $ref: "/schemas/types.yaml#/definitions/uint32"

Drop quotes.

> +    minimum: 0
> +    maximum: 15
> +    default: 1
> +
> +  adi,interleave-mode:
> +    description:
> +      For cases where a single combined channel for the I/V feedback data
> +      is not sufficient, the device can also be configured to share
> +      a single data output channel on alternating frames.
> +      In this configuration, the current and voltage data will be frame
> +      interleaved on a single output channel.
> +    type: boolean
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#sound-dai-cells"

Keep consistent quotes - either ' or "

> +
> +unevaluatedProperties: false


Best regards,
Krzysztof

