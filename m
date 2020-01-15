Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 016BE13B748
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 02:57:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728879AbgAOB5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 20:57:09 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:37560 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728834AbgAOB5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 20:57:09 -0500
Received: by mail-ot1-f68.google.com with SMTP id k14so14723937otn.4
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 17:57:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XGLcLKcTFWSB66QXGtgKLA+04IUnUM9PoGpdYQjMx20=;
        b=nHx92OBZmjSsDH+kDDlZBxhytw4yMyCHMtTMZz9fLcDQfes1syU/HKftuDlIro07gX
         iElD/2niwSVFQIPl7SkPDizFqhmXc1zG6z3k1xuesZAuk0yqMdUd2K9264QVL3PzWtBs
         bOgJZppA5nGqNKEtPodbcZ0eQCtzsGf7GbXVrKsX8BePjfGXHn7RNy69rhNYteOop/Uk
         aikxbif+EzVfDdL1CkZkFJ9wASl0PXqX/cB+Hm94IF5eudqWB5d6+WC90i0vl4JoCLO2
         47l8negXs8KsMiZORwsg+H8OQ10mrN13gpbo3IGhyM+ki1y0fHq/Or1Zs/WH2rRR7Owg
         B4IA==
X-Gm-Message-State: APjAAAU0r75DRHVWlvyEAap7kTIbcDC7HdAUt3EHvDoKdf201tZcasvn
        hp90QtlCgbz9pW3F2MeCHjKALZw=
X-Google-Smtp-Source: APXvYqwgPhw9LbG8mEDb4uU2j2mIB+rRtFXt9VmGJuZ/FLWak7pdnsKpmxYLS9j2W2VcHn+yNsAIAA==
X-Received: by 2002:a05:6830:18d4:: with SMTP id v20mr1071591ote.29.1579053427967;
        Tue, 14 Jan 2020 17:57:07 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w12sm6003509otk.75.2020.01.14.17.57.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 17:57:07 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2209ae
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 19:57:06 -0600
Date:   Tue, 14 Jan 2020 19:57:06 -0600
From:   Rob Herring <robh@kernel.org>
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        mark.rutland@arm.com, heiko@sntech.de,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 01/10] dt-bindings: mtd: add rockchip nand
 controller bindings
Message-ID: <20200115015706.GA30647@bogus>
References: <20200108205338.11369-1-jbx6244@gmail.com>
 <20200108205338.11369-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108205338.11369-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 08, 2020 at 09:53:29PM +0100, Johan Jonker wrote:
> Add the Rockchip NAND controller bindings.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/mtd/rockchip,nandc.yaml    | 78 ++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml
> new file mode 100644
> index 000000000..573d1a580
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/rockchip,nandc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip NAND Controller Device Tree Bindings
> +
> +allOf:
> +  - $ref: "nand-controller.yaml"

Should end with a '#'.

> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,nandc-v6
> +      - rockchip,nandc-v9

Use SoC specific compatibles, not version numbers.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    oneOf:
> +      - items:
> +        - const: hclk_nandc
> +      - items:
> +        - const: clk_nandc
> +        - const: hclk_nandc

Can't you put hclk_nandc first so it's always index 0.

> +
> +patternProperties:
> +  "^nand@[a-f0-9]+$":
> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 3
> +
> +      nand-is-boot-medium: true
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3188-cru-common.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    nandc: nand-controller@10500000 {
> +      compatible = "rockchip,nandc-v6";
> +      reg = <0x10500000 0x4000>;
> +      interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru HCLK_NANDC0>;
> +      clock-names = "hclk_nandc";
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      nand@0 {
> +        reg = <0>;
> +        nand-is-boot-medium;
> +      };
> +    };
> +
> +...
> -- 
> 2.11.0
> 
