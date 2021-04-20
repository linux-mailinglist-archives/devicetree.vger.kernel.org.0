Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12F82365FC4
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 20:50:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233381AbhDTSvU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 14:51:20 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:36504 "EHLO
        mail-oi1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233092AbhDTSvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 14:51:19 -0400
Received: by mail-oi1-f178.google.com with SMTP id v6so12143122oiv.3
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 11:50:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Yq05HJjvXFWUCB70l0hIrexD734+DkLVVdC1qR6VUTw=;
        b=tC0wZpDUH/qz2wBUv+ezrMsgs/R8WfwAxVpPGUmtl3qEPXxTORkNQhmG1c1yAaQOp9
         nbBFnyj0xI+6ON4W9qt5YQhz2eN+FPvihjoj+U1TLBNzkJ0W6uyz3zWwGZ8dFoyvr203
         0vpNcK0ZZGxBzBsHoNc3wtvqVgPA3zitlC9sXFUvUl4bjumwLbqIrrLMvtKt2PhPpb6M
         ae7pHvTQatcicq2cwYVLGjVfYLSSZ9x6MWq/sL5dD5u2VH1HKvxzZIxB+Ui91DXYm/Si
         1oeHScSTaxvRTcroqcCYwpawAW778zvkzOY6u8Tu3S4nltjJ5q7yi3O4perZsmmpRIyf
         YqJA==
X-Gm-Message-State: AOAM533GSwOOoFKnf4u4vWIZrvv7EdhEbMbdqThyWPApzQqLLKwlM6MC
        hgtfqUlPhuKjqXJyFxRRtw==
X-Google-Smtp-Source: ABdhPJxajGFz41NXUP8PH5Rz+4MCTQNuveFG9LtojTOGp8DtsmRHbl5++ibLnTHBXaLTT2I4DbxpuQ==
X-Received: by 2002:a05:6808:13d0:: with SMTP id d16mr4171391oiw.169.1618944645965;
        Tue, 20 Apr 2021 11:50:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id q13sm3639357ool.7.2021.04.20.11.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 11:50:44 -0700 (PDT)
Received: (nullmailer pid 3624157 invoked by uid 1000);
        Tue, 20 Apr 2021 18:50:43 -0000
Date:   Tue, 20 Apr 2021 13:50:43 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] dt-bindings: mtd: brcm,brcmnand: convert to the
 json-schema
Message-ID: <20210420185043.GA3597594@robh.at.kernel.org>
References: <20210416123339.14205-1-zajec5@gmail.com>
 <20210416195432.24595-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210416195432.24595-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 16, 2021 at 09:54:32PM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files.
> 
> Changes that require mentioning:
> 1. Property "clock" was renamed to "clocks"
> 2. Duplicated properties (defined in nand-controller.yaml) were dropped
> 3. Compatible "brcm,nand-bcm63168" was added
> 
> Examples changes:
> 1. Nodes "nand" were renamed to "nand-controller"
> 2. Nodes "nandcs" were renamed to "nand"
> 3. Dropped partitions as they were using old syntax and are well
>    documented elsewhere anyway
> 
> This rewritten binding validates cleanly using the "dt_binding_check".
> Some Linux stored DTS files will require updating to make "dtbs_check"
> happy.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Drop example partitions that were using deprecated syntax-thanks Rob
> ---
>  .../devicetree/bindings/mtd/brcm,brcmnand.txt | 186 ------------
>  .../bindings/mtd/brcm,brcmnand.yaml           | 265 ++++++++++++++++++
>  2 files changed, 265 insertions(+), 186 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt
>  create mode 100644 Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml


> diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> new file mode 100644
> index 000000000000..c0f1e7747e23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> @@ -0,0 +1,265 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/brcm,brcmnand.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom STB NAND Controller
> +
> +maintainers:
> +  - Brian Norris <computersforpeace@gmail.com>
> +  - Kamal Dasu <kdasu.kdev@gmail.com>
> +
> +description: |
> +  The Broadcom Set-Top Box NAND controller supports low-level access to raw NAND
> +  flash chips. It has a memory-mapped register interface for both control
> +  registers and for its data input/output buffer. On some SoCs, this controller
> +  is paired with a custom DMA engine (inventively named "Flash DMA") which
> +  supports basic PROGRAM and READ functions, among other features.
> +
> +  This controller was originally designed for STB SoCs (BCM7xxx) but is now
> +  available on a variety of Broadcom SoCs, including some BCM3xxx, BCM63xx, and
> +  iProc/Cygnus. Its history includes several similar (but not fully register
> +  compatible) versions.
> +
> +  -- Additional SoC-specific NAND controller properties --
> +
> +  The NAND controller is integrated differently on the variety of SoCs on which
> +  it is found. Part of this integration involves providing status and enable
> +  bits with which to control the 8 exposed NAND interrupts, as well as hardware
> +  for configuring the endianness of the data bus. On some SoCs, these features
> +  are handled via standard, modular components (e.g., their interrupts look like
> +  a normal IRQ chip), but on others, they are controlled in unique and
> +  interesting ways, sometimes with registers that lump multiple NAND-related
> +  functions together. The former case can be described simply by the standard
> +  interrupts properties in the main controller node. But for the latter
> +  exceptional cases, we define additional 'compatible' properties and associated
> +  register resources within the NAND controller node above.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - brcm,brcmnand-v2.1
> +              - brcm,brcmnand-v2.2
> +              - brcm,brcmnand-v4.0
> +              - brcm,brcmnand-v5.0
> +              - brcm,brcmnand-v6.0
> +              - brcm,brcmnand-v6.1
> +              - brcm,brcmnand-v6.2
> +              - brcm,brcmnand-v7.0
> +              - brcm,brcmnand-v7.1
> +              - brcm,brcmnand-v7.2
> +              - brcm,brcmnand-v7.3
> +          - const: brcm,brcmnand
> +      - description: SoC-specific NAND controller
> +        items:
> +          - enum:
> +              - brcm,nand-bcm63138
> +              - brcm,nand-iproc
> +          - enum:
> +              - brcm,brcmnand-v2.1
> +              - brcm,brcmnand-v2.2
> +              - brcm,brcmnand-v4.0
> +              - brcm,brcmnand-v5.0
> +              - brcm,brcmnand-v6.0
> +              - brcm,brcmnand-v6.1
> +              - brcm,brcmnand-v6.2
> +              - brcm,brcmnand-v7.0
> +              - brcm,brcmnand-v7.1
> +              - brcm,brcmnand-v7.2
> +              - brcm,brcmnand-v7.3

How can a specific SoC have all these different versions?

> +          - const: brcm,brcmnand
> +      - description: BCM6368 SoC-specific NAND controller
> +        items:
> +          - enum:
> +              - brcm,nand-bcm63168
> +          - const: brcm,nand-bcm6368
> +          - enum:
> +              - brcm,brcmnand-v2.1
> +              - brcm,brcmnand-v2.2
> +              - brcm,brcmnand-v4.0
> +              - brcm,brcmnand-v5.0
> +              - brcm,brcmnand-v6.0
> +              - brcm,brcmnand-v6.1
> +              - brcm,brcmnand-v6.2
> +              - brcm,brcmnand-v7.0
> +              - brcm,brcmnand-v7.1
> +              - brcm,brcmnand-v7.2
> +              - brcm,brcmnand-v7.3
> +          - const: brcm,brcmnand
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 6
> +
> +  reg-names:
> +    minItems: 1
> +    maxItems: 6
> +    items:
> +      - const: nand
> +      - enum: [ flash-dma, flash-edu, nand-cache, nand-int-base, iproc-idm, iproc-ext ]
> +      - enum: [ flash-dma, flash-edu, nand-cache, nand-int-base, iproc-idm, iproc-ext ]
> +      - enum: [ flash-dma, flash-edu, nand-cache, nand-int-base, iproc-idm, iproc-ext ]
> +      - enum: [ flash-dma, flash-edu, nand-cache, nand-int-base, iproc-idm, iproc-ext ]
> +      - enum: [ flash-dma, flash-edu, nand-cache, nand-int-base, iproc-idm, iproc-ext ]

How many actual combinations do you need to support? A reasonable number 
can be listed out under a 'oneOf'. 

Given you're already explicit for 3 cases below, I think I'd just do:

