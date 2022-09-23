Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7C055E7954
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 13:21:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230428AbiIWLVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 07:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231416AbiIWLVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 07:21:10 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A460213572C
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 04:21:06 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id i26so19243080lfp.11
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 04:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=rCHuExPyw34E49pRLOmhVp4keZrznuThXnXRZMaWCCg=;
        b=ZQd7rxG9iEDwOsocem0C/3t0VsE0KCJVYhftLV0TGGmQ9+0enEqM8lrABD1DgiArNx
         QThG6exTX6toUTXFb9m+SWCEtWwS/0sCxapWIIN9UNRw7qzcjg0WRYRDiDQ+RTbdYpFh
         /YQXUh6SVU3iGD9DnhqtLhSHSKXHqJmYnJlIUVJnNtJwmGmYDm2MGaNDvOmw6mIa6821
         sSiiXfUIL9I6EP+C6nV1dQpBEV88/Xqg3ldRJVd4e/UGeW6qQYibasQfssvhkm2u8HxN
         y+U2S9Cg/Rz9iZJK4ufO0WN08A7S55wJvGmSnbp4S1KsVwKoYQu0RvUXwxL3cmcoBc1V
         bQZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=rCHuExPyw34E49pRLOmhVp4keZrznuThXnXRZMaWCCg=;
        b=nVZr6o5aSAlLY4ZnNemMIgdzboq5tUQb/pAqISc6Ll11/ecjwTQ3eW8hTw6LB6nOCa
         HNLStlZu8gld8FOLLqlZi2avABqMbzR6274t8JofSvs5H65WPv7+pWr9Uv8QYEXZZ7eu
         /Cw7TLQCGzMFW9GIIAProXUl8z5tOu4Z2B3vbP+52yrPo+2h6GG/Q3+P4w0La8qF/tVw
         HZOsWy9cFh4C7MnDCLsQa6oj7Mh+ejo3RVOqo+LgX0q3QWbuIaSVc8v0O5pz6pkJaSZk
         TR+fpi1LHBrR+HufOTywRPFjhfgGtOeckW8KBqU610DKdIhZOv6F0pe4gTyhEQ+5wcHa
         XkFQ==
X-Gm-Message-State: ACrzQf1pi+Zb7kMmJRNlWJUtPlCL6Ku2tuNt5et5VLpbz2F4O60oUjjb
        krug0NkGop5atI10BpfEsE+IcQ==
X-Google-Smtp-Source: AMsMyM66ZBHC4h0SEgXf3jOTu/Lfs2tP185KjXaslJjWK0qEoSuOeg/RQHaj34Vp8XvoyNzQYc0ohg==
X-Received: by 2002:a05:6512:2286:b0:49e:eb:ea19 with SMTP id f6-20020a056512228600b0049e00ebea19mr3122982lfu.645.1663932064944;
        Fri, 23 Sep 2022 04:21:04 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t3-20020ac25483000000b0049a5a59aa68sm1408105lfk.10.2022.09.23.04.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 04:21:04 -0700 (PDT)
Message-ID: <29fb0a59-8685-89b2-74de-2ccdce1c925c@linaro.org>
Date:   Fri, 23 Sep 2022 13:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [net-next PATCH] dt-bindings: net: marvell,pp2: convert to
 json-schema
Content-Language: en-US
To:     =?UTF-8?Q?Micha=c5=82_Grzelak?= <mig@semihalf.com>,
        devicetree@vger.kernel.org
Cc:     mw@semihalf.com, linux@armlinux.org.uk, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        upstream@semihalf.com
References: <20220922211026.34462-1-mig@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922211026.34462-1-mig@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 23:10, Michał Grzelak wrote:
> This converts the marvell,pp2 bindings from text to proper schema.
> 
> Move 'marvell,system-controller' and 'dma-coherent' properties from
> port up to the controller node, to match what is actually done in DT.
> 
> Signed-off-by: Michał Grzelak <mig@semihalf.com>
> ---
>  .../devicetree/bindings/net/marvell,pp2.yaml  | 292 ++++++++++++++++++
>  .../devicetree/bindings/net/marvell-pp2.txt   | 141 ---------
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 293 insertions(+), 142 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/marvell,pp2.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/marvell-pp2.txt
> 
> diff --git a/Documentation/devicetree/bindings/net/marvell,pp2.yaml b/Documentation/devicetree/bindings/net/marvell,pp2.yaml
> new file mode 100644
> index 000000000000..b4589594a0cc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/marvell,pp2.yaml
> @@ -0,0 +1,292 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/marvell,pp2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell CN913X / Marvell Armada 375, 7K, 8K Ethernet Controller
> +
> +maintainers:
> +  - Marcin Wojtas <mw@semihalf.com>
> +  - Russell King <linux@armlinux.org>
> +
> +description: |
> +  Marvell Armada 375 Ethernet Controller (PPv2.1)
> +  Marvell Armada 7K/8K Ethernet Controller (PPv2.2)
> +  Marvell CN913X Ethernet Controller (PPv2.3)
> +

