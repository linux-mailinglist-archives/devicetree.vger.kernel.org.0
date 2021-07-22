Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C690D3D1C09
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 04:49:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230093AbhGVCJR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 22:09:17 -0400
Received: from mail-il1-f176.google.com ([209.85.166.176]:34693 "EHLO
        mail-il1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbhGVCJR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 22:09:17 -0400
Received: by mail-il1-f176.google.com with SMTP id e13so4132392ilc.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 19:49:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ly5o922j67G1IXq1ypi6OqzfqSjxCsvlYjdGAIxs8gE=;
        b=PeybfyVrbKfIKDDjoxAmVO9ERcvRYzCLhb4oz2iZ9kVgu2Wuy6Q92D5lWVBQ05ixGB
         eStavcGJqLpRxhXg/mpvnxPEV6agTQTd9qjj7yymijiLoUzeGX1ZA3qKr1eRHFN/uRhk
         G74CZtCJAPUpm+IcnyILDx6sIc/ToWm6AZdKD/wpt9Q79GryJnVHYHFY2VlE9P6+qiU4
         EmmsQPcDDqRtwee+KpNWfZGcqBr7qKkg6OFzuPm9uueCW792EE5tz4gIgZvmwd4lNp/3
         58SKv/qidWzYv9LFLbZHOHwRlyxTXW9XrM6itrRAugIYDdpPOHCywzKgiU+Ev5Em8HiK
         iUmw==
X-Gm-Message-State: AOAM531sxwdGUBb9pTApaXGaLmIduqHJ0kPb0IBhvJM9TMvSk1oXeRoL
        S1d0mFG7qbYzLha6nB8xdA==
X-Google-Smtp-Source: ABdhPJzZPP7A44sMHZC1b/h6EGSvvk8YysUZYSFuumu2XDsOuwoDJy2MLMZjGzpo3UvhdoVyLzateA==
X-Received: by 2002:a92:cc85:: with SMTP id x5mr24785728ilo.266.1626922191804;
        Wed, 21 Jul 2021 19:49:51 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n10sm4422616ile.82.2021.07.21.19.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 19:49:51 -0700 (PDT)
Received: (nullmailer pid 3201410 invoked by uid 1000);
        Thu, 22 Jul 2021 02:49:48 -0000
Date:   Wed, 21 Jul 2021 20:49:48 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com, kernel@pengutronix.de, dongas86@gmail.com,
        shawnguo@kernel.org
Subject: Re: [PATCH 5/7] dt-bindings: soc: imx: add missing anatop binding
Message-ID: <20210722024948.GA3198597@robh.at.kernel.org>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-6-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210715082536.1882077-6-aisheng.dong@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 15, 2021 at 04:25:34PM +0800, Dong Aisheng wrote:
> Anatop is a system combo module which supports various analog functions
> like PLL, Regulators, LDOs, Sensors and etc.
> This binding doc is generated based on the exist usage in dts
> in order to fix dt schema check failures.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  .../bindings/soc/imx/fsl,anatop.yaml          | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> new file mode 100644
> index 000000000000..f379d960f527
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/imx/fsl,anatop.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale Anatop binding
> +
> +maintainers:
> +  - Dong Aisheng <aisheng.dong@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: fsl,imx6q-anatop
> +          - const: syscon
> +          - const: simple-mfd
> +      - items:
> +          - enum:
> +              - fsl,imx6sl-anatop
> +              - fsl,imx6sll-anatop
> +              - fsl,imx6sx-anatop
> +              - fsl,imx6ul-anatop
> +              - fsl,imx7d-anatop
> +          - const: fsl,imx6q-anatop
> +          - const: syscon
> +          - const: simple-mfd
> +      - items:
> +          - enum:
> +              - fsl,imx8mq-anatop
> +              - fsl,imx8mm-anatop
> +              - fsl,vf610-anatop
> +          - const: syscon
> +      - items:
> +          - enum:
> +              - fsl,imx8mn-anatop
> +              - fsl,imx8mp-anatop
> +          - const: fsl,imx8mm-anatop
> +          - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Temperature Sensor
> +      - description: PMU interrupt 1
> +      - description: PMU interrupt 2
> +    minItems: 1
> +    maxItems: 3

Don't need maxItems.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: true

This should be the case only for common schemas used by other schemas.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    anatop: anatop@20c8000 {

Drop unused labels.

> +        compatible = "fsl,imx6q-anatop", "syscon", "simple-mfd";
> +        reg = <0x020c8000 0x1000>;
> +        interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>,
> +                     <0 54 IRQ_TYPE_LEVEL_HIGH>,
> +                     <0 127 IRQ_TYPE_LEVEL_HIGH>;
> +        };
> -- 
> 2.25.1
> 
> 