items:
  enum: [ nand, flash-dma, flash-edu, nand-cache, nand-int-base, iproc-idm, iproc-ext ]

(Without the '-', 'items' is a schema rather than list and is applied to 
all entries.)

> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 3
> +    items:
> +      - description: NAND CTLRDY interrupt
> +      - description: FLASH_DMA_DONE if flash DMA is available
> +      - description: FLASH_EDU_DONE if EDU is available
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 3
> +    items:
> +      - const: nand_ctlrdy
> +      - const: flash_dma_done
> +      - const: flash_edu_done
> +
> +  clocks:
> +    maxItems: 1
> +    description: reference to the clock for the NAND controller
> +
> +  clock-names:
> +    const: nand
> +
> +  brcm,nand-has-wp:
> +    description: >
> +      Some versions of this IP include a write-protect
> +      (WP) control bit. It is always available on >=
> +      v7.0. Use this property to describe the rare
> +      earlier versions of this core that include WP
> +    type: boolean
> +
> +patternProperties:
> +  "^nand@[a-f0-9]$":
> +    type: object
> +    properties:
> +      compatible:
> +        const: brcm,nandcs
> +
> +      nand-ecc-step-size:
> +        enum: [ 512, 1024 ]
> +
> +      brcm,nand-oob-sector-size:
> +        description: |
> +          integer, to denote the spare area sector size
> +          expected for the ECC layout in use. This size, in
> +          addition to the strength and step-size,
> +          determines how the hardware BCH engine will lay
> +          out the parity bytes it stores on the flash.
> +          This property can be automatically determined by
> +          the flash geometry (particularly the NAND page
> +          and OOB size) in many cases, but when booting
> +          from NAND, the boot controller has only a limited
> +          number of available options for its default ECC
> +          layout.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +
> +allOf:
> +  - $ref: nand-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: brcm,nand-bcm63138
> +    then:
> +      properties:
> +        reg-names:
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            - const: nand
> +            - const: nand-int-base
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: brcm,nand-bcm6368
> +    then:
> +      properties:
> +        reg-names:
> +          minItems: 2
> +          maxItems: 3
> +          items:
> +            - const: nand
> +            - const: nand-int-base
> +            - const: nand-cache
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: brcm,nand-iproc
> +    then:
> +      properties:
> +        reg-names:
> +          minItems: 2
> +          maxItems: 3
> +          items:
> +            - const: nand
> +            - const: iproc-idm
> +            - const: iproc-ext
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - reg
> +  - reg-names
> +  - interrupts
> +
> +examples:
> +  - |
> +    nand-controller@f0442800 {
> +            compatible = "brcm,brcmnand-v7.0", "brcm,brcmnand";
> +            reg = <0xf0442800 0x600>,
> +                  <0xf0443000 0x100>;
> +            reg-names = "nand", "flash-dma";
> +            interrupt-parent = <&hif_intr2_intc>;
> +            interrupts = <24>, <4>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            nand@1 {
> +                    compatible = "brcm,nandcs";
> +                    reg = <1>; // Chip select 1
> +                    nand-on-flash-bbt;
> +                    nand-ecc-strength = <12>;
> +                    nand-ecc-step-size = <512>;
> +
> +                    #address-cells = <1>;
> +                    #size-cells = <1>;
> +            };
> +    };
> +  - |
> +    nand-controller@10000200 {
> +            compatible = "brcm,nand-bcm63168", "brcm,nand-bcm6368",
> +                         "brcm,brcmnand-v4.0", "brcm,brcmnand";
> +            reg = <0x10000200 0x180>,
> +                  <0x100000b0 0x10>,
> +                  <0x10000600 0x200>;
> +            reg-names = "nand", "nand-int-base", "nand-cache";
> +            interrupt-parent = <&periph_intc>;
> +            interrupts = <50>;
> +            clocks = <&periph_clk 20>;
> +            clock-names = "nand";
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            nand@0 {
> +                    compatible = "brcm,nandcs";
> +                    reg = <0>;
> +                    nand-on-flash-bbt;
> +                    nand-ecc-strength = <1>;
> +                    nand-ecc-step-size = <512>;
> +
> +                    #address-cells = <1>;
> +                    #size-cells = <1>;
> +            };
> +    };
> -- 
> 2.26.2
> 
