Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38B7E5B195C
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 11:53:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229896AbiIHJxr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 05:53:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231520AbiIHJxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 05:53:15 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 723D99877C
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 02:52:52 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id p7so26822299lfu.3
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 02:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=MbAZZ7ImXCnAcX5j6c0OQ0QrifKC4P6NeZBSY/zCSx0=;
        b=WB6zbmxVadcxx+HMpPhfMGJ27YOZ9tqaqpHpkNY2q/yJ3tdIjYxihvgxQ3UVOwQE6E
         Th6aMRCdXhR8h+JQN/CE0zJ3kyoqqyrlLFH4OVVGE2XMkvJJPcPBptE6DiWa0CG7OIrt
         5xgUrnGC/8IJbBK2p332HaMYn3wDK/RVm3ontNqr+CiWveggtsDeFtkBzQqGD8IGcYfa
         1TF+eMa03ymKwcA45z3h0nuLSboJINw3u2GjU8pXXSYWYDVyTNYxls3QZ5Sertr7Gape
         OA+0d+ldAFy4OiGWNKwZYCVV1m+Rf6TFBFrcg2I4uOUtegxhW6OO1EylDmW3b0jm5bDl
         sZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=MbAZZ7ImXCnAcX5j6c0OQ0QrifKC4P6NeZBSY/zCSx0=;
        b=FPWnfZ/t2fEJlYstRvifWH3c3IJ4seT1M2jaq0JXeFW1uX2i9suHmLG/JMlsEkAhD4
         RmLJNXx0d4eJAQpd84UkNEmhLwtgMcny+hCkj+gMn7gt0JTeXW5BYvOrKoyCx9VCE+ih
         Ezu+UZmZzFTJd89d5JzMo4uQgk/btold4Fv+zxW9i3S99KLP3AlGPER/eScvanStBwcW
         ct9uoBjNCIQ6B5gMbjodgIWwuxum4+7LHvgh+4eifai0Bxtdb5T6g+Z5u9RMBzRbOW0n
         Psc9K3nLyFhbAYr/cZcQHaf7cQJK8tIjzEICoGQwpNftsHp8ss45sRjSaSfEl8fgejwQ
         K7tQ==
X-Gm-Message-State: ACgBeo3JYpzRAogNtFvwU4ZqYh+ESACJV1+Z03phZJLowz36dmjsJEjR
        NPLOqyt1DXm1i++XN76vgb7VFw==
X-Google-Smtp-Source: AA6agR4uIUy5M7yq+F2/csoUmcip3so7/aFAX2d6wiRe2HX9qa7VrFl3Pf3YfRp26nUrJMxDAnBTcg==
X-Received: by 2002:a05:6512:ad1:b0:498:f052:3a18 with SMTP id n17-20020a0565120ad100b00498f0523a18mr483600lfu.348.1662630770805;
        Thu, 08 Sep 2022 02:52:50 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p7-20020a05651211e700b0049487818dd9sm2958665lfs.60.2022.09.08.02.52.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 02:52:50 -0700 (PDT)
Message-ID: <8a593e0b-99e0-b1f4-20ab-ab2df2940518@linaro.org>
Date:   Thu, 8 Sep 2022 11:52:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: clock: add i.MX8M Anatop
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, abelvesa@kernel.org,
        abel.vesa@linaro.org, sboyd@kernel.org
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
References: <20220906090013.3724305-1-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906090013.3724305-1-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 11:00, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8M Family features an anatop module the produces PLL to clock
> control module(CCM) root clock. Add the missing yaml file.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../bindings/clock/imx8m-anatop.yaml          | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8m-anatop.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8m-anatop.yaml b/Documentation/devicetree/bindings/clock/imx8m-anatop.yaml
> new file mode 100644
> index 000000000000..e247a5774d17
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx8m-anatop.yaml

Filename: fsl,imx8m-anatop.yaml

> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/imx8m-anatop.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8M Family Anatop Module
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +description: |
> +  NXP i.MX8M Family anatop PLL module which generates PLL to CCM root.

Description suggests it is a clock controller (you literally write it
generates PLL), but bindings are for system registers (syscon). If it is
PLL, you should make it a real clock provider.

> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx8mm-anatop
> +              - fsl,imx8mq-anatop
> +          - const: syscon
> +      - items:
> +          - enum:
> +              - fsl,imx8mn-anatop
> +              - fsl,imx8mp-anatop
> +          - const: fsl,imx8mm-anatop
> +          - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    anatop: anatop@30360000 {

Node name: syscon or clock-controller if it is a clock provider.

> +        compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop", "syscon";
> +        reg = <0x30360000 0x10000>;
> +    };
> +
> +...


Best regards,
Krzysztof
