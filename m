Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77C7F62254B
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 09:26:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229784AbiKII0r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 03:26:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229794AbiKII0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 03:26:46 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C69A713E9E
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 00:26:44 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id z24so24632028ljn.4
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 00:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TUdtOs6/12dnhLv8Si4oivhah66LLzJssmvlLgPzqIo=;
        b=zhUd+RvPSQG1bq49tdkzMU7SWRascnhHcw+byoQDAdc4AGk+ohU+K+9wb42vQUtW+u
         tqnr7/7Da+Yq2bDwHV95WDf0kFHuJpq/kKB9luqkHKa75KUGf2qgw3mSBYZwr+BqO6YK
         +QLurCJBx68ABspiyIUzWq5f1R3fWom5vmhPvL4rvZyO9Rjifyz2xW/wKHjYEBu67Neb
         CJQEzt2X3vcj6+ht1qIq5BBT7b0TdzdvsB0IqzGD6asu4STdyqAGgRb59Rkridr6kU61
         0VK5AS4P6QwyZ0XY1WLP8I9Vdu2M51Ni7fBCC5P2/6UhlhAYGtUzdqfB/BWqnGm0OS3z
         iTlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TUdtOs6/12dnhLv8Si4oivhah66LLzJssmvlLgPzqIo=;
        b=4+idkTqgYRWvYJH53Qdm0IFgYBw46XjFEyvSa58k2ZFZasmLnXe6jNodCj+Q/Aem+V
         fzvaZVRwehwGkihaCXgMriJUQgTMWK89ykxRzfnT26KFuuBZFUkSGVnagyzZkrmunqit
         Uux6Q6Ub+YghChiMjISUKX0S9Ejm4rOhIVfX27NS6SGPITlWVXeFmyAAT+mGJBY2wL7N
         PUN2By9qx7LOk1RSxBdgVOJg5ulYefYGmRJMjQXmoIOT8t721f85KJRsswJGRrBBFilQ
         5ByM5FNQI2BPtukZMPNLhT+1ZfhCmdHWa/r4PymYcDMZgPV1/TQLaSSYFR8LyvP3Pe6V
         YCBw==
X-Gm-Message-State: ACrzQf1jVa9dcgr1kdqBIzS04Xo8A5i+NhCqfncyjhZveG9SSg233DhK
        memSsa2EWe7snT3NE/O4fkDd1lpvLsioCQ==
X-Google-Smtp-Source: AMsMyM7hkpxzkIe6JNWA9cGSLMafPvV4/DLrsQmVLclv3DIlaMKrp10Zq1yCV3AUVJQHpQvJ56/zjA==
X-Received: by 2002:a05:651c:11d4:b0:277:2e4e:1b2c with SMTP id z20-20020a05651c11d400b002772e4e1b2cmr20992728ljo.459.1667982403081;
        Wed, 09 Nov 2022 00:26:43 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f4-20020a056512228400b00498f570aef2sm2117143lfu.209.2022.11.09.00.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 00:26:42 -0800 (PST)
Message-ID: <c522c639-db0c-c1c4-0281-5dc524a8a86e@linaro.org>
Date:   Wed, 9 Nov 2022 09:26:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2] dt-bindings: media: Add Omnivision ov8858 binding
To:     Nicholas Roth <nicholas@rothemail.net>, devicetree@vger.kernel.org
Cc:     mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20221109023100.64143-1-nicholas@rothemail.net>
 <20221109023100.64143-2-nicholas@rothemail.net>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221109023100.64143-2-nicholas@rothemail.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/11/2022 03:31, Nicholas Roth wrote:
> Add a device tree binding for the Omnivision OV8858 image sensor.
> The OV8858 is an 8 megapixel image sensor which provides images in RAW
> format over MIPI CSI-2 data bus and is controlled through an
> I2C-compatibile SCCB bus.
> 
> Tested on PinePhone Pro with libcamera cam and qcam.

How can you test bindings with libcamera?
> 
> Signed-off-by: Nicholas Roth <nicholas@rothemail.net>

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

1. There is no driver, no DTS. You received the feedback about it.
2. Wrong cc list. You were asked to use get_maintainers.pl and still
decide not to.

> ---
>  .../devicetree/bindings/media/i2c/ov8858.yaml | 139 ++++++++++++++++++
>  1 file changed, 139 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8858.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov8858.yaml b/Documentation/devicetree/bindings/media/i2c/ov8858.yaml
> new file mode 100644
> index 000000000000..f004e57b05ed
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov8858.yaml
> @@ -0,0 +1,139 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ov8858.yaml#

Filename still does not match compatible. ovti,ov8858.yaml

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
> +
> +maintainers:
> +  - Nicholas Roth <nicholas@rothemail.net>
> +
> +description: |-
> +  The Omnivision OV8858 is an 8 megapixel image sensor which provides
> +  images in RAW format over MIPI CSI-2 data bus with up to 4 lanes
> +  and is controlled through an I2C-compatibile SCCB bus.
> +
> +properties:
> +  compatible:
> +    const: ovti,ov8858
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    description:
> +      Input clock for the sensor.
> +    items:
> +      - const: xvclk
> +
> +  clock-frequency:
> +    description:
> +      Frequency of the xvclk clock in Hertz.

The frequency of clock should go via common clock framework - you have
get_rate and set_rate. Drop entire property.

> +    minimum: 6000000
> +    default: 24000000
> +    maximum: 27000000
> +
> +  dovdd-supply:
> +    description:
> +      Definition of the regulator used as interface power supply.

Drop "Definition of the regulator used as "

> +
> +  avdd-supply:
> +    description:
> +      Definition of the regulator used as analog power supply.
> +
> +  dvdd-supply:
> +    description:
> +      Definition of the regulator used as digital power supply.
> +
> +  reset-gpios:
> +    description:
> +      The phandle and specifier for the GPIO that controls sensor reset.

Drop this sentence.

> +      This corresponds to the hardware pin XSHUTDN which is physically
> +      active low.
> +
> +  powerdown-gpios:
> +    description:
> +      The phandle and specifier for the GPIO that controls power down.

Drop this sentence.

> +      This corresponds to the hardware pin PWDNB which is physically
> +      active low.
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            description: |-
> +              The driver supports both two- and four-lane operation.

Which driver? In OpenBSD? Which version of OpenBSD? Drop the sentence.

> +            items:
> +              - const: 1
> +              - const: 2
> +              - const: 3
> +              - const: 4
> +
> +          link-frequencies:
> +            description: Frequencies listed are driver, not h/w limitations.

If these are driver limitations, then drop it. Link frequencies are
hardware related and you should here describe the minimum and maximum.
Or leave it empty if any is allowed by hardware.


> +            maxItems: 1
> +            items:
> +              enum: [ 360000000 ]
> +
> +        required:
> +          - link-frequencies
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - clock-frequency
> +  - dovdd-supply
> +  - avdd-supply
> +  - dvdd-supply
> +  - reset-gpios
> +  - port
> +
> +additionalProperties: false

Best regards,
Krzysztof

