Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C3E22853A1
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 23:08:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727345AbgJFVIR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 17:08:17 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:40722 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727301AbgJFVIQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 17:08:16 -0400
Received: by mail-ot1-f66.google.com with SMTP id l4so169743ota.7
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 14:08:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MFkpJf+fHxm7Xh39fAUXdt0h+nkngYwnILe7okbe9JM=;
        b=HgxFyXRvNz3cLDx4ZNsROrvjbExaYnYhzaOHqNffvdrzeIHCtPlTlB2Iaydq1YRxn5
         H/ginLSlGZqirKV/iiRBjro2HZWiEvQekLxOuSKbog8hKRA4avketmeUe6RrztA3cheb
         Y+nFRczaCo0N6zr2u74XnxNIZudhyp5i23nArv8gmSNt9GihKcC/1Ws6z+q/GOviZr67
         P7/x52ritU3NCeYDsaEjaTsSDdwXPYOcUk9/zUCfnYJtoC1t4iF0fH/bCXoLkeGvPU3W
         3eNIVu4OcJLZLEV5irkYZB23uSJGyms8pUVZ73CCv2CAWmfovv6VYzntCTTUtxGHGDzX
         7KKg==
X-Gm-Message-State: AOAM532npd9CcLnaZfe+ZF5m2KfkUlk+6eYCSzmXJGVTJItFkAFe9D82
        ArH0r+Iq1eh1+fmoA0+CCA==
X-Google-Smtp-Source: ABdhPJysR2iUD/B1fVvTOFDqshZTJUyexnWdxSQwf94SernpsvtJuFZUFLXZZE5xQUVh5TWhJl/WpA==
X-Received: by 2002:a9d:1e86:: with SMTP id n6mr4252953otn.94.1602018495902;
        Tue, 06 Oct 2020 14:08:15 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e30sm1700274otf.49.2020.10.06.14.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 14:08:14 -0700 (PDT)
Received: (nullmailer pid 2843268 invoked by uid 1000);
        Tue, 06 Oct 2020 21:08:14 -0000
Date:   Tue, 6 Oct 2020 16:08:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Cc:     devicetree@vger.kernel.org, bob.j.paauwe@intel.com,
        edmund.j.dea@intel.com, sam@ravnborg.org, narmstrong@baylibre.com
Subject: Re: [PATCH v1] dt-bindings: display: Add support for Intel KeemBay
 Display
Message-ID: <20201006210813.GA2829155@bogus>
References: <1601691662-12954-1-git-send-email-anitha.chrisanthus@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1601691662-12954-1-git-send-email-anitha.chrisanthus@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 02, 2020 at 07:21:02PM -0700, Anitha Chrisanthus wrote:
> This patch adds bindings for Intel KeemBay Display
> 
> Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> ---
>  .../bindings/display/intel,kmb_display.yaml        | 106 +++++++++++++++++++++
>  1 file changed, 106 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/intel,kmb_display.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/intel,kmb_display.yaml b/Documentation/devicetree/bindings/display/intel,kmb_display.yaml
> new file mode 100644
> index 0000000..65835cb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/intel,kmb_display.yaml
> @@ -0,0 +1,106 @@
> +# SPDX-License-Identifier: GPL-2.0-only

check checkpatch.pl

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/intel,kmb_display.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Devicetree bindings for Intel Keem Bay display controller
> +
> +maintainers:
> +  - Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> +  - Edmond J Dea <edmund.j.dea@intel.com>
> +
> +properties:
> +  compatible:
> +    const: intel,kmb_display

'keembay' was used elsewhere. Please be consistent.

Don't use '_' either.

> +
> +  reg:
> +    maxItems: 3

Can drop, implied.

> +    items:
> +      - description: Lcd registers range
> +      - description: Mipi registers range
> +      - description: Msscam registers range

Is this really 1 h/w block? Don't really seem like it given addresses 
aren't adjacent, separate clocks, and MIPI blocks are often licensed IP.

> +
> +  reg-names:
> +    items:
> +      - const: lcd_regs
> +      - const: mipi_regs
> +      - const: msscam_regs

'_regs' is redundant.

> +
> +  clocks:
> +    items:
> +      - description: LCD controller clock
> +      - description: Mipi DSI clock
> +      - description: Mipi DSI econfig clock
> +      - description: Mipi DSI config clock
> +      - description: System clock or pll0 clock
> +
> +  clock-names:
> +    items:
> +      - const: clk_lcd
> +      - const: clk_mipi
> +      - const: clk_mipi_ecfg
> +      - const: clk_mipi_cfg
> +      - const: clk_pll0
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-names:
> +    items:
> +      - const: irq_lcd

You don't really need *-names when there's only 1 entry.

> +
> +  encoder-slave:
> +    description: bridge node entry for mipi to hdmi converter

No, this is what 'port' is for.

> +
> +  port:
> +    type: object
> +    description: >
> +          Port node with one endpoint connected to mipi to hdmi converter node.
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - encoder-slave
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #define GIC_SPI

There's a header for this.

> +    #define MOVISOC_KMB_MSS_AUX_LCD
> +    #define MOVISOC_KMB_MSS_AUX_MIPI_TX0
> +    #define MOVISOC_KMB_MSS_AUX_MIPI_ECFG
> +    #define MOVISOC_KMB_MSS_AUX_MIPI_CFG
> +    #define MOVISOC_KMB_A53_PLL_0_OUT_0
> +    display: display@20900000 {

Drop unused labels.

> +      compatible = "intel,kmb_display";
> +      reg = <0x20930000 0x3000>,
> +            <0x20900000 0x4000>,
> +            <0x20910000 0x30>;
> +      reg-names = "lcd_regs", "mipi_regs", "msscam_regs";
> +      interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +      interrupt-names = "irq_lcd";
> +      clocks = <&scmi_clk MOVISOC_KMB_MSS_AUX_LCD>,
> +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_TX0>,
> +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_ECFG>,
> +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_CFG>,
> +               <&scmi_clk MOVISOC_KMB_A53_PLL_0_OUT_0>;
> +      clock-names = "clk_lcd", "clk_mipi", "clk_mipi_ecfg",
> +                    "clk_mipi_cfg", "clk_pll0";
> +
> +      encoder-slave = <&adv7535>;
> +
> +      port {
> +            dsi_output: endpoint {
> +                remote-endpoint = <&adv7535_input>;
> +            };
> +      };
> +    };
> -- 
> 2.7.4
> 
