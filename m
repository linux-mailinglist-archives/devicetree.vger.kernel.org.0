Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 731B6620C17
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 10:24:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233216AbiKHJYH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 04:24:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233712AbiKHJYD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 04:24:03 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36D661E3F8
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 01:24:02 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id d6so20371601lfs.10
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 01:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xTUEPZCvaMdmGLvJma/sWh1EETfZpFamSigMfkXc1Ss=;
        b=yQ4u+jhqW1xfZCfTKWbH3+nqxQih/62DOJqyxZH0qL9LPRESv209kcyPgu8YrikvHv
         ub1gbdesSnfWBkvCM0M/l7B0lzWfRwDMRNvhTWBwNffQ8YpppS1I91sp50E2r2uZYQU+
         1QXL67lLlsfELz3qF4ilXxeHJ51UFqCRmbicPlND3eHe8EUH+lQxj02NXDiPI3DIJH2t
         /IpP6N9CnAEnfyzh4/ywWg0kyoyXWdzTxJ2WsPveOyRnJ8xsxtaWNuDWPgnSAXTcxdNx
         RAzTIIxs6wAZ3pN6ITJqtoswmkRzdm4/t4PZuU3g32bG00sMyP3u6dsHYUJx8Q2Q1dDe
         RBxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xTUEPZCvaMdmGLvJma/sWh1EETfZpFamSigMfkXc1Ss=;
        b=otEKNXSGPE+iHyDkAHSXu/H+PufNm8WOqK6pNrm8wTZQGGDQT6FD4QqVrDU+8Ygm8L
         2TOJ1eQaX/I8lTx9Mxc8szaJIj+mI1PY3Gt4BLrgrYXK3sJJl1KtUKrj7pCci/+xArUs
         9JyTuyXM0OQ+dHbRF1U2vQZ3j2O2PC69Yl4CSmeQx5b8f7p7+alSP+lwo6FQFi4hvTkO
         +qU15k2/0qpbBuz355DA/BL+eHVZYcED62zaThz1mz0CWfZ0HnpEI+Lub+faf6HIJ0iY
         +h7h0RU+s/BtCGrL4QWlzpWl851+e5ZFBmN95quFt8pJWieaZFCW/r7Me3MU+Q9Z0Kn1
         i6DA==
X-Gm-Message-State: ACrzQf1d2O13yVE26mcSWl7716RgG2JslKxcxHif4RKnMhhTbpb+3O5h
        OgQ4e9MfCGt5h1w5zLWiV3eAhg==
X-Google-Smtp-Source: AMsMyM7rB3u+aRLpDHrZxbfwF+WKwxmSVYBeVYz0Y1RTI1t5JrJYqpyNHCwd2OcR0pu/Mww0/2mf2Q==
X-Received: by 2002:a19:7518:0:b0:4a2:4593:6e14 with SMTP id y24-20020a197518000000b004a245936e14mr18791720lfe.82.1667899440456;
        Tue, 08 Nov 2022 01:24:00 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512208c00b00492aefd73a5sm1707557lfr.132.2022.11.08.01.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 01:23:59 -0800 (PST)
Message-ID: <f47ac3c4-5c95-51be-6f6a-d3d294be5aca@linaro.org>
Date:   Tue, 8 Nov 2022 10:23:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: media: Add Omnivision ov8858 binding
Content-Language: en-US
To:     Nicholas Roth <nicholas@rothemail.net>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20221108033813.16502-1-nicholas@rothemail.net>
 <20221108033813.16502-2-nicholas@rothemail.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108033813.16502-2-nicholas@rothemail.net>
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

On 08/11/2022 04:38, Nicholas Roth wrote:
> Add a device tree binding for the Omnivision OV8858 image sensor.

Subject: drop redundant, second "binding".

Also - wrong CC list.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.


> The OV8858 is an 8 megapixel image sensor which provides images in RAW
> format over MIPI CSI-2 data bus and is controlled through an
> I2C-compatibile SCCB bus.
> 
> Tested on PinePhone Pro with libcamera cam and qcam.
> 
> Signed-off-by: Nicholas Roth <nicholas@rothemail.net>
> ---
>  .../bindings/i2c/ovti,ov8858-i2c.yaml         | 78 +++++++++++++++++++

Where is the driver? If it was sent separately, you must resent entire
patchset.

>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml b/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml
> new file mode 100644
> index 000000000000..1300c1b6fa17
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml

Filename matching the compatible.

> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/i2c-imx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale Inter IC (I2C) and High Speed Inter IC (HS-I2C) for OV8858
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +properties:
> +  compatible: ovti,ov8858
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: xvclk
> +
> +  clock-frequency:
> +    minimum: 24000000
> +    default: 24000000
> +    maximum: 24000000

1. This should be then const instead of these tree... but:
2. Why it can work with only one frequency? Most of camera sensors take few.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c@ff110000 {
> +        status = "okay";

Drop

> +
> +        clock-frequency = <400000>;
> +        i2c-scl-rising-time-ns = <300>;
> +        i2c-scl-falling-time-ns = <15>;
> +        
> +        pinctrl-0 = <&i2c1_xfer &cif_clkouta>;
> +        
> +        assigned-clocks = <&cru SCLK_CIF_OUT &cru SCLK_CIF_OUT_SRC>;
> +        assigned-clock-parents = <&cru SCLK_CIF_OUT_SRC &cru PLL_GPLL>;
> +        assigned-clock-rates = <19200000 0>;

Drop all above properties, not related.

> +        ucam: camera@36 {
> +            compatible = "ovti,ov8858";
> +            reg = <0x36>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&ucam_pdn &ucam_rst>;
> +
> +            clocks = <&cru SCLK_CIF_OUT>;
> +            clock-names = "xvclk";
> +
> +            dovdd-supply = <&vcc1v8_dvp>;
> +            /*XXX: also depends on vcca1v8_codec for I2C bus power */

So your bindings are incomplete?
> +
> +            reset-gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_LOW>;
> +            powerdown-gpios = <&gpio2 RK_PB4 GPIO_ACTIVE_LOW>;

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof

