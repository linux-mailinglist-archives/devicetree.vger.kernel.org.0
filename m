Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BACB776349D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 13:15:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231875AbjGZLPU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 07:15:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231871AbjGZLPT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 07:15:19 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3590E11F
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 04:15:18 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so1831421a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 04:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690370116; x=1690974916;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lChKNKegfLv8YzWr0ThP7tf6+B40c9uLj92oms8T8Po=;
        b=gTAWzL3C03KYGkRM28j66FVMjwSAV38XkmSWVKDYY51ECYfGiDr/sjEg6Zr9wR6U7b
         jiJnswQu7mW4ovRiJFIILqi3SwerydIgFc/6VxpAgSthGQgiroNJDNeZmSSdNdnyEYFR
         XEoMs94wXxy6zt6Z2lySNUQ5N860t390ATyzPriDG+2IUVgrBxa7+ifdLqo1qW7PSnXm
         suPUYafUb2zi2ZwyRqI/LewS85pKdZokNGwNupyjHf2SKKuzqaK9fE+/hNI5a9cCIUe2
         +Ugu5YOk2llGsmyq7sJqN7iiatcrnctA62xVqx/9/rvlLfu7gpDN03KFZLCThUY3/Dpd
         iZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690370116; x=1690974916;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lChKNKegfLv8YzWr0ThP7tf6+B40c9uLj92oms8T8Po=;
        b=W1g+FosiIH0hQG7MWxoVBC/bY0OROSpbm/wik3mj//hnrY1JHPAfaZu8NpzFHTNxHk
         12jahUXXFc2oNpocJCxmMlYAD0T2Kj5JTDglELQ9C0Qv5/rYV1LtG7IQb8HNRPkHggFF
         nN5sigMzW4iIAedJnWBJTSfi8mC/OW7x7GMc3ssiPudwztt9dVPETeBIa+bOELg7OCFT
         jgs+M4RRFO0I8CPpYgD0hr5mMa2VCyGQi9qWMlNND6JHfxmE1k8OLxA8ySL5ds9qe6UC
         v7eTA2s0s1PH3BGN1ARR5TM1Rqliw5/oQ7sa/Y3vl29Am6FclSiXK9fBocH4uUZiH8yt
         x/Yg==
X-Gm-Message-State: ABy/qLaFPCX4lroyH1kfCxf9Hxi6OsfF/lboz/Et+kxNQHVmNKSh9X2t
        n6loBXyJO2KnTl66aGBWKwtcBA==
X-Google-Smtp-Source: APBJJlG1Wgq0HOju4vWFnsvGKBJU9wiiZUckr5/BZIBoid1hxh0MHbzqfcNpHvRviJzmI2oczH6Wpw==
X-Received: by 2002:a17:907:6d05:b0:994:fec:e1b7 with SMTP id sa5-20020a1709076d0500b009940fece1b7mr5592756ejc.0.1690370116633;
        Wed, 26 Jul 2023 04:15:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id m26-20020a170906849a00b00982a352f078sm9291152ejx.124.2023.07.26.04.15.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 04:15:16 -0700 (PDT)
Message-ID: <8bd37e11-2861-7877-0321-3f89cd088532@linaro.org>
Date:   Wed, 26 Jul 2023 13:15:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH V1 2/2] regulator: aw37503: add device-tree binding
Content-Language: en-US
To:     like@awinic.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        liweilei@awinic.com, liangdong@awinic.com, wangweidong.a@awinic.com
References: <20230726081612.586295-1-like@awinic.com>
 <20230726081612.586295-3-like@awinic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230726081612.586295-3-like@awinic.com>
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

On 26/07/2023 10:16, like@awinic.com wrote:
> From: Alec Li <like@awinic.com>
> 
> Add aw37503 regulator device-tree binding documentation

subject rather like:
regulator: dt-bindings: Add Awinic aw37503

> 
> Signed-off-by: Alec Li <like@awinic.com>
> ---
>  .../bindings/regulator/awinic,aw37503.yaml    | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/awinic,aw37503.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/awinic,aw37503.yaml b/Documentation/devicetree/bindings/regulator/awinic,aw37503.yaml
> new file mode 100644
> index 000000000000..0cd6fb001e20
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/awinic,aw37503.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/awinic,aw37503.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Awinic AW37503 Voltage Regulator
> +
> +maintainers:
> +  - Alec Li <like@awinic.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The AW37503 is dual voltage regulator, designed to support positive/negative
> +  supply for driving TFT-LCD panels. It support software-configurable output
> +  switching and monitoring. The output voltages can be programmed via an I2C
> +  compatible interface.
> +
> +properties:
> +  compatible:
> +    const:
> +      - awinic,aw37503

This has to be in one line. As pointed out by Rob's bot: please test it
before sending.

> +
> +  reg:
> +    maxItems: 1
> +
> +  patternProperties:

<sigh>

> +    "^out[pn]$":
> +      type: object
> +      $ref: regulator.yaml#
> +      unvaluatedproperties: false
> +
> +      required:
> +        - regulator-name
> +        - enable-gpios

regulator.yaml does not define enable-gpios, so you must define it in
properties.

> +
> +      additionalProperties: false

Drop, you already have unevaluatedProperties.

> +
> +required:
> +  - compatible
> +  - reg
> +  - outp
> +  - outn
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        aw37503@3e {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof

