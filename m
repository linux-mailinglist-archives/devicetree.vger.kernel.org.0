Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 641B52AFA49
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 22:23:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725996AbgKKVXd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Nov 2020 16:23:33 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:42956 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725933AbgKKVXd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 16:23:33 -0500
Received: by mail-ot1-f66.google.com with SMTP id 30so3517528otx.9
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 13:23:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=y98/cIm96Y+Yf0w1ete8NQ0DxU1DL4uTOXjyWGWILHw=;
        b=sskGiWjx4Dg+g0yS83EWbo3k4x3phaGa/Bi6l5bc1Wf6z0ToO8EYry+x7r16DySwD+
         AOh9rAB2Mff3gszDaeoZv9HWP+Jv93uUyKY2Cpa2GlGE1Wj2JAGZ9vzCS5uwym53gEA4
         jD999kHgNm9E3yFM044b9V7dGYUXuy3ZvZaeW9iq4ri26crLCvo52+zAI91bJL0yFFTp
         QonkKyCs7PGikb8IT8cnCHtw9G58rN4Sh7ydRudNTGE2FEgDibXBTwA7z3t4yTOjPszK
         u+Ej65A866Q3mptrInVb3Brtti5RBsguXAX1NiMC1WC1R29qccD5Dp4nXyT89ZREXpO1
         kxbw==
X-Gm-Message-State: AOAM530Se8RhAE21nrHbYirwHY6p65dSmCn9s9OZtYmbJclKeKhkXW5R
        5rGkCr+ltPRV26BUNUZsnw==
X-Google-Smtp-Source: ABdhPJwk7NWGJOQv/lWa6xUHsqeENlNJ2VbrSJDq+vSxmcdM0FxFBKJlTIJSHtSRSbyhsfDxshXJEw==
X-Received: by 2002:a9d:590e:: with SMTP id t14mr20018931oth.230.1605129812107;
        Wed, 11 Nov 2020 13:23:32 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 2sm665213oir.40.2020.11.11.13.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 13:23:30 -0800 (PST)
Received: (nullmailer pid 2058790 invoked by uid 1000);
        Wed, 11 Nov 2020 21:23:30 -0000
Date:   Wed, 11 Nov 2020 15:23:30 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/2] dt-bindings: reset: document Broadcom's PMC binding
Message-ID: <20201111212330.GA2054669@bogus>
References: <20201109163519.32605-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201109163519.32605-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 09, 2020 at 05:35:18PM +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Broadcom's PMC is Power Management Controller that is used for disabling
> and enabling SoC devices.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../bindings/reset/brcm,bcm-pmc.yaml          | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm-pmc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reset/brcm,bcm-pmc.yaml b/Documentation/devicetree/bindings/reset/brcm,bcm-pmc.yaml
> new file mode 100644
> index 000000000000..2afc2048997f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/brcm,bcm-pmc.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/brcm,bcm-pmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom PMC (Power Management Controller) reset controller
> +
> +description: This document describes the Broadcom's PMC (Power Management
> +  Controller). It supports resetting devices identified by the bus id and device
> +  address.
> +
> +maintainers:
> +  - Rafał Miłecki <rafal@milecki.pl>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,bcm4908-pmc # PMC on BCM4908 and compatible SoCs
> +
> +  reg:
> +    maxItems: 1
> +
> +  syscon-misc:

Needs a vendor prefix

> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the MISC system controller node.
> +
> +  syscon-procmon:

Needs a vendor prefix

> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the PROC MON system controller node.
> +
> +  big-endian:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Flag to use for block working in big endian mode.
> +
> +  "#reset-cells":
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - syscon-misc
> +  - syscon-procmon
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pmc: reset-controller@80200000 {
> +        compatible = "brcm,bcm4908-pmc";
> +        reg = <0x80200000 0x5000>;
> +        syscon-misc = <&misc>;
> +        syscon-procmon = <&procmon>;
> +        #reset-cells = <2>;
> +    };
> +
> +    procmon: syscon@80280000 {
> +        compatible = "brcm,misc", "syscon";

IIRC, not a documented compatible. Nor is it specific enough.

You can just drop these from the example.

> +        reg = <0x80280000 0x1000>;
> +    };
> +
> +    misc: syscon@ff802600 {
> +        compatible = "brcm,misc", "syscon";
> +        reg = <0xff802600 0xe4>;
> +    };
> -- 
> 2.27.0
> 