properties go first.

> +patternProperties:
> +

no need for blank line.

> +  '^interrupt': true

This is not a pattern..

> +  '^#.*-cells$': true

??? Nope. Please start from scratch either from recent similar bindings
or from example-schema.

> +
> +  '^eth[0-9a-f]*(@.*)?$':
> +    type: object
> +    properties:
> +
> +      interrupts:
> +        minItems: 1
> +        maxItems: 10
> +        description: interrupt(s) for the port
> +
> +      interrupt-names:
> +        minItems: 1
> +        maxItems: 10
> +
> +        items:
> +          oneOf:
> +            - pattern: "^hif[0-8]$"
> +            - pattern: "^tx-cpu[0-3]$"
> +              deprecated: true
> +            - const: link
> +            - const: rx-shared
> +              deprecated: true

List hast to be specific.

> +
> +        description: >
> +          if more than a single interrupt for is given, must be the
> +          name associated to the interrupts listed. Valid names are:
> +          "hifX", with X in [0..8], and "link". The names "tx-cpu0",
> +          "tx-cpu1", "tx-cpu2", "tx-cpu3" and "rx-shared" are supported
> +          for backward compatibility but shouldn't be used for new
> +          additions.
> +
> +      port-id:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: ID of the port from the MAC point of view.
> +
> +      phy-mode:
> +        $ref: "ethernet-controller.yaml#/properties/phy-mode"
> +
> +      marvell,loopback:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description: port is loopback mode.
> +
> +      phy:
> +        $ref: /schemas/types.yaml#/definitions/phandle
> +        description: >
> +          a phandle to a phy node defining the PHY address
> +          (as the reg property, a single integer).
> +
> +    required:
> +      - interrupts
> +      - port-id
> +      - phy-mode
> +
> +properties:
> +
> +  dma-coherent: true
> +
> +  compatible:

This goes first.

> +    enum:
> +      - marvell,armada-375-pp2
> +      - marvell,armada-7k-pp2
> +
> +  reg:
> +    minItems: 3
> +    maxItems: 4
> +
> +  marvell,system-controller:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: a phandle to the system controller.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +allOf:
> +

No need for blank line.

> +  - $ref: ethernet-controller.yaml#
> +
> +  - if:
> +      not:
> +        patternProperties:
> +          '^eth[0-9a-f]*(@.*)?$':
> +            properties:
> +              interrupts:
> +                maxItems: 1
> +
> +    then:
> +      patternProperties:
> +        '^eth[0-9a-f]*(@.*)?$':
> +          required:
> +            - interrupt-names

Skip this.

> +
> +  - if:
> +      properties:
> +        compatible:
> +          const: marvell,armada-375-pp2
> +
> +    then:
> +      properties:
> +

Skip the blank lines after each new block.

> +        clocks:
> +          items:
> +            - description: main controller clock
> +            - description: GOP clock
> +
> +        clock-names:
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            enum:
> +              - pp_clk
> +              - gop_clk
> +
> +        reg:
> +          description: |
> +            For "marvell,armada-375-pp2", must contain the following register sets:
> +              - common controller registers
> +              - LMS registers
> +              - one register area per Ethernet port
> +
> +    else:
> +
> +      patternProperties:
> +        '^eth[0-9a-f]*(@.*)?$':
> +          properties:
> +            gop-port-id:
> +              $ref: /schemas/types.yaml#/definitions/uint32
> +              description: >
> +                only for marvell,armada-7k-pp2, ID of the port from the
> +                GOP (Group Of Ports) point of view. This ID is used to index the
> +                per-port registers in the second register area.
> +
> +          required:
> +            - gop-port-id
> +
> +      properties:
> +
> +        clocks:
> +          items:
> +            - description: main controller clock
> +            - description: GOP clock
> +            - description: MG clock
> +            - description: MG Core clock
> +            - description: AXI clock

Why clocks appear only here? All devices require clocks, so this should
be in top level.

> +
> +        clock-names:
> +          minItems: 5
> +          maxItems: 5
> +          items:
> +            enum:
> +              - gop_clk
> +              - pp_clk
> +              - mg_clk
> +              - mg_core_clk
> +              - axi_clk
> +
> +        reg:
> +          description: |
> +            For "marvell,armada-7k-pp2" used by 7K/8K and CN913X, must contain the following register sets:
> +              - packet processor registers
> +              - networking interfaces registers
> +              - CM3 address space used for TX Flow Control

Do not define properties in allOf:if:then, but in top-level place.

Really, start with example-schema. This deviates too much from existing
coding style.

Best regards,
Krzysztof

