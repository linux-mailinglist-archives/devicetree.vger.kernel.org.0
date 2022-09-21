Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6A0E5BFA07
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 11:02:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbiIUJCz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 05:02:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbiIUJCy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 05:02:54 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 333A3844E8
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:02:53 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id c7so6117193ljm.12
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=3xCz4q0j9yoz6w2ZGLfiKhRNy9JBFl03sZjC1rmOrJk=;
        b=uVJhXf4EWfDG+gz3D+aljpy2FgqMANpRoAqAB5Lzl3SvDuNKqviBaVh8b1S9KVcN6N
         ZlmjzRwPBpOGwcOdb0ivBAYKGliKBewDxiJPBUyhJfeDt/214OicWUGKraFxpioO5MkF
         BeSPdUx+Ik6ZSWw5+3A9CLssLTCFxoj6H+CKhg1f2Fe3eQ89rIMEmh20ebeL65+RKg8q
         4o6u4qLIZQKsCvA7euCBKmCdXHRFql+ZXXgOOg/frqSE+QJF6GtQpPL93B5MfL2DDifu
         5VIuk5eLixeP506Bao6wf88rwvSgXpFd4SOXohYCWS/syVNZ13zlcAsyAczdKL/wZieu
         KW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=3xCz4q0j9yoz6w2ZGLfiKhRNy9JBFl03sZjC1rmOrJk=;
        b=70Gul0uHkNFnhBdV0WO+IfjUHbLsvtgi4OXLuw97r6s7Qg+euDu88CiAAnc3WGYB25
         p1bNemfMV6dUrafgs0TNJLlieK3rlCeX6yGZMFM+NiKxhydfKGjHvkHFSFcSSaMBKHGh
         VqJjFbZkTL7gefG0/itELcs6J//U3Cn1qW/oiFGif4YndGshYjAm4x/zojgAAjhSekmn
         jOUfOaaG8rtPxuWcqxtHxqkfJUsCVfv/IzdbRc943+GQPBhMCSbscmKzDJCEmY3Nr+Sa
         4ZDkGPQxjENxPnPdBN/pS3S7YJ0ZEm3aDtFB8DE5IVH6l5xBBe/54gyFdHvZasm7XBVs
         ITNA==
X-Gm-Message-State: ACrzQf2R7AsI01kivTF18yW5luaCJ+IJj63tE04ZD70Y/gxNDOPfPC5I
        2KxvNZR80TFcKzW1XSX2i+3/Mw==
X-Google-Smtp-Source: AMsMyM4tviWw8+80BkqYHloTDtSGS0wOUXfwpqz51e1soVF7koref8SWge4uK74VdIKiW5LwXlkEdQ==
X-Received: by 2002:a2e:9245:0:b0:26c:4e46:db1 with SMTP id v5-20020a2e9245000000b0026c4e460db1mr4744290ljg.65.1663750971436;
        Wed, 21 Sep 2022 02:02:51 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c36-20020a05651223a400b004948ddb4e4dsm332729lfv.301.2022.09.21.02.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 02:02:50 -0700 (PDT)
Message-ID: <08a55e06-498d-07e5-174a-ef3ca0f1a190@linaro.org>
Date:   Wed, 21 Sep 2022 11:02:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [RFC PATCH 1/2] dt-bindings: Add the binding doc for xilinx APM
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     git@amd.com, devicetree@vger.kernel.org, michal.simek@xilinx.com,
        mark.rutland@arm.com, will@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20220921080623.22077-1-shubhrajyoti.datta@amd.com>
 <20220921080623.22077-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921080623.22077-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 10:06, Shubhrajyoti Datta wrote:
> The LogiCORE™ IP AXI Performance Monitor core enables AXI system
> performance measurement for multiple slots (AXI4/AXI3/AXI4-Stream/
> AXI4-Lite) activity. Add the devicetree binding for xilinx APM.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
>  .../bindings/perf/xlnx-axi-perf-monitor.yaml  | 137 ++++++++++++++++++
>  1 file changed, 137 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml
> 
> diff --git a/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml b/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml
> new file mode 100644
> index 000000000000..0b8ba96aa867
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml

Filename based on compatible (the same as compatible).

> @@ -0,0 +1,137 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/perf/xilinx-apm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx Axi Performance Monitor device tree bindings

Drop "device tree bindings".

> +
> +maintainers:
> +  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> +
> +properties:
> +  compatible:
> +    items:

You have one item, so no "items".

> +      - enum:
> +          - xlnx,axi-perf-monitor
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  xlnx,enable-profile:
> +    allOf:

No need for allOf.

> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [0, 1]

This is boolean.

> +    description:
> +      Enables the profile mode.

Explain what is "profile mode".

> +    maxItems: 1
> +
> +  xlnx,enable-trace:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [0, 1]

Ditto

> +    description:
> +      Enables trace mode.

Ditto

> +    maxItems: 1
> +
> +  xlnx,num-monitor-slots:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 1
> +      - maximum: 8

No allOf.


All of such comments apply everywhere.

> +    description:
> +      Number of monitor slots.
> +
> +  xlnx,enable-event-count:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [0, 1]

boolean

> +    description:
> +      Enable event count.
> +
> +  xlnx,enable-event-log:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [0, 1]

boolean


> +    description:
> +      Enable event log.
> +
> +  xlnx,have-sampled-metric-cnt:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Sampled metric counters enabled in APM.

Description says: boolean

> +
> +  xlnx,metric-count-width:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [32, 64]
> +    description:
> +      Metric Counter width.
> +
> +  xlnx,metric-count-scale:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [1, 2, 4, 8]
> +    description:
> +      Metric Counter scale factor.
> +
> +  xlnx,num-of-counters:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of counters in APM.
> +
> +  xlnx,metrics-sample-count-width:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [32, 64]
> +    description:
> +      Sampled metric counter width.
> +
> +  xlnx,global-count-width:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [32, 64]
> +    description:
> +      Global Clock counter width.
> +
> +  xlnx,id-filter-32bit:
> +    description: APM is in 32-bit mode.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    apm@44a00000 {

Generic node names: pmu

> +        compatible = "xlnx,axi-perf-monitor";
> +        interrupt-parent = <&axi_intc_1>;
> +        interrupts = <1 2>;


Are these usual interrupt flags?

> +        reg = <0x44a00000 0x1000>;
> +        clocks = <&clkc 15>;
> +        xlnx,enable-profile = <0>;
> +        xlnx,enable-trace = <0>;
> +        xlnx,num-monitor-slots = <4>;
> +        xlnx,enable-event-count = <1>;
> +        xlnx,enable-event-log = <1>;
> +        xlnx,have-sampled-metric-cnt = <1>;
> +        xlnx,num-of-counters = <8>;
> +        xlnx,metric-count-width = <32>;
> +        xlnx,metrics-sample-count-width = <32>;
> +        xlnx,global-count-width = <32>;
> +        xlnx,metric-count-scale = <1>;
> +        xlnx,id-filter-32bit;
> +    };

Best regards,
Krzysztof

