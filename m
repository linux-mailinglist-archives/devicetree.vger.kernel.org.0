Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 520CE652E02
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 09:33:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbiLUIdh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 03:33:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbiLUIdf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 03:33:35 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B6231F607
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:33:34 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id g13so5720816lfv.7
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4jOnWz0VXwNEogehp8TEQmKOcmuRvhCI8qQAKriBX3Q=;
        b=bpuK+FAvdpZKB26/wt1JafMHXpjWPu6SrtQB521/C1GQBY+89khxEjtcrN0hvFHSgF
         Ruo5SrwWq5YXqIfTvz+67cF2H57Jyp0Af53CJz/+XSiuloCfA28OoEAd6u6vqVbo0IvO
         Sdzt5pqenjwUdmY0n3lD7sh8fcUSPmVZleP2KbY4fXn2eiMWrFOSG880NikSFawtGMxz
         FMurIv1wYLU0xBV6YAHN+0Wh7T4SgAwYPwVkuy7aYeBSDyZ1EU/DX8eQJ50g848m34dG
         WjiiBguOAGiAq066YnD9jxoSaXq622gzMc+8Q9us/7SKPtlfe7RG/9Uo/mQ8PkY33USW
         KWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4jOnWz0VXwNEogehp8TEQmKOcmuRvhCI8qQAKriBX3Q=;
        b=uLobI9yTmhE4o7nevQpw+JGMyV5XD7+GDfmpASLIvZAI3QAR1wRIT+32A+BKbvhvVa
         nM50PL/8l3CeoV/A1iHVBWd41/iOgQvxrkVgYYdJiaTwEjtuL3tzuxhRw56l8jvO8tuW
         hv+oMzEY5HsB8xtNDgWYV58iHob8Cbc5DFkfVhFSeI4yk2Vv/HkOzlSqEuGwnSTZ7FGR
         OCPSQAI8Nb1AW1YRb7W8AOMguJedriRihIjjIWJmfTvg3FhNMYjKi4kP/bmw6J7N+rTR
         IvOu8divntotm1P+JK87nCpgXL+B2+8NbTALkC188rW8dvwApMoSwkQuD44cyCB3ezP+
         BlJw==
X-Gm-Message-State: AFqh2kp4RazYg7K90q0y5LxUEQ5Ggda7yV54kA67/bCJg7WVJqBmCynn
        jwTdE2Xaag+O6PSjkG8SjekLOQ==
X-Google-Smtp-Source: AMrXdXv66I16xM4fO2HPAgbHKarNPj8tCHsgBene27afY3kVvsY/yuv5VKVAjHf83A1uXNUAfPr4RA==
X-Received: by 2002:ac2:5bc5:0:b0:4ad:5fbb:a594 with SMTP id u5-20020ac25bc5000000b004ad5fbba594mr322404lfn.58.1671611612977;
        Wed, 21 Dec 2022 00:33:32 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n9-20020a05651203e900b004b5a2a33972sm1777222lfq.40.2022.12.21.00.33.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 00:33:32 -0800 (PST)
Message-ID: <aa8a2251-b7e7-9c03-fcd4-9875302981e4@linaro.org>
Date:   Wed, 21 Dec 2022 09:33:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3] dt-bindings: sound: tlv320aic3x: Convert to dtschema
Content-Language: en-US
To:     Jai Luthra <j-luthra@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20221220123951.29959-1-j-luthra@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221220123951.29959-1-j-luthra@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/12/2022 13:39, Jai Luthra wrote:
> Convert bindings for TI's TLV320AIC3x audio codecs to dtschema.
> 
> The following properties are still found in some old dts files, but will
> be ignored by the driver:
> - adc-settle-ms
> - assigned-clock-paranets, assigned-clock-rates, assigned-clocks
> - port
> 
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> ---

Thank you for your patch. There is something to discuss/improve.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      tlv320aic3x_i2c: tlv320aic3x@1b {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +        compatible = "ti,tlv320aic3x";
> +        reg = <0x1b>;
> +
> +        reset-gpios = <&gpio1 17 GPIO_ACTIVE_LOW>;
> +
> +        AVDD-supply = <&regulator>;
> +        IOVDD-supply = <&regulator>;
> +        DRVDD-supply = <&regulator>;
> +        DVDD-supply = <&regulator>;
> +      };
> +    };
> +
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      tlv320aic3x_spi: codec@0 {
> +        compatible = "ti,tlv320aic3x";
> +        reg = <0>; /* CS number */
> +        #sound-dai-cells = <0>;
> +
> +        AVDD-supply = <&regulator>;
> +        IOVDD-supply = <&regulator>;
> +        DRVDD-supply = <&regulator>;
> +        DVDD-supply = <&regulator>;
> +        ai3x-ocmv = <0>;
> +      };
> +    };
> +
> +...

Best regards,
Krzysztof

