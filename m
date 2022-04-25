Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CEB250E85E
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244449AbiDYSkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:40:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235740AbiDYSkB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:40:01 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 424F4201A3
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:36:56 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id el3so14710399edb.11
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ydNiU7IrIaCND48p0/RDJI06lFZyczTfdfRkiVUeW8I=;
        b=l73hcHZEi18QTdp+E3nZcuxNNVI85ZPRamsYOBKhKoF8H6lj21mm3351/qhk/047kT
         Kna9RplHzIIaYCN0Xx1Y76xufwbuYEk7xsymQptDb7eEQKufoznkuvRA3KSo/VaqVDcO
         6B2F12H6OaZmg4fJm8hqxnya6Fnv+HFqQNFHX6PN1r4rxaXmb9risNZNimV2/D9pufGu
         D/CmI/xX5GsZSQRT/4uL76r2GmLYqXKoc1DQo8G45bQfDOtfgbMt74s7ms2P6eNQnghz
         nJGMWFz0zo98iQb3+5Sol5++Ldr2mGyJtz0WfZmBDroUJcV8GJeLAYg91kBrZ8LhKj0z
         c90A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ydNiU7IrIaCND48p0/RDJI06lFZyczTfdfRkiVUeW8I=;
        b=8PxNIuQ7bsDWjeiqTUEk9trvik5DfjdK731ssGyDhQBEwOgRtkD9hIZwaTN8Ae4aHQ
         6cVYc3yE7/hINq1A0jMIIjAEJd87zyrUWjla3EsRzltu5zUMqGNTRn4uVvtNy5zFnC1p
         v1tNMQbWMR5EfISlGilZ4/vQy0h9mBQj/kqrVSxmcgGGVrXTZ0eus+mx36KFkBF6efw2
         SLI3OLt+YrnqGp1IcwK7gGW+9SCqkWkx0iyUHJ5dSoulO2dYPu2e4tv5o3qDHbLJQalA
         EoerdhDLjZ8W5/rFIiff+t/RQ+64zlq49OIxO2qH8LWirlwkk95lH44LZ8+lvHkJ2GMq
         YDHA==
X-Gm-Message-State: AOAM531ip8+LsteIhaSmkCB/fET/mc4s2IBa9JSSzQyivb+pyz/hktdA
        rHlX1+m0iuAXi1EYS24v4LLG7g==
X-Google-Smtp-Source: ABdhPJwi05uX9rNkGQP4GNoyT0fYFCErBALKyIKKTJ3M5Oz/OvBf+2meZYdauaUjaJiQa46PgKKvEw==
X-Received: by 2002:a05:6402:330b:b0:425:eded:7cfe with SMTP id e11-20020a056402330b00b00425eded7cfemr5100589eda.357.1650911814789;
        Mon, 25 Apr 2022 11:36:54 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jo11-20020a170906f6cb00b006f3955761c4sm1416631ejb.158.2022.04.25.11.36.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 11:36:54 -0700 (PDT)
Message-ID: <658851ed-33fd-8e2b-7db7-ef1ca9e31c33@linaro.org>
Date:   Mon, 25 Apr 2022 20:36:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: interrupt-controller: fsl,ls-extirq:
 convert to YAML
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, linuxppc-dev@lists.ozlabs.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220425140214.32448-1-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425140214.32448-1-michael@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 16:02, Michael Walle wrote:
> Convert the fsl,ls-extirq binding to the new YAML format.
> 

(...)

> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,ls-extirq.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,ls-extirq.yaml
> new file mode 100644
> index 000000000000..39d120ad7549
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,ls-extirq.yaml
> @@ -0,0 +1,88 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/fsl,ls-extirq.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale Layerscape External Interrupt Controller
> +
> +maintainers:
> +  - Shawn Guo <shawnguo@kernel.org>
> +  - Li Yang <leoyang.li@nxp.com>
> +
> +description: |
> +  Some Layerscape SOCs (LS1021A, LS1043A, LS1046A LS1088A, LS208xA,
> +  LX216xA) support inverting the polarity of certain external interrupt
> +  lines.
> +
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#

I have doubts whether this is here applicable. See also Rob's comment:
https://lore.kernel.org/all/YjjJpxLWJ%2FYOe0OX@robh.at.kernel.org/

This device does not have children, so the interrupt-controller schema
should be probably skipped.


> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - fsl,ls1021a-extirq
> +          - fsl,ls1043a-extirq
> +          - fsl,ls1088a-extirq
> +      - items:
> +          - enum:
> +              - fsl,ls1046a-extirq
> +          - const: fsl,ls1043a-extirq
> +      - items:
> +          - enum:
> +              - fsl,ls2080a-extirq
> +              - fsl,lx2160a-extirq
> +          - const: fsl,ls1088a-extirq
> +
> +  '#interrupt-cells':
> +    const: 2
> +
> +  '#address-cells':
> +    const: 0
> +
> +  interrupt-controller: true
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      Specifies the Interrupt Polarity Control Register (INTPCR) in the
> +      SCFG or the External Interrupt Control Register (IRQCR) in the ISC.
> +
> +  interrupt-map:
> +    description: Specifies the mapping from external interrupts to GIC interrupts.
> +
> +  interrupt-map-mask:
> +    items:
> +      - const: 0xffffffff

This looks highly permissive mask and should be instead defined per
variant, for example (quickly looking at DTS):
0x7 for ls1021
0xf for ls1043a and ls1088a

You might need to correct the DTS. Some confirmation from someone with
datasheet would be good.


Best regards,
Krzysztof
