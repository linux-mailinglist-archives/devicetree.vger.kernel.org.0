Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5609F3CDB7F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 17:24:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237399AbhGSOnU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 10:43:20 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:41714 "EHLO
        mail-io1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244166AbhGSOh5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 10:37:57 -0400
Received: by mail-io1-f41.google.com with SMTP id z9so20309739iob.8
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 08:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=nAwrA31jr0mUTRtEyvZEacYyQ/cR88jLDc6Za64U2TM=;
        b=G3fv8sLNmKSODI9RIa1lPslq0BHEIaZv3EooWyjtze9ymkxlgZ+eOsM6xnr/HGORJ3
         IroRDdX5V3pGWhsW/8DWqWJOiGKrDxM4ejmyOvhUKux4OiybxC8F6UuqoojV76mWeok/
         KBsmz9qUvqe136BeRwJ+1vXTThbesF45jjpfal5mI+hXsX/cftR2kPAROom32i4RV4Yx
         q7q0BDDAvWxJIFXyZ9Kp+A/BrcrqacCv0smAnoSR9Usj0ctpwlh7uA3viX75ABkiq87C
         YzYUiQrXmWZDWH3BjeB523LKLfD//X57uInuFy84TGuYWPtmOCcRKfxYyohDkEImKerM
         uVog==
X-Gm-Message-State: AOAM531z1NiCdZEgdE5c7D75C99C/WceEw+FbMdwgZLly5sMCcuUAdB6
        VChVuIuL2LO1SNILSkYapg==
X-Google-Smtp-Source: ABdhPJy6MaIli8IlxPG+YjlCX+GHZju6x+FShKW3BGaeIWbXf33pyd6a12WjTGIDytvxYC+sCLTpMg==
X-Received: by 2002:a05:6638:3452:: with SMTP id q18mr20038616jav.111.1626707916156;
        Mon, 19 Jul 2021 08:18:36 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id l9sm2259239iln.12.2021.07.19.08.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 08:18:35 -0700 (PDT)
Received: (nullmailer pid 1952187 invoked by uid 1000);
        Mon, 19 Jul 2021 15:18:33 -0000
Date:   Mon, 19 Jul 2021 09:18:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] bus: ixp4xx: Add DT bindings for the IXP4xx
 expansion bus
