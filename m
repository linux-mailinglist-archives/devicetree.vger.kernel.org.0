Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F30757F19F
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 23:02:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236829AbiGWVCE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 17:02:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231194AbiGWVCE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 17:02:04 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC4641181A
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 14:02:02 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id p10so5113944lfd.9
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 14:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NDOuFnAIE+sl0YBWuvYACRjja9BgkcP0ipfGZp4RleM=;
        b=nScvBFwZW3zCh+nENQWyufKd4C+RW72eSxsHwOtCWS4ogSUq4s8iqvTJAb02ZeGUN9
         rPFqoftLlG0HTjiiU8Nu5AQjg7vi0C56TO/ynSdzOv9MThnw7Et3MGCyvzSNZPh5+lEy
         4nwip0vDmylpGo14aDglRFckk7QC4/Lg2/LTew9+jmpN0bjLXnqFES8ujsJAGNVasJ2i
         FdRGWLEzhY6QI4PGEdDB8thGFSQKFBPJFrDb0bSzVWYaoYj+2Wv23jdf8/raNRplS7/c
         JoQO0U3G0k8dON8DoFQPLlK/ESM7GOQoVMDrOCErwoAHhiRE6qMbYYfnwS+mcEToUVU3
         cSfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NDOuFnAIE+sl0YBWuvYACRjja9BgkcP0ipfGZp4RleM=;
        b=Ab3BqXI7dZs0/ONFnrnTRL4IY25lkoRKddOyaKFxwNjUFpwNXXI2/3RZxdjJH49K69
         kV3UYqMFnH0/dNAs7sNQU9zBJ3geDfIUmp7S2TPjBJKw42Unon2zSeIe6aCIPswIEEW4
         nnxxhIHzDp+UgDXKTvdXI5CI8m3PuHgELCIkfv3xbalklFUpWA2ITp7e1BNP37j67mWR
         dBDkYR4PcL7rsWdMNkCT/YU/Y6RvdAXenAUAwd4Md4frQSkYDqFUVxQ6cqTpUBGaVBB2
         pE1NGdY9jmRCcZGsYAMqd6F3Ah9ch3EUY7mW9SQmeSMF1CP6IuhPTKORR+3tB9UoYjah
         J6Mw==
X-Gm-Message-State: AJIora9Umhh8UYYwJM84JVgfbWy7qPrPRl12v5WwsSLyM/OdyycKKCO/
        VqFTVI/zHeFmXA3D7X6JxPJYOg==
X-Google-Smtp-Source: AGRyM1vf8kI2t4+ngts1aT3KR3C/wqmAIWyUVVeNcvL3MRsjG2G9bk3wqblJ+jSxU5DstUVMbWWWeQ==
X-Received: by 2002:a05:6512:ad6:b0:48a:20f9:c0e6 with SMTP id n22-20020a0565120ad600b0048a20f9c0e6mr2081027lfu.287.1658610121263;
        Sat, 23 Jul 2022 14:02:01 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id v7-20020ac258e7000000b00486c14f0fe1sm1836729lfo.11.2022.07.23.14.02.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 14:02:00 -0700 (PDT)
Message-ID: <3b38996f-e887-9130-36d0-6a02efe2034e@linaro.org>
Date:   Sat, 23 Jul 2022 23:01:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 09/22] dt-bindings: clock: rockchip: Document RV1126 CRU
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-10-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-10-jagan@edgeble.ai>
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

On 23/07/2022 22:43, Jagan Teki wrote:
> Document dt-bindings for Rockchip RV1126 clock controller.
> 
> Cc: linux-clk@vger.kernel.org
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  .../bindings/clock/rockchip,rv1126-cru.yaml   | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
> new file mode 100644
> index 000000000000..cf4f11709125
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rv1126-cru.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rv1126-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ROCKCHIP RV1126 Family Clock Control Module Binding

s/Binding//

> +
> +maintainers:
> +  - Jagan Teki <jagan@edgeble.ai>
> +  - Finley Xiao <finley.xiao@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |

You can skip '|'. No formatting in text.

> +  The RV1126 clock controller generates the clock and also implements a
> +  reset controller for SoC peripherals.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rv1126-cru
> +      - rockchip,rv1126-pmucru
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: xin24m
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "general register files" (GRF),
> +      if missing pll rates are not changeable, due to the missing pll
> +      lock status.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pmucru: clock-controller@ff480000 {
> +      compatible = "rockchip,rv1126-pmucru";
> +      reg = <0xff480000 0x1000>;
> +      rockchip,grf = <&grf>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };
> +  - |
> +    cru: clock-controller@ff490000 {
> +      compatible = "rockchip,rv1126-cru";
> +      reg = <0xff490000 0x1000>;
> +      rockchip,grf = <&grf>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };

I would keep just one example - they are the same, except compatible.
Less code to manage or to fix later...

With all the changes:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
