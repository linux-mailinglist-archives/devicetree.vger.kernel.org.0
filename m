Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 333025FBB8C
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 21:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiJKTuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 15:50:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbiJKTuO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 15:50:14 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57B1F7286F
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 12:50:12 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id f22so4989878qto.3
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 12:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EOgw9McyN4wBcrcTn/HK7y9+xspiN02elC5wKkWVEUY=;
        b=hf0lUM5dUGuQsbRA/lN+Gm2FbwkDaoyyl87xR22mBJTljuiGuo8ajBD7lw6dlRc780
         LdFQ8KzqKwa9zRpQ8a1Sfzai/SppbDhEgO6V+NbWPqHn6k4nX0eXtXlvXOCm3eXx9FV1
         IFFVkHYZM/uW4w0tKVjqk/2VYAKWeveyffuroBqaFM5Q7YWbvr8kgD+ohbN5zrGEWbk0
         dmkINW97D4dXN5CQAX07m1yL04z0GqIy5PYxRGmc74sYTc9cYljpVl3J2+VUjLe8uRZ8
         zsrhYvLAr4JtbVmB5SZrK/Os2a6vgJweKzwQN0mRQmvgt7M0NC3oKVpwB3ggV0vxQWmg
         PDSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EOgw9McyN4wBcrcTn/HK7y9+xspiN02elC5wKkWVEUY=;
        b=a87+MQtcKxKqzaASTl6eg+b02NsxbLrFFoT7uJqsZUqx5vJckJCkepJSM9cccP/svx
         DHfVGMIEWf4q3DjgaLtYwqr+4+2Pf7eH5OC6MTUydhn33ihrZ9YiQipRwi9y2Sb0jHhq
         epXMdl9x4JeewKXx0c6PjDhX/lSNyYbcOxzLP+Sze0h6bfANlXXo4PtXqFpIWrmzMVqR
         XKdTIsxpdMQ3WRRQkhbGHS10eKABafnzlJXiD/ZjqFWLEW9OzdIj7TFwxXF38HI3AnUj
         9/F0zG98BjiFhBxxmm/jD6Hq4i4+Rfxwzcg1rtO1+JnJs7/Sw7UWKpgs0mU2s6XwT3Xq
         sH1w==
X-Gm-Message-State: ACrzQf3lc1w785a4Yg0vzEEMuq3NpgrpO51LC2mI9aqfI0pCQ9t7eUsY
        cHsdfm6OWJGtH/Xy7xoBFfqVGA==
X-Google-Smtp-Source: AMsMyM5PfZKu5/80bpQCHkjfVZ4qJ193MGQUnc1nDe93RzDCMM+Kfv61h+QXKkh8YQfwn4IdsbDXZQ==
X-Received: by 2002:a05:622a:288:b0:35c:fe52:2e5 with SMTP id z8-20020a05622a028800b0035cfe5202e5mr20249391qtw.59.1665517810295;
        Tue, 11 Oct 2022 12:50:10 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id ge27-20020a05622a5c9b00b00342b7e4241fsm11273997qtb.77.2022.10.11.12.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 12:50:09 -0700 (PDT)
Message-ID: <ad015bc9-a6d2-491d-463a-42a6a0afbf75@linaro.org>
Date:   Tue, 11 Oct 2022 15:47:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v3 1/3] dt-bindings: net: marvell,pp2: convert to
 json-schema
Content-Language: en-US
To:     =?UTF-8?Q?Micha=c5=82_Grzelak?= <mig@semihalf.com>,
        devicetree@vger.kernel.org
Cc:     mw@semihalf.com, linux@armlinux.org.uk, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        upstream@semihalf.com
References: <20221011190613.13008-1-mig@semihalf.com>
 <20221011190613.13008-2-mig@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221011190613.13008-2-mig@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/2022 15:06, Michał Grzelak wrote:
> Convert the marvell,pp2 bindings from text to proper schema.
> 
> Move 'marvell,system-controller' and 'dma-coherent' properties from
> port up to the controller node, to match what is actually done in DT.

You need to also mention other changes done during conversion -
requiring subnodes to be named "(ethernet-)?ports", deprecating port-id.