Message-ID: <20210719151833.GA1908766@robh.at.kernel.org>
References: <20210717001638.1292554-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210717001638.1292554-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 17, 2021 at 02:16:37AM +0200, Linus Walleij wrote:
> This adds device tree bindings for the IXP4xx expansion bus controller.
> 
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  ...intel,ixp4xx-expansion-bus-controller.yaml | 151 ++++++++++++++++++
>  1 file changed, 151 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
> new file mode 100644
> index 000000000000..0875b653c35c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
> @@ -0,0 +1,151 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/intel,ixp4xx-expansion-bus-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intel IXP4xx Expansion Bus Controller
> +
> +description: |
> +  The IXP4xx expansion bus controller handles access to devices on the
> +  memory-mapped expansion bus on the Intel IXP4xx family of system on chips,
> +  including IXP42x, IXP43x, IXP45x and IXP46x.
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +properties:
> +  $nodename:
> +    pattern: '^bus@[0-9a-f]+$'
> +
> +  compatible:
> +    enum:
> +      - intel,ixp42x-expansion-bus-controller
> +      - intel,ixp43x-expansion-bus-controller
> +      - intel,ixp45x-expansion-bus-controller
> +      - intel,ixp46x-expansion-bus-controller
> +
> +  reg:
> +    description: Control registers for the expansion bus, these are not
> +      inside the memory range handled by the expansion bus.
> +    maxItems: 1
> +
> +  "#address-cells":
> +    description: |
> +      The first cell is the chip select numer.
> +      The second cell is the address offset within the bank.
> +    const: 2
> +
> +  "#size-cells":
> +    const: 1
> +
> +  ranges: true
> +  dma-ranges: true
> +
> +patternProperties:
> +  "^.*@[0-7],[0-9a-f]+$":
> +    description: Devices attached to chip selects are represented as
> +      subnodes.
> +    type: object
> +
> +    properties:
> +      intel,ixp4xx-eb-t1:
> +        description: Address timing, extend address phase with n cycles.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        maximum: 3
> +
> +      intel,ixp4xx-eb-t2:
> +        description: Setup chip select timing, extend setup phase with n cycles.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        maximum: 3
> +
> +      intel,ixp4xx-eb-t3:
> +        description: Strobe timing, extend strobe phase with n cycles.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        maximum: 15
> +
> +      intel,ixp4xx-eb-t4:
> +        description: Hold timing, extend hold phase with n cycles.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        maximum: 3
> +
> +      intel,ixp4xx-eb-t5:
> +        description: Recovery timing, extend recovery phase with n cycles.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        maximum: 15
> +
> +      intel,ixp4xx-eb-cycle-type:
> +        description: The type of cycles to use on the expansion bus for this
> +          chip select. 0 = Intel cycles, 1 = Motorola cycles, 2 = HPI cycles.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [0, 1, 2]
> +
> +      intel,ixp4xx-eb-byte-access-on-halfword:
> +        description: Allow byte read access on half word devices.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      intel,ixp4xx-eb-hpi-hrdy-pol-high:
> +        description: Set HPI HRDY polarity to active high when using HPI.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      intel,ixp4xx-eb-mux-address-and-data:
> +        description: Multiplex address and data on the data bus.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      intel,ixp4xx-eb-ahb-split-transfers:
> +        description: Enable AHB split transfers.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      intel,ixp4xx-eb-write-enable:
> +        description: Enable write cycles.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +      intel,ixp4xx-eb-byte-access:
> +        description: Expansion bus uses only 8 bits. The default is to use
> +          16 bits.
> +        $ref: /schemas/types.yaml#/definitions/flag
> +
> +    unevaluatedProperties: false

This will cause failures when implemented. The problem is this won't 
allow any other child node properties as this schema and the device 
schema are evaluated independently. The only way I see to solve this is 
the child node schemas have to include some 'bus properties' schema 
which includes all possible bus controller properties. There's been a 
recent patch set doing this for SPI. At least here, I think the number 
of different child devices on parallel expansion buses are limited.

So spliting this to 2 schema files would be the first step. Minimally, 
just drop unevaluatedProperties.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +  - dma-ranges
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    bus@50000000 {
> +        compatible = "intel,ixp42x-expansion-bus-controller";
> +        reg = <0xc4000000 0x28>;
> +        #address-cells = <2>;
> +        #size-cells = <1>;
> +        ranges = <0 0x0 0x50000000 0x01000000>,
> +                 <1 0x0 0x51000000 0x01000000>;
> +        dma-ranges = <0 0x0 0x50000000 0x01000000>,
> +                     <1 0x0 0x51000000 0x01000000>;
> +        flash@0,0 {
> +            compatible = "intel,ixp4xx-flash", "cfi-flash";
> +            bank-width = <2>;
> +            reg = <0 0x00000000 0x1000000>;
> +            intel,ixp4xx-eb-t3 = <3>;
> +            intel,ixp4xx-eb-byte-access-on-halfword;
> +            intel,ixp4xx-eb-write-enable;
> +        };
> +        serial@1,0 {
> +            compatible = "exar,xr16l2551", "ns8250";
> +            reg = <1 0x00000000 0x10>;
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
> +            clock-frequency = <1843200>;
> +            intel,ixp4xx-eb-t3 = <3>;
> +            intel,ixp4xx-eb-cycle-type = <1>;
> +            intel,ixp4xx-eb-write-enable;
> +            intel,ixp4xx-eb-byte-access;
> +        };
> +    };
> -- 
> 2.31.1
> 
> 
