Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4884152B232
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 08:24:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230403AbiERGSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 02:18:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230392AbiERGSY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 02:18:24 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF4586C0F4
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 23:18:21 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id c14so1241291pfn.2
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 23:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aUOQzQyLSHKVQOfQejrKZ7S+QnrjtQ35FqsfQcAvXog=;
        b=WsGeYJfMcSxk4MYbJFe2TMgOQzdkL4z8XDiQDGcluOyGJa8J/YvBAc/vaA9YPkaZy3
         tbEaMb73C+bMB87ftWp+y81QWZMLI8Klz3MLGf2PIHC8eGZxz7oBscOqKsyD7orXuPgw
         ZbsuY9CBwSFOg0eLFK/1+b8pvMqeE/bYFjbmfOVg8IjbXna2qU6HjhqTWOhUilE3rAKy
         s7DQ9IbMdMHWEMMDUDkQFmxcQgIgbegid5YgCE0ipMC/HKvV4jICkygWtZ6iArt+K3Cr
         3T00j0lI8AOHUtAejyMLyAvUSb84eq24cNJqrOAPzu6gE4QPCMVO6sfNzV33X+5QcSEW
         dNwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aUOQzQyLSHKVQOfQejrKZ7S+QnrjtQ35FqsfQcAvXog=;
        b=XKQvUtfoVeeSIkMnpaSgAQ7x0YBpsuNlZA1+rWkxyMUCPagKPVMpSfjnL7HwJfu4zD
         2ZcxSNMvpC6CMetsRRldsLR7rxTb6HEobE9SaTHTU2SZ32KtPG03nR+r6fjH6bNyD7rX
         4fm9CNbftfzmsuyfxxm0pktPgNm/478DO9qBksAkQH6vVg/4npwapsGLVGluF6d6gJ1q
         xTLMAeDsMwvQRY0qssEYxIjfuLQKIswLe8xmiDvXL+iMLLr+zocvw7jSFAEzuu+6qAef
         riPIjHcMpH3sH9xQZeCaBXVwgmAir/n22n5DEDLKsTdWBIDL4Epqp85M90PLtyIW8qB7
         XRHQ==
X-Gm-Message-State: AOAM533vro+52X418qMnfn7aXf+6DuSN3naIceWWctP24eC+PNnzH0Gr
        G6TkWQjLN7qIjvvhHsgkI8Q6D4kBr3pySpQtHN04GQ==
X-Google-Smtp-Source: ABdhPJxjiKwSU9gCwVfFIUmqgLbgZrBYEKGKkYGn+85rlJIdtYzmFtJMxk5NUCc7B7OTS4buwPcTZSWZLilb97hrmrQ=
X-Received: by 2002:a63:693:0:b0:3f5:ef4e:d359 with SMTP id
 141-20020a630693000000b003f5ef4ed359mr3001601pgg.540.1652854701461; Tue, 17
 May 2022 23:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220516005412.4844-1-chiawei_wang@aspeedtech.com> <20220516005412.4844-2-chiawei_wang@aspeedtech.com>
In-Reply-To: <20220516005412.4844-2-chiawei_wang@aspeedtech.com>
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
Date:   Wed, 18 May 2022 08:18:10 +0200
Message-ID: <CALNFmy1pM4ZQ0BLDwHykxDCpR=Dv3sVaYq5QLLA_w0L+mzq7iQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: aspeed: Add eSPI controller
To:     Chia-Wei Wang <chiawei_wang@aspeedtech.com>
Cc:     robh+dt@kernel.org, joel@jms.id.au, andrew@aj.id.au,
        jk@codeconstruct.com.au, a.kartashev@yadro.com,
        dphadke@linux.microsoft.com, linux-aspeed@lists.ozlabs.org,
        openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        ryan_chen@aspeedtech.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 16, 2022 at 2:55 AM Chia-Wei Wang
