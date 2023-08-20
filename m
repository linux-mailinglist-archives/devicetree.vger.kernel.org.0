Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE505781CDB
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 10:05:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230084AbjHTIFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 04:05:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230027AbjHTIFs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 04:05:48 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F27202D7D
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 01:01:28 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5231410ab27so2928616a12.0
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 01:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692518487; x=1693123287;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eeJSTKzEeD+6Ni5795ljdCrGFtA+5AfyHnPQCYLSqvE=;
        b=Mga+CC0jRHyOVZLaMsRRJopWCJC7TcFQIQMzBvTw7Qv2XM83f3kuxrATCB7FP8D243
         rLB2TADwm4asJ+tjaEcoavE+MJpsqTzpobzRbIuDLeTvdF94g1piHajkBW9aqcKXc9Nf
         7kKRCFDuXkHCnF36CIZI9xSezIQRUTBMXATnY6A2gvj+EXtt1DIcKOgXricW7UaIsZl1
         XxXrSvQcEqv/6VpDG3aV7JQUpldQJRLZgNW7WAuwQQMREgrXchsXhXbJkw7J7Ci8GfXr
         ifLxaDygSJw2fPZGr48Yl/OSRGNjqTHpUFc22VPXS503RjNESoePSV941r2SpnG6Fwou
         MsKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692518487; x=1693123287;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eeJSTKzEeD+6Ni5795ljdCrGFtA+5AfyHnPQCYLSqvE=;
        b=Ui2sEOm4oVG7HuxCp/gDZy3YLsevWO49lnTsZi7RLC2mXPt1ynhfDLtFbAXuEUhTJJ
         dyXPvI4fWE6/TVBGTYfy363HbD3YWZFU56cWBHLLjKvCeFiqHGOOGGZN23k7Ln8iIbiX
         gNQfFjPyVEZ7vtX1VOavdEytFaUaP+sTmBooaJZILyPHE1KrP8iUiHx7f8afR3bKnfzm
         cMx22FpRoan9QQmEiVdmD0FUKk3S8bNcGeIUgIv26dy/6Geg4NYs2wdJ2aKCqwUGvtz0
         VMrEv9gA9iPqPTw9zliYDxz5g9+Cg14PIze9e5rVZvreJdV7vORCFTITqbvzX8k1o3Za
         BGKA==
X-Gm-Message-State: AOJu0Yy+bBwsldzuWpBp4oCuXU1n8Otg6lR7tsz0kQMTDjL7qwJnrWnA
        99Zi+l9wpw+DEIFjOGlBintiig==
X-Google-Smtp-Source: AGHT+IHYv2pBSehDuqcsbstZO2FmGSb5ZYNe4ZdTQ3/jIHBbfy4yunWhVBEe7jT4XPv35komNvTmKA==
X-Received: by 2002:aa7:d651:0:b0:525:570c:566b with SMTP id v17-20020aa7d651000000b00525570c566bmr2715593edr.22.1692518487409;
        Sun, 20 Aug 2023 01:01:27 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id f13-20020a056402004d00b005236410a16bsm3876732edu.35.2023.08.20.01.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Aug 2023 01:01:26 -0700 (PDT)
Message-ID: <3517f2e9-d9d7-5bf8-1905-62f52d68c512@linaro.org>
Date:   Sun, 20 Aug 2023 10:01:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 14/15] dt-bindings: gpu: mali-valhall-csf: Add initial
 bindings for panthor driver
Content-Language: en-US
To:     Boris Brezillon <boris.brezillon@collabora.com>,
        dri-devel@lists.freedesktop.org
Cc:     Daniel Vetter <daniel@ffwll.ch>,
        "Marty E . Plummer" <hanetzer@startmail.com>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Faith Ekstrand <faith.ekstrand@collabora.com>,
        Daniel Stone <daniels@collabora.com>,
        Liviu Dudau <Liviu.Dudau@arm.com>,
        Steven Price <steven.price@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20230809165330.2451699-1-boris.brezillon@collabora.com>
 <20230809165330.2451699-15-boris.brezillon@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230809165330.2451699-15-boris.brezillon@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/08/2023 18:53, Boris Brezillon wrote:
