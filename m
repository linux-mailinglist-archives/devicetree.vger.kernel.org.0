Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7BDB3A13E0
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 14:12:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbhFIMOi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 08:14:38 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:40981 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230307AbhFIMOh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 08:14:37 -0400
Received: from mail-wr1-f72.google.com ([209.85.221.72])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lqx4c-0000WI-4J
        for devicetree@vger.kernel.org; Wed, 09 Jun 2021 12:12:42 +0000
Received: by mail-wr1-f72.google.com with SMTP id q15-20020adfc50f0000b0290111f48b865cso10684750wrf.4
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 05:12:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YiKsApz3Kn55IWmxBblM0+f7lrgP6BHHgzZj0LGtc3w=;
        b=K4sTEZ44HPykwNuTXwuWmsevu4jVRvj1YohwuQaHbWGlhuSzvjzejfdnhFseC8jKdj
         hWtXzwakvMHTOC4DNsBW2JLX/Pw2DzNVPJmCEY6xnrfrstQOzZCt7zzDauS1/cuzZPbi
         e47+puXL+t32hjj8XpwYp+r2/cxxlLiNPu56b36oweZxljHsc1C7pndRcdl3iC7GpeDl
         dup00JcaRuRb8iAcn23bRh+24iUBbwuAypwOhWPmrOyXjCKDdl2AtYqSCA5VPA9fr/lE
         42fmP75YNak26BC6+yTigOpcQ0NJ0EzYb1wEMcqUeCO61pkhZQH0uqgsRjA9G3RwW7Gy
         6AMw==
X-Gm-Message-State: AOAM532zf87hBZuv7hGzOF8Rh6xgK+9GrJxvHTu1mgW1ObFiB9iHTGZz
        7fAqZxhGNiVR0/lRFff910/ivR4nqpFXSQhDopffbi9Fu7/2hqIGgkqgHDm5v6Z068yfhSYLVNu
        6ohRz7J3Qyo+uCIeWFHryox9oujkUd7OraVf47ZE=
X-Received: by 2002:a05:600c:3ba0:: with SMTP id n32mr9527857wms.107.1623240761747;
        Wed, 09 Jun 2021 05:12:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz0euTzMB48q6sD49NwO7dbIsHtvW8un1vfWvC33GDT6eTYVH+LHuyUI/ewSE9x5zE3LT1Eig==
X-Received: by 2002:a05:600c:3ba0:: with SMTP id n32mr9527834wms.107.1623240761587;
        Wed, 09 Jun 2021 05:12:41 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id o26sm10206773wms.27.2021.06.09.05.12.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 05:12:41 -0700 (PDT)
Subject: Re: [PATCH v22 09/18] dt-binding: memory: pl353-smc: Convert to yaml
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Michal Simek <monstr@monstr.eu>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        helmut.grohne@intenta.de, Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>
References: <20210609080112.1753221-1-miquel.raynal@bootlin.com>
 <20210609080112.1753221-10-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <e431d594-05cd-27b8-fcbe-11c310b99cd3@canonical.com>
Date:   Wed, 9 Jun 2021 14:12:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210609080112.1753221-10-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2021 10:01, Miquel Raynal wrote:
> Convert this binding file to yaml schema.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../memory-controllers/arm,pl353-smc.yaml     | 133 ++++++++++++++++++
>  .../bindings/memory-controllers/pl353-smc.txt |  45 ------
>  2 files changed, 133 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml b/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
> new file mode 100644
> index 000000000000..1de6f87d4986
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
> @@ -0,0 +1,133 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/arm,pl353-smc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM PL353 Static Memory Controller (SMC) device-tree bindings
> +
> +maintainers:
> +  - Miquel Raynal <miquel.raynal@bootlin.com>
> +  - Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
> +
> +description:
> +  The PL353 Static Memory Controller is a bus where you can connect two kinds
> +  of memory interfaces, which are NAND and memory mapped interfaces (such as
> +  SRAM or NOR).
> +
> +# We need a select here so we don't match all nodes with 'arm,primecell'
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - arm,pl353-smc-r2p1

That's a const... but also I don't get the need for select.

> +  required:
> +    - compatible
> +
> +properties:
> +  $nodename:
> +    pattern: "^memory-controller@[0-9a-f]+$"
> +
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - arm,pl353-smc-r2p1
> +          - enum:
> +              - arm,primecell

This looks unusual. Basically you change the bindings, because before
they required "arm,pl353-smc-r2p1", "arm,primecell".

Don't you want here items:
 - const: ...
 - const: ...
?

> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 1
> +
> +  reg:
> +    items:
> +      - description: configuration registers for the host and sub-controllers

Just maxItems. Description is obvious.

> +
> +  clocks:
> +    items:
> +      - description: the clock for the memory device bus
> +      - description: the main clock of the controller

Isn't apb_pclk the bus clock (so second item below)?

> +
> +  clock-names:
> +    items:
> +      - const: memclk
> +      - const: apb_pclk


> +
> +  ranges:
> +    minItems: 1
> +    maxItems: 3
> +    description: |
> +      Memory bus areas for interacting with the devices. Reflects
> +      the memory layout with four integer values following:
> +      <cs-number> 0 <offset> <size>
> +    items:
> +      - description: NAND bank 0
> +      - description: NOR/SRAM bank 0
> +      - description: NOR/SRAM bank 1
> +
> +  interrupts: true
> +
> +patternProperties:
> +  ".*@[0-9]+,[0-9]+$":

Match with start ^. I think you cannot have 9 nodes and hex can appear
in address so maybe:
"^.*@[0-3],[a-f0-9]+$":


> +    type: object
> +    description: |
> +      The child device node represents the controller connected to the SMC
> +      bus. The controller can be a NAND controller or a pair of any memory
> +      mapped controllers such as NOR and SRAM controllers.
> +

Best regards,
Krzysztof