<chiawei_wang@aspeedtech.com> wrote:
>
> Add dt-bindings for Aspeed eSPI controller
>
> Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
> ---
>  .../devicetree/bindings/soc/aspeed/espi.yaml  | 162 ++++++++++++++++++
>  1 file changed, 162 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/aspeed/espi.yaml
>
> diff --git a/Documentation/devicetree/bindings/soc/aspeed/espi.yaml b/Documentation/devicetree/bindings/soc/aspeed/espi.yaml
> new file mode 100644
> index 000000000000..aa91ec8caf6a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/aspeed/espi.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# # Copyright (c) 2021 Aspeed Technology Inc.
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/aspeed/espi.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Aspeed eSPI Controller
> +
> +maintainers:
> +  - Chia-Wei Wang <chiawei_wang@aspeedtech.com>
> +  - Ryan Chen <ryan_chen@aspeedtech.com>
> +
> +description:
> +  Aspeed eSPI controller implements a slave side eSPI endpoint device
> +  supporting the four eSPI channels, namely peripheral, virtual wire,
> +  out-of-band, and flash.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - aspeed,ast2500-espi
> +          - aspeed,ast2600-espi
> +      - const: simple-mfd
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  ranges: true
> +
> +patternProperties:
> +  "^espi-ctrl@[0-9a-f]+$":
> +    type: object
> +
> +    description: Control of the four basic eSPI channels
> +
> +    properties:
> +      compatible:
> +        items:
> +          - enum:
> +              - aspeed,ast2500-espi-ctrl
> +              - aspeed,ast2600-espi-ctrl
> +
> +      interrupts:
> +        maxItems: 1
> +
> +      clocks:
> +        maxItems: 1
> +
> +      perif,memcyc-enable:
> +        type: boolean
> +        description: Enable memory cycle over eSPI peripheral channel
> +
> +      perif,memcyc-src-addr:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: The Host side address to be decoded into the memory cycle over eSPI peripheral channel
> +
> +      perif,memcyc-size:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: The size of the memory region allocated for the memory cycle over eSPI peripheral channel
> +        minimum: 65536
> +
> +      perif,dma-mode:
> +        type: boolean
> +        description: Enable DMA support for eSPI peripheral channel
> +
> +      oob,dma-mode:
> +        type: boolean
> +        description: Enable DMA support for eSPI out-of-band channel
> +
> +      oob,dma-tx-desc-num:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 2
> +        maximum: 1023
> +        description: The number of TX descriptors available for eSPI OOB DMA engine
> +
> +      oob,dma-rx-desc-num:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 2
> +        maximum: 1023
> +        description: The number of RX descriptors available for eSPI OOB DMA engine
> +
> +      flash,dma-mode:
> +        type: boolean
> +        description: Enable DMA support for eSPI flash channel
> +
In my tests using this driver the FIFO mode didn't work, but the DMA
mode worked fine.
IMHO you should always use DMA mode to reduce CPU load and get rid of
this property.

> +      flash,safs-mode:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [ 0, 1, 2 ]
> +        default: 0
> +        description: Slave-Attached-Sharing-Flash mode, 0->Mix, 1->SW, 2->HW
> +
On the AST2500 the HW mode is not supported, is it?

> +    dependencies:
> +      perif,memcyc-src-addr: [ "perif,memcyc-enable" ]
> +      perif,memcyc-size: [ "perif,memcyc-enable" ]
> +      oob,dma-tx-desc-num: [ "oob,dma-mode" ]
> +      oob,dma-rx-desc-num: [ "oob,dma-mode" ]
> +
> +    required:
> +      - compatible
> +      - interrupts
> +      - clocks
> +
> +  "^espi-mmbi@[0-9a-f]+$":
> +    type: object
> +
> +    description: Control of the PCH-BMC data exchange over eSPI peripheral memory cycle
> +
> +    properties:
> +      compatible:
> +        const: aspeed,ast2600-espi-mmbi
> +
> +      interrupts:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - interrupts
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/ast2600-clock.h>
> +
> +    espi: espi@1e6ee000 {
> +        compatible = "aspeed,ast2600-espi", "simple-mfd", "syscon";
> +        reg = <0x1e6ee000 0x1000>;
> +
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0x0 0x1e6ee000 0x1000>;
> +
> +        espi_ctrl: espi-ctrl@0 {
> +            compatible = "aspeed,ast2600-espi-ctrl";
> +            reg = <0x0 0x800>;
> +            interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&syscon ASPEED_CLK_GATE_ESPICLK>;
> +        };
> +
> +        espi_mmbi: espi-mmbi@800 {
> +            compatible = "aspeed,ast2600-espi-mmbi";
> +            reg = <0x800 0x50>;
> +            interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
> +        };
> +    };
> --
> 2.25.1
>

Regards,
Patrick
