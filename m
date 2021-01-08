Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77F192EEB4E
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 03:34:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726666AbhAHCcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 21:32:10 -0500
Received: from mail-il1-f173.google.com ([209.85.166.173]:43854 "EHLO
        mail-il1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726593AbhAHCcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 21:32:10 -0500
Received: by mail-il1-f173.google.com with SMTP id q5so8829982ilc.10
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 18:31:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GIfcW+WHG8z7SGoqdIufDckI3aByw7oe2X21FXOjtJQ=;
        b=gUbZ+OMkqS7Gyot9YfLN5H/VRWCgTScVGHx7lgCTTDf8A2hTkz6PKPiN/SYV7FVLrd
         0HXkEJyeXBfsGheBkqgnfUhhn22wMl+49pBIQ4B/VutZ9CCuv5YYUYb84RUg9OBtpbzl
         j0R500mUh8B1tjPZmuftsHbANPCWPgpeqq1EUjg0crNy3QUQOeBGG0xk9JyiCNQCUMxA
         LuQ7FL5fETTSPyZyGSWIx1rb6P7DXh4TFeX9SaZvnGJCtIUnhvifumC9ggliMPZeDvPD
         a2UsUE0nZyG0veyyrpz6eiGgfo9w9qVjldIF9H6WNlqc0Ckza8zGHXUfYrywd6uA9RDP
         CyMQ==
X-Gm-Message-State: AOAM531bbgewNSVy+nZd1Acy1BqSSUe6PxjuEs/UEflQ3ZIet+MB8s1p
        xOIXDrz6ya/JfsH1LRWTfg==
X-Google-Smtp-Source: ABdhPJyFcS7+aInokqTq8EtfzmBKUMB1ryb+seTpqDPUc43EMh10DSiYgbqHNjvNanGBoF110kVGRA==
X-Received: by 2002:a92:a1da:: with SMTP id b87mr1818408ill.111.1610073083650;
        Thu, 07 Jan 2021 18:31:23 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id m75sm6155114ill.15.2021.01.07.18.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 18:31:22 -0800 (PST)
Received: (nullmailer pid 1754724 invoked by uid 1000);
        Fri, 08 Jan 2021 02:31:21 -0000
Date:   Thu, 7 Jan 2021 19:31:21 -0700
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     damien.lemoal@wdc.com, jassisinghbrar@gmail.com,
        aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        palmer@dabbelt.com, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, lewis.hanly@microchip.com,
        cyril.jean@microchip.com, daire.mcnamara@microchip.com,
        atish.patra@wdc.com, anup.patel@wdc.com,
        david.abdurachmanov@gmail.com, j.neuschaefer@gmx.net
Subject: Re: [PATCH v3 4/5] dt-bindings: add bindings for polarfire soc
 system controller
Message-ID: <20210108023121.GA1750857@robh.at.kernel.org>
References: <20201223163316.29186-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201223163316.29186-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 23, 2020 at 04:33:16PM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../microchip,mpfs_sys_controller.yaml        | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
> new file mode 100644
> index 000000000000..60fde1925910
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/microchip/microchip,mpfs_sys_controller.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Microchip PolarFire SoC (MPFS) system controller
> +
> +maintainers:
> +  - Conor Dooley <conor.dooley@microchip.com>

'description'?

Perhaps including some info about what this block does and how it is 
accessed.

> +
> +properties:
> +  compatible:
> +    const: microchip,polarfire-soc-sys-controller
> +
> +  mboxes:
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    description: |
> +      phandle and index of the mailbox controller device node.
> +      See: ../mailbox/mailbox.txt for more information.

All this is defined already in the common binding schema, drop.

> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - "mboxes"

Don't need quotes.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscontroller: syscontroller {
> +      compatible = "microchip,polarfire-soc-sys-controller";
> +      mboxes = <&mbox 0>;
> +    };
> -- 
> 2.17.1
> 
