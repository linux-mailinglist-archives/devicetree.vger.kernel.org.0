Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2D526A1949
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:59:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229644AbjBXJ7v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:59:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229926AbjBXJ7t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:59:49 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 910D561F09
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:59:47 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id cq23so52396084edb.1
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wtIuDW2eQkRbGFvSewuxjU4xIOGxpYMc+vOIKksGCaU=;
        b=ee085rvn0DvOv8XgdsY8PLoWCb0jLodHKCg3Tp+9D8nhapZxcfYT+jcPzwNG8npDwf
         AvM0Bzz9+nybDUnui66nmjEDuVymoj/ZrcK9+SZau2GTSdlC97KlJQtimdhoMrX2xyEV
         W24ZaRgXqwre2fDNy314t/AHyvGccj/WchIMENAT0hdnkBkf2ZZfeI32NBHZ9myrN6D/
         BXSOY37i8R6ihe6gE4xJEyvxD/DwZ1utOKTqkxb2368KlhoaXdp1tteP2ByMPwDnjlae
         jp1qvG3b2T7U1OTOBJspiOgIUoIjg2qGNdF9iAL6TZlZx2aaK6v0ouw3XQfx+uzqqF9+
         5aew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wtIuDW2eQkRbGFvSewuxjU4xIOGxpYMc+vOIKksGCaU=;
        b=ult58HTqoP5zBuAGGLjGi/Gf6lRLCCDwSqKinue9f7zL8QofWbF9n3ZN/S0YrwH1fD
         l0AldkA9szjTtr+pmIXVaQBgMBP6LkYbHgU5hyjtl0nblVtEDkFK/8fYTFQ8qeD6eiAC
         iic03DYpJeliml7t2Q5JoXtnEYb6cFXD22BWntEHx/sF6fKcml54/t2g2n138DrCKCvz
         yl79s5nNIm5L7k+wtbTMNIBwfaGxFGWq8WSOZPt7KTkfqJEnGadKHvOEFsYsag2Htmgt
         Cun/swoNyuJ98hFp6Y0d46zv8tW2KlaXDX6PpSVRl4wC/8UrIQZ5KCQ7w+LiFOVwWO0H
         uJ/g==
X-Gm-Message-State: AO0yUKVJS+uiewW6z2v/qz6OtcAl4bvL+PFYiBD79Fm/gA4YTaD3P5xh
        DAi8MucIBu+gBTxqhJoYHr6Lug==
X-Google-Smtp-Source: AK7set9h4c7mDwoIZ//68yJseIkY4LktumLVuRyyDSSLBuK/4Q79zZF04ClwiptuRbJhP4gLNPBtag==
X-Received: by 2002:a05:6402:1287:b0:4ad:7c30:2596 with SMTP id w7-20020a056402128700b004ad7c302596mr14133282edv.3.1677232786097;
        Fri, 24 Feb 2023 01:59:46 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n14-20020a170906840e00b008eaf99be56esm2326189ejx.170.2023.02.24.01.59.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 01:59:45 -0800 (PST)
Message-ID: <7cbd979d-2126-2b8e-35d9-14e4f9681ea8@linaro.org>
Date:   Fri, 24 Feb 2023 10:59:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: max98363: add soundwire amplifier
 driver
To:     =?UTF-8?B?4oCcUnlhbg==?= <ryan.lee.analog@gmail.com>,
        lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz,
        tiwai@suse.com, rf@opensource.cirrus.com,
        ckeepax@opensource.cirrus.com,
        pierre-louis.bossart@linux.intel.com, herve.codina@bootlin.com,
        wangweidong.a@awinic.com, james.schulman@cirrus.com,
        ajye_huang@compal.corp-partner.google.com, shumingf@realtek.com,
        povik+lin@cutebit.org, flatmax@flatmax.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        ryans.lee@analog.com
References: <20230224010814.504016-1-ryan.lee.analog@gmail.com>
 <20230224010814.504016-2-ryan.lee.analog@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230224010814.504016-2-ryan.lee.analog@gmail.com>
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

On 24/02/2023 02:08, “Ryan wrote:
> From: Ryan Lee <ryans.lee@analog.com>

Thank you for your patch. There is something to discuss/improve.

Your patch is corrupted because you modified it after creating it. It
won't apply correctly and won't work. The bot's response with error is
about this.

Except broken patch, here are some more comments:

> 
> This patch adds dt-bindings information for Analog Devices MAX98363

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> SoundWire Amplifier.
> 

Subject: drop driver. Bindings are about hardware, not drivers.

> Signed-off-by: Ryan Lee <ryans.lee@analog.com>
> ---
>  .../bindings/sound/adi,max98363.yaml          | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/adi,max98363.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/adi,max98363.yaml b/Documentation/devicetree/bindings/sound/adi,max98363.yaml
> new file mode 100644
> index 000000000000..fda571d04a64
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/adi,max98363.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/adi,max98363.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices MAX98363 SoundWire Amplifier
> +
> +maintainers:
> +  - Ryan Lee <ryans.lee@analog.com>
> +
> +description:
> +  The MAX98363 is a SoundWire input Class D mono amplifier that
> +  supports MIPI SoundWire v1.2-compatible digital interface for
> +  audio and control data.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max98363
> +
> +  reg:
> +    maxItems: 1
> +    description: Peripheral-device unique ID decoded from pin
> +
> +  vdd-supply:
> +    description:
> +      A 2.5V to 5.5V supply that powers up the VDD pin.
> +
> +  dvddio-supply:
> +    description:
> +      A 1.7V or 1.9V supply that powers up the DVDDIO pin.
> +      This property is only needed for MAX98363A/B.

It's not a DAI?

> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +  - dvddio-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>

Drop the header, you do not use it.

> +    soundwire {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        max98363: amplifier@3 {

also drop label (max98363).

> +            compatible = "adi,max98363";
> +            reg = <0x3>;
> +            vdd-supply = <&regulator_vdd>;
> +            dvddio-supply = <&regulator_1v8>;
> +        };
> +    };

Best regards,
Krzysztof

