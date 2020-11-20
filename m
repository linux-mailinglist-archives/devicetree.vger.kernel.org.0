Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D26F2BB7F3
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 21:59:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729167AbgKTUwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 15:52:53 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:41892 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728060AbgKTUwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Nov 2020 15:52:53 -0500
Received: by mail-oi1-f194.google.com with SMTP id m13so11921094oih.8
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 12:52:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=t4c6d/Yt7xR4VIHjjdABt0P2c1fVQUXpF8BBSro6fGQ=;
        b=qIW/Kff1uvh0hSnFw4FVbb/QsGZyEapUvPqktXO/5tEKC+vW94t3Y2jjVzP2vUGyNt
         waQN6KEjVbLtNNQE/UF+Mqeqx21x05B1CLkG/bV9CGUdo1FpXTAA3o+kOuJRRCPI6Exi
         jMdI+4WyffkDsZarYWIk++ey1zIZBOA7l2S4wgN1dDudpFTvQF1vaNrF5Hj9e9dp9ByH
         b2XeU3iOqajiLS/9zUi+/vO3saT3C10f8p1lvg5j+8l7d55R5TfSiu8qJP1508MXsq1f
         Q63g5C9mc2m5+1Va2CuH2dC6ttva+tg0PbTWcyeVRKg17V9aaiwmgofwSCjNL4a+2KVM
         Ohkw==
X-Gm-Message-State: AOAM531/Ds1bfs4cQa/W8vJmHnP1jljCNLLBECrvSTlZ0ohh2lpvSTms
        mSjWp8UqolKBejokQArXp7v5ioD5OQ==
X-Google-Smtp-Source: ABdhPJxOX6lcwnNmZNL3qHNljOtF1tg+nrK9OZSb1aj+XdwCq/3qvDun1Sr1YyQijOO5VUr8tQNCMA==
X-Received: by 2002:aca:4989:: with SMTP id w131mr7393391oia.82.1605905572337;
        Fri, 20 Nov 2020 12:52:52 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z19sm1926709otm.58.2020.11.20.12.52.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 12:52:51 -0800 (PST)
Received: (nullmailer pid 1721004 invoked by uid 1000);
        Fri, 20 Nov 2020 20:52:50 -0000
Date:   Fri, 20 Nov 2020 14:52:50 -0600
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     jassisinghbrar@gmail.com, aou@eecs.berkeley.edu,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        lewis.hanly@microchip.com, cyril.jean@microchip.com,
        daire.mcnamara@microchip.com, atish.patra@wdc.com,
        anup.patel@wdc.com, david.abdurachmanov@gmail.com
Subject: Re: [PATCH 3/6] dt-bindings: add bindings for polarfire soc mailbox
Message-ID: <20201120205250.GB1716438@robh.at.kernel.org>
References: <20201119170432.18447-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201119170432.18447-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 05:04:32PM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller mailbox on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../mailbox/microchip,mpfs-mailbox.yaml       | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
> new file mode 100644
> index 000000000000..5d6ccaa13dc2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/mailbox/microchip,mpfs-mailbox.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Microchip MPFS mss mailbox controller
> +
> +maintainers:
> +  - Conor Dooley <conor.dooley@microchip.com>
> +
> +properties:
> +  compatible:
> +    const: microchip,polarfire-soc-mailbox # PolarFire

Comment is redundant.

> +
> +  reg:
> +    items:
> +      - description: mailbox data registers
> +      - description: mailbox int registers
> +    maxItems: 2

maxItems is implied by size of 'items'.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  "#mbox-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupt-parent
> +  - interrupts
> +  - "#mbox-cells"
> +
> +unevaluatedProperties: false
> +additionalProperties: false

Only need one and in this case additionalProperties.

> +
> +examples:
> +  - |
> +    mailbox@37020000 {
> +      compatible = "microchip,polarfire-soc-mailbox";
> +      reg = <0x0 0x37020000 0x0 0x1000>, <0x0 0x2000318c 0x0 0x40>;
> +      interrupt-parent = <&L1>;
> +      interrupts = <96>;
> +      #mbox-cells = <1>;
> +    };
> -- 
> 2.17.1
> 
