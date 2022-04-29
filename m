Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89BD5515675
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 23:11:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbiD2VOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 17:14:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbiD2VOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 17:14:32 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0CC4D080A
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 14:11:12 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id d6so10395999ede.8
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 14:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=XPHEKYYd9Ptsbbxs8KoZkCZ1yWIPJOyX4n/VpEuMtQ8=;
        b=S51dNflaCq23QuBcwA+4IvuLo4qSEiZzDqhwwXvmLoe3iKIDmxpRoI2sJXjSRb2378
         pX0j+6GtwpuQn+Bzqa2mrssxz2poCN3Lpa+ORgKdQsBEMl8f6CmYIu8RRoJMysJuYX0K
         HkZSs+AbytYYu4Mlb6VBUhlBIbi0u5M2P4WVOx3eD3oz02xbWuUPPo2PI7ouW/umxImi
         d/BhKDns8mdIqAAwpzjQTt3sJlBocF9xsMhNRQRz5KReXR5jvhKmhT2YP+jvhEVMkTnB
         bS7mImz6yX0IorzEYLYkcLZZl6ULErIdXjPnDFK/OLZ1eD2c1uv4Cr6WUQRRnwm2BrX8
         KE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XPHEKYYd9Ptsbbxs8KoZkCZ1yWIPJOyX4n/VpEuMtQ8=;
        b=5Ew71yit/Vfg6/TUSxW/UAzRhWyZddFcG7nbn3bpKJO/ijnzVKBJz4kXzP9P6TNJdg
         QjDSu5Eli3WUdufI+WOoceCUC6pjZ4qd3YBR74x75zhI9+DRwkaxuyo4aWwieWnp0kO5
         s9LRkR0wPgSPdT+Ya3hqokqHnA7uoRBBYXgrNxLmceUVoOgQn8bVqJL+b//NuSLRzXw/
         M3cZnCds6i808ycJYXnCpwxJIcDV2+HXzWy0CjOPOfKcWBFFPU0pIkEYADawYJdanONo
         zAFvZjabYznHaZ/1Vj0OnTsGfssNePQTCwus6ROHTuPC0Py2lcf6f/LFgOAC1JdtHKOB
         DDaw==
X-Gm-Message-State: AOAM530NBOq+FH2np1M785nA8BRVn12AxZ6rrXG6zUdt7oZG1dTnvwDt
        IANGd8CGVik82bEwLpsGX47c6Q==
X-Google-Smtp-Source: ABdhPJyXc26tYfntm9oqWfRqwvmvcrrtJP2ngF4GGSwjybVuRay6Ke4n5Wtvjck9sHJP/Srg2IN+iQ==
X-Received: by 2002:aa7:d38d:0:b0:427:331b:4f38 with SMTP id x13-20020aa7d38d000000b00427331b4f38mr633895edq.0.1651266671286;
        Fri, 29 Apr 2022 14:11:11 -0700 (PDT)
Received: from [192.168.0.176] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id mm25-20020a170906cc5900b006f3ef214dddsm990485ejb.67.2022.04.29.14.11.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 14:11:10 -0700 (PDT)
Message-ID: <b938c48f-7959-5622-9d09-aeb8c11da979@linaro.org>
Date:   Fri, 29 Apr 2022 23:11:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4] dt-bindings: mailbox: zynqmp_ipi: convert to yaml
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
        devicetree@vger.kernel.org
Cc:     jassisinghbrar@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, michal.simek@xilinx.com,
        git@xilinx.com, linux-kernel@vger.kernel.org
References: <20220428165004.3212654-1-shubhrajyoti.datta@xilinx.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220428165004.3212654-1-shubhrajyoti.datta@xilinx.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/2022 18:50, Shubhrajyoti Datta wrote:
> Convert the ipi doc to yaml.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
> v2:

(...)

> +maintainers:
> +  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> +
> +properties:
> +  compatible:
> +    const: xlnx,zynqmp-ipi-mailbox
> +
> +  method:
> +    description: |
> +                 The method of calling the PM-API firmware layer.
> +                 Permitted values are.
> +                 - "smc" : SMC #0, following the SMCCC
> +                 - "hvc" : HVC #0, following the SMCCC

Wrong alignment of entire description.

> +
> +    $ref: /schemas/types.yaml#/definitions/string-array

This does not look like string array, but regular string.

> +    enum:
> +      - smc
> +      - hvc
> +    default: smc
> +
> +  '#address-cells':
> +    const: 2
> +
> +  '#size-cells':
> +    const: 2
> +
> +  xlnx,ipi-id:
> +    description: |
> +      Remote Xilinx IPI agent ID of which the mailbox is connected to.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  ranges: true
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - '#address-cells'
> +  - '#size-cells'

Missing required xlnx,ipi-id. Such change was not explained in commit msg.

> +
> +patternProperties:

Put patternProperties just after "properties".

> +  '^mailbox@[0-9a-f]+$':
> +    description: Internal ipi mailbox node
> +    type: object  # DT nodes are json objects
> +    properties:
> +      xlnx,ipi-id:
> +        description:
> +          Remote Xilinx IPI agent ID of which the mailbox is connected to.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +
> +      "#mbox-cells":

Wrong quotes. Keep it consistent.

> +        const: 1
> +        description:
> +          It contains  tx(0) or rx(1) channel IPI id number.

No need for double space ^^.

> +
> +      reg:
> +        maxItems: 4
> +
> +      reg-names:
> +        items:
> +          - const: local_request_region
> +          - const: local_response_region
> +          - const: remote_request_region
> +          - const: remote_response_region
> +
> +
> +    required:
> +      - reg
> +      - "#mbox-cells"

Missing required properties.

> +
> +examples:
> +  - |
> +    amba {
> +      #address-cells = <0x2>;
> +      #size-cells = <0x2>;
> +      zynqmp_ipi {

Generic node names (mailbox?), no underscores in node names.

> +        compatible = "xlnx,zynqmp-ipi-mailbox";
> +        interrupts = <0 29 4>;

interrupts look like common flags, so use defines.

> +        xlnx,ipi-id = <0>;
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        ranges;
> +
> +        ipi_mailbox_rpu0: mailbox@ff9905c0 {
> +          reg = <0x0 0xff9905c0 0x0 0x20>,
> +                <0x0 0xff9905e0 0x0 0x20>,
> +                <0x0 0xff990e80 0x0 0x20>,
> +                <0x0 0xff990ea0 0x0 0x20>;
> +          reg-names = "local_request_region",
> +                "local_response_region",

These needs alignment with first string.

> +                "remote_request_region",
> +                "remote_response_region";
> +          #mbox-cells = <1>;
> +          xlnx,ipi-id = <4>;
> +        };
> +      };
> +    };
> +
> +    rpu0 {
> +      mboxes = <&ipi_mailbox_rpu0 0>,
> +               <&ipi_mailbox_rpu0 1>;
> +      mbox-names = "tx", "rx";
> +    };

Skip consumer example, it's obvious.

> +...


Best regards,
Krzysztof