> 
> Signed-off-by: Michał Grzelak <mig@semihalf.com>
> ---
>  .../devicetree/bindings/net/marvell,pp2.yaml  | 286 ++++++++++++++++++
>  .../devicetree/bindings/net/marvell-pp2.txt   | 141 ---------
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 287 insertions(+), 142 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/marvell,pp2.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/marvell-pp2.txt
> 
> diff --git a/Documentation/devicetree/bindings/net/marvell,pp2.yaml b/Documentation/devicetree/bindings/net/marvell,pp2.yaml
> new file mode 100644
> index 000000000000..24c6aeb46814
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/marvell,pp2.yaml
> @@ -0,0 +1,286 @@
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
> +properties:
> +  compatible:
> +    enum:
> +      - marvell,armada-375-pp2
> +      - marvell,armada-7k-pp22
> +
> +  reg:
> +    minItems: 3
> +    maxItems: 4
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2
> +    items:
> +      - description: main controller clock
> +      - description: GOP clock
> +      - description: MG clock
> +      - description: MG Core clock
> +      - description: AXI clock
> +
> +  clock-names:
> +    minItems: 2
> +    items:
> +      - const: pp_clk
> +      - const: gop_clk
> +      - const: mg_clk
> +      - const: mg_core_clk
> +      - const: axi_clk
> +
> +  dma-coherent: true
> +
> +  marvell,system-controller:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: a phandle to the system controller.
> +
> +patternProperties:
> +  '^(ethernet-)?port@[0-9]+$':
> +    type: object
> +    description: subnode for each ethernet port.
> +
> +    properties:
> +      interrupts:
> +        minItems: 1
> +        maxItems: 10
> +        description: interrupt(s) for the port
> +
> +      interrupt-names:
> +        minItems: 1
> +        items:
> +          - const: hif0
> +          - const: hif1
> +          - const: hif2
> +          - const: hif3
> +          - const: hif4
> +          - const: hif5
> +          - const: hif6
> +          - const: hif7
> +          - const: hif8
> +          - const: link
> +
> +        description: >
> +          if more than a single interrupt for is given, must be the
> +          name associated to the interrupts listed. Valid names are:
> +          "hifX", with X in [0..8], and "link". The names "tx-cpu0",
> +          "tx-cpu1", "tx-cpu2", "tx-cpu3" and "rx-shared" are supported
> +          for backward compatibility but shouldn't be used for new
> +          additions.
> +
> +      reg:
> +        description: ID of the port from the MAC point of view.
> +
> +      port-id:
> +        $ref: /schemas/types.yaml#/definitions/uint32

        deprecated: true

> +        description: >
> +          ID of the port from the MAC point of view.
> +          Legacy binding for backward compatibility.
> +
> +      phy:
> +        $ref: /schemas/types.yaml#/definitions/phandle
> +        description: >
> +          a phandle to a phy node defining the PHY address
> +          (as the reg property, a single integer).
> +
> +      phy-mode:
> +        $ref: ethernet-controller.yaml#/properties/phy-mode
> +
> +      marvell,loopback:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description: port is loopback mode.
> +
> +      gop-port-id:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: >
> +          only for marvell,armada-7k-pp22, ID of the port from the
> +          GOP (Group Of Ports) point of view. This ID is used to index the
> +          per-port registers in the second register area.
> +
> +    required:
> +      - interrupts
> +      - port-id
> +      - phy-mode
> +      - reg

Keep the same order of items here as in list of properties

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +allOf:
> +  - $ref: ethernet-controller.yaml#

Hmm, are you sure this applies to top-level properties, not to
ethernet-port subnodes? Your ports have phy-mode and phy - just like
ethernet-controller. If I understand correctly, your Armada Ethernet
Controller actually consists of multiple ethernet controllers?

If so, this should be moved to proper place inside patternProperties.
Maybe the subnodes should also be renamed from ports to just "ethernet"
(as ethernet-controller.yaml expects), but other schemas do not follow
this convention,

> +  - if:
> +      properties:
> +        compatible:
> +          const: marvell,armada-7k-pp22


Best regards,
Krzysztof

