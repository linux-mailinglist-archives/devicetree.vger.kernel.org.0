Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0E53633B8E
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 12:38:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233089AbiKVLi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 06:38:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233080AbiKVLi0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 06:38:26 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56F16614C
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:33:46 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id d6so23119908lfs.10
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8AecBzrto7iiXG/YkhUDUlAYZpkE3vdWXEj9FqL/Bks=;
        b=kWI4uiyGXOJoWem+WZR1cLHg4R0E/uZdXekLM1H2LYco+HF5lZa4appczftYoI+ed8
         KGGfp8Py8TZkC5UUmo4MxHZHRYpAw22AoEKrgIim0+kkeYUflgPxZ4Hx8bQ7+YpVLsl/
         tzSUgt+uX4DiHJXgeBxK49NEL+zLRaQOsDobnHvIbi0sU2cZB+if5JlM3jNiGaOs+lDN
         Ca+BJDjtkO3bm/UNRcGm/zW3y2uBuVFD1AQIst96/16OuuFYFDjhM4kcEFmeRs8wYBm+
         /2Vl458kyM9oIE7iMAWSBNoqSGyhVwkIhfLL1OmsNPIIALKf6gP+LOYM3uHLOoy+Z7SD
         PXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8AecBzrto7iiXG/YkhUDUlAYZpkE3vdWXEj9FqL/Bks=;
        b=4ZiXVGeQhku1UFSpkepKbAUxqcP11HTpSYqtmJQ+ZtNoZW35tzvr56isrpIf8CWl/4
         u3lmtarDg14izVuQUd+xSquGVBWyo1KckZv/OL2aIzEk1W4HVtAjRhsCb63s1qK76KZX
         R9akid65hXqUH/a5qa4ELb1M7/+q0O73A2rcq4O+dS1kXv0CQBNbY4G/J3Ve0CiLgax5
         5xSgWXboab2fGCDK8oR3lD3wmPxJ5cDBvDRFrzxsU70wWICbvtFTgZLCa1SOosQPRdHv
         GHDAgOU+vGAePDBFxJAAqJEI+ZgFGmFnPda+j6BC66bScM/KGxPVgOMlIuzCLxFuUp+i
         palw==
X-Gm-Message-State: ANoB5pnFznuk8W/GRIxrvEzRESHgx4kQqJISyb85op1eVCxZsd4KPilw
        XsLCHlUuQx2xyUlVnIQYkBIYpg==
X-Google-Smtp-Source: AA0mqf5bC3f0DyiKAPcMWf4Dku34Z4NS2BSMjJSPFXvCykSvblKIrgtSFPaZSw7abqjeQ25GMN0JnQ==
X-Received: by 2002:a05:6512:1505:b0:4af:b5d0:695e with SMTP id bq5-20020a056512150500b004afb5d0695emr7928714lfb.6.1669116824639;
        Tue, 22 Nov 2022 03:33:44 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u4-20020a2eb804000000b00279742d2b91sm15500ljo.36.2022.11.22.03.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 03:33:44 -0800 (PST)
Message-ID: <3a2c702b-afc3-0973-b302-f2c652790514@linaro.org>
Date:   Tue, 22 Nov 2022 12:33:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 1/4] dt-bindings: interrupt-controller: mediatek,cirq:
 Migrate to dt schema
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, tglx@linutronix.de
Cc:     maz@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        youlin.pei@mediatek.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20221118100639.33704-1-angelogioacchino.delregno@collabora.com>
 <20221118100639.33704-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118100639.33704-2-angelogioacchino.delregno@collabora.com>
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

