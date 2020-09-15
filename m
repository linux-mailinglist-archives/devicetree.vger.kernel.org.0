Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B09626B2B2
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 00:51:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727460AbgIOWvt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 18:51:49 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:39944 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727437AbgIOPmb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 11:42:31 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08FFWKpC003801;
        Tue, 15 Sep 2020 10:32:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600183940;
        bh=bkPDtLRUX+WuLwfy0rJQaDu4UuSOeknQxZCqeWsf4Ow=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=OHDM/MBb9BbuD2q4zqPBy9zb0aX+d3B3tFL5CN7LyPA/mqxzw1Z0RkZCXQVRDIGCq
         dlC+rzcA/rLCmJvhI+NinRyAKHJ3s6/YIWZLOIyVYBXZJjS/Hi8nkI5mXJ5ev7nX9N
         UEpXNkI312mwLdvGXTymLwF6WJm6FrJrmly/PLeQ=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08FFWKgr037363
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Sep 2020 10:32:20 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 15
 Sep 2020 10:31:17 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 15 Sep 2020 10:31:17 -0500
Received: from [10.250.66.210] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FFVGqs062574;
        Tue, 15 Sep 2020 10:31:17 -0500
Subject: Re: [PATCH v4 2/5] dt-bindings: arm: ti: Convert K3 board/soc
 bindings to DT schema
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-3-lokeshvutla@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <04ca72b9-f6e6-c34e-8c90-09f86ad107b7@ti.com>
Date:   Tue, 15 Sep 2020 10:31:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914162231.2535-3-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/14/20 11:22 AM, Lokesh Vutla wrote:
> Convert TI K3 Board/SoC bindings to DT schema format.
> 
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  .../devicetree/bindings/arm/ti/k3.txt         | 26 ----------------
>  .../devicetree/bindings/arm/ti/k3.yaml        | 31 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 32 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/ti/k3.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/ti/k3.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.txt b/Documentation/devicetree/bindings/arm/ti/k3.txt
> deleted file mode 100644
> index 333e7256126a..000000000000
> --- a/Documentation/devicetree/bindings/arm/ti/k3.txt
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -Texas Instruments K3 Multicore SoC architecture device tree bindings
> ---------------------------------------------------------------------
> -
> -Platforms based on Texas Instruments K3 Multicore SoC architecture
> -shall follow the following scheme:
> -
> -SoCs
> -----
> -
> -Each device tree root node must specify which exact SoC in K3 Multicore SoC
> -architecture it uses, using one of the following compatible values:
> -
> -- AM654
> -  compatible = "ti,am654";
> -
> -- J721E
> -  compatible = "ti,j721e";
> -
> -Boards
> -------
> -
> -In addition, each device tree root node must specify which one or more
> -of the following board-specific compatible values:
> -
> -- AM654 EVM
> -  compatible = "ti,am654-evm", "ti,am654";
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> new file mode 100644
> index 000000000000..c5e3e4aeda8e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/ti/k3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments K3 Multicore SoC architecture device tree bindings
> +
> +maintainers:
> +  - Nishanth Menon <nm@ti.com>
> +
> +description: |
> +  Platforms based on Texas Instruments K3 Multicore SoC architecture
> +  shall have the following properties.
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +
> +      - description: K3 AM654 SoC
> +        items:
> +          - enum:
> +              - ti,am654-evm

I am guessing the enum is for adding other vendors compatibles when they get
added in the future. Otherwise, const would have sufficed. So, looks ok.

Reviewed-by: Suman Anna <s-anna@ti.com>

regards
Suman

> +          - const: ti,am654
> +
> +      - description: K3 J721E SoC
> +        items:
> +          - const: ti,j721e
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e4647c84c987..076fae9aa75b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2636,7 +2636,7 @@ M:	Tero Kristo <t-kristo@ti.com>
>  M:	Nishanth Menon <nm@ti.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  S:	Supported
> -F:	Documentation/devicetree/bindings/arm/ti/k3.txt
> +F:	Documentation/devicetree/bindings/arm/ti/k3.yaml
>  F:	arch/arm64/boot/dts/ti/Makefile
>  F:	arch/arm64/boot/dts/ti/k3-*
>  F:	include/dt-bindings/pinctrl/k3.h
> 

