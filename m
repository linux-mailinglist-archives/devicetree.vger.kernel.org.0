Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AF0525D236
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 09:15:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726597AbgIDHPY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 03:15:24 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:48382 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726089AbgIDHPY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 03:15:24 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847FI6r007594;
        Fri, 4 Sep 2020 02:15:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599203719;
        bh=fYTSTgsCB5leqXr7a2iVOfZx6IpHCWAjMu/r08n53Dw=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=N29lnz5UxJfTQVU8s9ICNU2p25GR+aunaywU5/j1dY7/lbQc5oZnnIgRlHfV9bv3P
         pXgjE4Q6FqzLbtPUZXEJj/KyWMkQNQJdw/n8PzFPKkKLlFIvoboPXH/d7I08qUYZMh
         hSr77MAAseOaDlgZ6cvzNwowceZAOkYRLQPV/WBY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847FIeL103690
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 4 Sep 2020 02:15:18 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:15:18 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:15:18 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847FDs4036111;
        Fri, 4 Sep 2020 02:15:15 -0500
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: ti: Convert K3 board/soc
 bindings to DT schema
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <20200827065144.17683-2-lokeshvutla@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <f99bb33b-cc6b-6f86-bf54-bbd0ae1a394b@ti.com>
Date:   Fri, 4 Sep 2020 12:45:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200827065144.17683-2-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 27/08/20 12:21 pm, Lokesh Vutla wrote:
> Convert TI K3 Board/SoC bindings to DT schema format.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Do you have any comments on this patch?

Thanks and regards,
Lokesh

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
> +          - const: ti,am654
> +
> +      - description: K3 J721E SoC
> +        items:
> +          - const: ti,j721e
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3b186ade3597..40d31bb7ecf4 100644
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
