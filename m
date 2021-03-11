Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 784AD337B30
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 18:44:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbhCKRnc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 12:43:32 -0500
Received: from mail-il1-f179.google.com ([209.85.166.179]:46300 "EHLO
        mail-il1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbhCKRnI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 12:43:08 -0500
Received: by mail-il1-f179.google.com with SMTP id i18so19182ilq.13
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 09:43:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yrYLvM9Tk00cK77S7tm4qU2hYr/Evchck4qsfs1uG0Q=;
        b=jh96DgU56lCcgdKq8l8pRzFRLCj76g8uWlXgabc9GDbQZ3AtWRUHFcvTPjP4w6LfUL
         v0EjLuqs8GBenA9t1JY9WpIjAFWHSduWQQ+otmZdfmFt/DjgWtveB5NQY/bCsDo3Tj0s
         NzQqcdqS5ZmIElKdGVQ0XgLz/C0T+Y7WXfh+RUfiUB2vDl2Dx+7FZl80WtAmJkf+S9+g
         PDvEBfOmG08rU3mCZLI2wu/bxryB4GoOKLkm9GxuMw1RmGxFDCY9gBU0YAlmqWY7m2tq
         HkMWcVOF0NMIIwIjo6B5MQj+jmKPQ9f1H1KU8MUZUZ40UnniIvEJemLOaDTcP7NbHZZG
         a9eQ==
X-Gm-Message-State: AOAM532V4d/GPyzBBGs67yRi+RLI/w9CsnJcLasuwnWuYQyqGW3V8J9B
        VMRGtNyeBwxcK524Nn38zQ==
X-Google-Smtp-Source: ABdhPJwcdWOdRO6FAGc5GOVurtNLD92CTCrAhvDr8p59zjYYmNUBBir66nEeHVcZdl8bkA6WEyu+ZQ==
X-Received: by 2002:a05:6e02:1b05:: with SMTP id i5mr5848513ilv.167.1615484587466;
        Thu, 11 Mar 2021 09:43:07 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id j4sm1667885ioa.18.2021.03.11.09.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 09:43:06 -0800 (PST)
Received: (nullmailer pid 936312 invoked by uid 1000);
        Thu, 11 Mar 2021 17:43:05 -0000
Date:   Thu, 11 Mar 2021 10:43:05 -0700
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     damien.lemoal@wdc.com, jassisinghbrar@gmail.com,
        aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        palmer@dabbelt.com, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, j.neuschaefer@gmx.net,
        lewis.hanly@microchip.com, cyril.jean@microchip.com,
        daire.mcnamara@microchip.com, atish.patra@wdc.com,
        anup.patel@wdc.com, david.abdurachmanov@gmail.com
Subject: Re: [PATCH v4 4/5] dt-bindings: add bindings for polarfire soc
 system controller
Message-ID: <20210311174305.GA926017@robh.at.kernel.org>
References: <20210311113456.15686-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210311113456.15686-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 11, 2021 at 11:34:56AM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  ...icrochip,polarfire-soc-sys-controller.yaml | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> new file mode 100644
> index 000000000000..222557f96a13
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/microchip/microchip,polarfire-soc-sys-controller.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Microchip PolarFire SoC (MPFS) MSS (microprocessor subsystem) system controller
> +
> +maintainers:
> +  - Conor Dooley <conor.dooley@microchip.com>
> +
> +description: |
> +  The PolarFire SoC system controller can be accessed as a mailbox device.
> +  This document describes the bindings for that device.
> +
> +
> +properties:
> +
> +  allOf:
> +    - $ref: /schemas/mbox/mbox-consumer.yaml#properties

This defines a DT property 'allOf'. This would need to be at the top 
level with 'properties' dropped. However, you generally don't want to 
include consumer schemas. You need to define 'mboxes' property here 
because you need to define how many and what they are if more than 1.

What does 'can be accessed as a mailbox device' mean? Is there another 
way? Is it a mailbox device (provider)?

> +
> +  compatible:
> +    const: microchip,polarfire-soc-sys-controller
> +
> +required:
> +  - compatible
> +  - mboxes
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
