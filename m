Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 136296EA4A3
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbjDUH0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:26:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjDUHZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:25:58 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 820DB1FC7
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:25:56 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so9648869a12.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682061955; x=1684653955;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3JLBA+Q4i9A5sZEYg7QqQAh/Wo2Kevush2USsIjGWQ8=;
        b=n2oH1qvj0aUBvXrosLGr/rp8d8RUmh79FPvZEZlmw+PmyjfJzk9ue+pTFabq9Gvjgu
         C3SIyASKL/7u2jEfufu2g5gRrW8KgHqc3NyKf2mDmhJmeJSTLeKW/03HkZKRe5VPyQJR
         bikHFQg5EF4TmNmfU357uARRGxK7WVVPcAGu6dGKaiy4pNwOSV6vMEXqjODFbP5FITvK
         pTi+qPRuqgRAkBsEQLITHhpgDIFmGLX6dd8BNugAa4lhTQOEikibP6LUOdWu+p6dcUQG
         nMDATp5vRKaITdjR/qz9FoDjal1IOWFYGOBDR/nlArKFTli3uqNDxlwzGQaeYMkL7Iup
         er5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682061955; x=1684653955;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3JLBA+Q4i9A5sZEYg7QqQAh/Wo2Kevush2USsIjGWQ8=;
        b=VnJXI0HYZ1ZIhemHrKfM4igRhdRctIrnNdsz8m4vPWoF5MDo3wrPGyywu2jC8mAogX
         2fpuGweQMybOyikzZ+fSzhwfIIbfMoGfdblMc30SmfnkxZOaubNg89W2j3BSBWn7AULI
         zf6POSHAxrWurPdoobKf+jl4m7sXBDjCyfE5gmxdW7wSek9H6E5BAdnub+N+ohjWT8EE
         vv5V+XMVbtmRzlTKzt2hLdDMdUqBLWq5qN2/d3dKnFmrknizBRfmvv7a9Tb1NzXjqoct
         UmH3pzlDewaztN/GVvaO+qFDyfM6uBfxy9P9m9kRoguvlvM1Aa/q/QAhTPByMEoxbp95
         iUnQ==
X-Gm-Message-State: AAQBX9dk+pO73NsnUy8XRw1v5xqDYCjIRFGO4NQf04ifCb7We2VBn4m/
        3KQzrYRllDJQyE93R38Nl0DDPQ==
X-Google-Smtp-Source: AKy350b10EIDgqsPOhJ5mouhl7ewazqxRPq/J9S94qH2jgsepPjc+p4ikCJC8yURtdqm3crBvuQGJQ==
X-Received: by 2002:a17:906:9f28:b0:94e:9653:e1ed with SMTP id fy40-20020a1709069f2800b0094e9653e1edmr1272421ejc.35.1682061955021;
        Fri, 21 Apr 2023 00:25:55 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id g21-20020a170906539500b0094efdfe60dcsm1658105ejo.206.2023.04.21.00.25.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:25:54 -0700 (PDT)
Message-ID: <b3e49980-3417-b6c8-aacd-f467c62ac53e@linaro.org>
Date:   Fri, 21 Apr 2023 09:25:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: misc: esm: Add ESM support for TI K3
 devices
Content-Language: en-US
To:     Neha Malcom Francis <n-francis@ti.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     nm@ti.com, vigneshr@ti.com, u-kumar1@ti.com
References: <20230419092559.673869-1-n-francis@ti.com>
 <20230419092559.673869-2-n-francis@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230419092559.673869-2-n-francis@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2023 11:25, Neha Malcom Francis wrote:
> Document the binding for TI K3 ESM (Error Signaling Module) block.
> 
> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

> ---
>  .../bindings/hwmon/ti,j721e-esm.yaml          | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/ti,j721e-esm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,j721e-esm.yaml b/Documentation/devicetree/bindings/hwmon/ti,j721e-esm.yaml
> new file mode 100644
> index 000000000000..7b23ac7cb3ba
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ti,j721e-esm.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022 Texas Instruments Incorporated
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/ti,j721e-esm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments K3 ESM
> +
> +maintainers:
> +  - Neha Malcom Francis <n-francis@ti.com>
> +
> +description:
> +  The ESM (Error Signaling Module) is an IP block on TI K3 devices
> +  that allows handling of safety events somewhat similar to what interrupt
> +  controller would do. The safety signals have their separate paths within
> +  the SoC, and they are handled by the ESM, which routes them to the proper
> +  destination, which can be system reset, interrupt controller, etc. In the
> +  simplest configuration the signals are just routed to reset the SoC.
> +
> +properties:
> +  compatible:
> +    const: ti,j721e-esm
> +
> +  reg:
> +    items:
> +      - description: the ESM register set
> +
> +  ti,esm-pins:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      integer array of ESM interrupt pins to route to external event pin
> +      which can be used to reset the SoC.
> +    minItems: 1
> +    maxItems: 255
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - ti,esm-pins
> +
> +examples:
> +  - |
> +    cbass_main {

No underscores in node names, Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +      #address-cells = <2>;
> +      #size-cells = <2>;

Broken indentation.

> +
> +        esm@700000 {
> +            compatible = "ti,j721e-esm";
> +            reg = <0x0 0x700000 0x0 0x1000>;
> +            ti,esm-pins = <344>, <345>;
> +        };
> +    };

Best regards,
Krzysztof