> From: Liviu Dudau <liviu.dudau@arm.com>
> 
> Arm has introduced a new v10 GPU architecture that replaces the Job Manager
> interface with a new Command Stream Frontend. It adds firmware driven
> command stream queues that can be used by kernel and user space to submit
> jobs to the GPU.
> 
> Add the initial schema for the device tree that is based on support for
> RK3588 SoC. The minimum number of clocks is one for the IP, but on Rockchip
> platforms they will tend to expose the semi-independent clocks for better
> power management.

A nit, subject: drop second/last, redundant "bindings for". The
"dt-bindings" prefix is already stating that these are bindings.

Also drop "driver" form the subject. Bindings are for hardware, not drivers.

> 
> v2:
> - New commit
> 
> Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>

SoB chain is incomplete.

> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../bindings/gpu/arm,mali-valhall-csf.yaml    | 148 ++++++++++++++++++
>  1 file changed, 148 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> new file mode 100644
> index 000000000000..2b9f77aa0b7a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> @@ -0,0 +1,148 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/arm,mali-valhall-csf.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Mali Valhall GPU
> +
> +maintainers:
> +  - Liviu Dudau <liviu.dudau@arm.com>
> +  - Boris Brezillon <boris.brezillon@collabora.com>
> +
> +properties:
> +  $nodename:
> +    pattern: '^gpu@[a-f0-9]+$'
> +
> +  compatible:
> +    oneOf:

Drop oneOf.

> +      - items:
> +          - enum:
> +              - rockchip,rk3588-mali
> +          - const: arm,mali-valhall-csf   # Mali Valhall GPU model/revision is fully discoverable
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Job interrupt
> +      - description: MMU interrupt
> +      - description: GPU interrupt
> +
> +  interrupt-names:
> +    items:
> +      - const: job
> +      - const: mmu
> +      - const: gpu
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: core
> +      - const: coregroup
> +      - const: stacks
> +
> +  mali-supply: true
> +
> +  sram-supply: true
> +
> +  operating-points-v2: true

Missing opp-table.

> +
> +  power-domains:
> +    minItems: 1
> +    maxItems: 5
> +
> +  power-domain-names:
> +    minItems: 1
> +    maxItems: 5
> +
> +  "#cooling-cells":
> +    const: 2
> +
> +  dynamic-power-coefficient:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      A u32 value that represents the running time dynamic
> +      power coefficient in units of uW/MHz/V^2. The
> +      coefficient can either be calculated from power
> +      measurements or derived by analysis.
> +
> +      The dynamic power consumption of the GPU is
> +      proportional to the square of the Voltage (V) and
> +      the clock frequency (f). The coefficient is used to
> +      calculate the dynamic power as below -
> +
> +      Pdyn = dynamic-power-coefficient * V^2 * f
> +
> +      where voltage is in V, frequency is in MHz.
> +
> +  dma-coherent: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - mali-supply
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-mali
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +        clock-names:
> +          items:
> +            - const: core
> +            - const: coregroup
> +            - const: stacks

This duplicates top-level. Just minItems: 3.

Please describe also power domains - constrains and names.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/rk3588-power.h>
> +
> +    gpu: gpu@fb000000 {
> +        compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
> +        reg = <0xfb000000 0x200000>;
> +        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
> +        interrupt-names = "job", "mmu", "gpu";
> +        clock-names = "core", "coregroup", "stacks";
> +        clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
> +                 <&cru CLK_GPU_STACKS>;
> +        power-domains = <&power RK3588_PD_GPU>;
> +        operating-points-v2 = <&gpu_opp_table>;
> +        mali-supply = <&vdd_gpu_s0>;
> +        sram-supply = <&vdd_gpu_mem_s0>;
> +        status = "disabled";

Drop status.

> +    };
> +
> +    gpu_opp_table: opp-table {

Opp table should be inside the device node.

> +        compatible = "operating-points-v2";
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            opp-microvolt = <675000 675000 850000>;
> +        };

Best regards,
Krzysztof

