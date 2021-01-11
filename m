Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDBAD2F206A
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 21:10:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390137AbhAKUKQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 15:10:16 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:41572 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404070AbhAKUJE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 15:09:04 -0500
Received: by mail-oi1-f179.google.com with SMTP id 15so624152oix.8
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 12:08:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NQOSC8PaC1kKsvf/PmL9aKJMx+ll+VvCy4f+MBuP6YU=;
        b=tdT4u4Zg/2LpPlwu7lIaWxTKA9CrhEABukH+blPKk9UYs/acd68UG7XWIYzIDaSSZa
         /oG84bv11dwfzacjjIGPqAXQVF+Bf9PVRKeOx1i2OYc6O6jrvRZ/l5CpLNdZ0xMms0fe
         WBq9v73W67bnSd4BdgsWpVX+aBGVBeRtUa1NUl4LyAVQr57wW3R+EehD1/OXtQhye7c/
         RB7NWPlRE3y0UVPBRZ/RT2G/yflvZTyxLkgqtUhzlQM4LlDmE+vp3jtOioBc5l1xVCaX
         U3c0uinSMbVi+hAKGMNusaGXBqfznYbobOTJnIadK3fj2s7Oa7nHFiRX9bcCe8OsRQ3f
         t15Q==
X-Gm-Message-State: AOAM530Zk0ABMOGbBbqysNu/0gnOhRVzcINm+ophLMlztQ7oEMcq0KuM
        OZtsR5TeuYA4ggoDPtRtlg==
X-Google-Smtp-Source: ABdhPJwtEp1qleZAeMJpwHW6TlxIvCt4o9ThpnLaiv1LRJBVFVtVSWE0gkro2j9lbgQI1dou0vVvcQ==
X-Received: by 2002:aca:fd0d:: with SMTP id b13mr314332oii.27.1610395703905;
        Mon, 11 Jan 2021 12:08:23 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t19sm172347otp.36.2021.01.11.12.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 12:08:23 -0800 (PST)
Received: (nullmailer pid 2985245 invoked by uid 1000);
        Mon, 11 Jan 2021 20:08:21 -0000
Date:   Mon, 11 Jan 2021 14:08:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: i3c: Describe Silvaco master binding
Message-ID: <20210111200821.GA2978830@robh.at.kernel.org>
References: <20201228161107.11804-1-miquel.raynal@bootlin.com>
 <20201228161107.11804-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201228161107.11804-3-miquel.raynal@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 28, 2020 at 05:11:05PM +0100, Miquel Raynal wrote:
> Silvaco provide a dual-role I3C master.
> 
> Description is rather simple: it needs a register mapping, three
> clocks and an interrupt.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/i3c/silvaco,i3c-master.yaml      | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml b/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
> new file mode 100644
> index 000000000000..509de48455b0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i3c/silvaco,i3c-master.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Silvaco I3C master
> +
> +maintainers:
> +  - Conor Culhane <conor.culhane@silvaco.com>
> +
> +properties:
> +  compatible:
> +    const: silvaco,i3c-master

Kind of generic. Only 1 version?

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: pclk, the system clock
> +      - description: fast_clk, for the bus
> +      - description: slow_clk, for other events

The names of the clocks go...

> +
> +  clock-names:
> +    minItems: 3
> +    maxItems: 3

here.

> +
> +  resets:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0

This 2 should be defined by a bus binding. Care to convert i3c.txt?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clock-names
> +  - clocks
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false

No, don't you need child nodes?

> +
> +examples:
> +  - |
> +    i3c-master@a0000000 {
> +        compatible = "silvaco,i3c-master";
> +        clocks = <&zynqmp_clk 71>, <&fclk>, <&sclk>;
> +        clock-names = "pclk", "fast_clk", "slow_clk";
> +        interrupt-parent = <&gic>;
> +        interrupts = <0 89 4>;
> +        reg = <0xa0000000 0x1000>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +    };
> -- 
> 2.20.1
> 