On 18/11/2022 11:06, AngeloGioacchino Del Regno wrote:
> Migrate mediatek,cirq.txt to dt schema as mediatek,mtk-cirq.yaml.
> While at it, I've also fixed some typos that were present in the
> original txt binding, as it was suggesting that the compatible
> string would have "mediatek,cirq" as compatible but, in reality,
> that's supposed to be "mediatek,mtk-cirq" instead.
> 
> Little rewording on property descriptions also happened for
> them to be more concise.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../interrupt-controller/mediatek,cirq.txt    | 33 ---------
>  .../mediatek,mtk-cirq.yaml                    | 70 +++++++++++++++++++
>  2 files changed, 70 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/mediatek,cirq.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mediatek,mtk-cirq.yaml
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/mediatek,cirq.txt b/Documentation/devicetree/bindings/interrupt-controller/mediatek,cirq.txt
> deleted file mode 100644
> index 5865f4f2c69d..000000000000
> --- a/Documentation/devicetree/bindings/interrupt-controller/mediatek,cirq.txt
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -* Mediatek 27xx cirq
> -
> -In Mediatek SOCs, the CIRQ is a low power interrupt controller designed to
> -work outside MCUSYS which comprises with Cortex-Ax cores,CCI and GIC.
> -The external interrupts (outside MCUSYS) will feed through CIRQ and connect
> -to GIC in MCUSYS. When CIRQ is enabled, it will record the edge-sensitive
> -interrupts and generate a pulse signal to parent interrupt controller when
> -flush command is executed. With CIRQ, MCUSYS can be completely turned off
> -to improve the system power consumption without losing interrupts.
> -
> -Required properties:
> -- compatible: should be one of
> -  - "mediatek,mt2701-cirq" for mt2701 CIRQ
> -  - "mediatek,mt8135-cirq" for mt8135 CIRQ
> -  - "mediatek,mt8173-cirq" for mt8173 CIRQ
> -  and "mediatek,cirq" as a fallback.
> -- interrupt-controller : Identifies the node as an interrupt controller.
> -- #interrupt-cells : Use the same format as specified by GIC in arm,gic.txt.
> -- reg: Physical base address of the cirq registers and length of memory
> -  mapped region.
> -- mediatek,ext-irq-range: Identifies external irq number range in different
> -  SOCs.
> -
> -Example:
> -	cirq: interrupt-controller@10204000 {
> -		compatible = "mediatek,mt2701-cirq",
> -			     "mediatek,mtk-cirq";
> -		interrupt-controller;
> -		#interrupt-cells = <3>;
> -		interrupt-parent = <&sysirq>;
> -		reg = <0 0x10204000 0 0x400>;
> -		mediatek,ext-irq-start = <32 200>;
> -	};
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/mediatek,mtk-cirq.yaml b/Documentation/devicetree/bindings/interrupt-controller/mediatek,mtk-cirq.yaml
> new file mode 100644
> index 000000000000..21e709169907
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/mediatek,mtk-cirq.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/mediatek,mtk-cirq.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek System Interrupt Controller
> +
> +maintainers:
> +  - Youlin Pei <youlin.pei@mediatek.com>
> +
> +description:
> +  In MediaTek SoCs, the CIRQ is a low power interrupt controller designed to
> +  work outside of MCUSYS which comprises with Cortex-Ax cores, CCI and GIC.
> +  The external interrupts (outside MCUSYS) will feed through CIRQ and connect
> +  to GIC in MCUSYS. When CIRQ is enabled, it will record the edge-sensitive
> +  interrupts and generate a pulse signal to parent interrupt controller when
> +  flush command is executed. With CIRQ, MCUSYS can be completely turned off
> +  to improve the system power consumption without losing interrupts.
> +
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - mediatek,mt2701-cirq
> +          - mediatek,mt8135-cirq
> +          - mediatek,mt8173-cirq
> +      - const: mediatek,mtk-cirq
> +
> +  reg:
> +    maxItems: 1
> +    description: Address and size of the CIRQ registers

Drop description, it's obvious.

> +
> +  '#interrupt-cells':
> +    const: 3
> +
> +  interrupt-controller: true
> +
> +  mediatek,ext-irq-range:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    maxItems: 1

This points it's array..

> +    items:
> +      items:

But this it's matrix.

> +        - description: First CIRQ interrupt
> +        - description: Last CIRQ interrupt

I guess it you should be just array with only one "items:" keyword.

> +    description:
> +      Identifies the range of external interrupts in different SoCs
> +

Best regards,
Krzysztof

