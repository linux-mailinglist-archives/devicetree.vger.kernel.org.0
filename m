Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE179326D1F
	for <lists+devicetree@lfdr.de>; Sat, 27 Feb 2021 14:22:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbhB0NVe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Feb 2021 08:21:34 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:41166 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbhB0NVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Feb 2021 08:21:30 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11RDJo9W033424;
        Sat, 27 Feb 2021 07:19:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614431990;
        bh=wJOcGz8PxCtDHZTUuSaEBsV673YdEJzFXKAAw+Z1+Ow=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=y2laMulv1WWOvWMHuNYL5IAkznEzACiSkqawZanIueOO5ml/cheQRqHuw8bT0wjN3
         zjzG5jVgT4gkLgf7YA3lDh8PKhYSuIotIwBc2xab/bI+dJy6ErJvs1zq0Lljtj/IYg
         nLPZYTHVX13SzzpEL9+gJ7eGJsscpRufZAwh39+M=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11RDJoe5128802
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 27 Feb 2021 07:19:50 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sat, 27
 Feb 2021 07:19:49 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sat, 27 Feb 2021 07:19:50 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11RDJnxr115607;
        Sat, 27 Feb 2021 07:19:49 -0600
Date:   Sat, 27 Feb 2021 07:19:49 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Dave Gerlach <d-gerlach@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: ti: Add bindings for AM642 SoC
Message-ID: <20210227131949.54zyz4ick4sjjlif@borax>
References: <20210226144257.5470-1-d-gerlach@ti.com>
 <20210226144257.5470-2-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210226144257.5470-2-d-gerlach@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08:42-20210226, Dave Gerlach wrote:
> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
> providing advanced system integration to enable applications such as
> Motor Drives, PLC, Remote IO and IoT Gateways.
> 
> Some highlights of this SoC are:
> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
>   MCUs, and a single Cortex-M4F.
> * Two Gigabit Industrial Communication Subsystems (ICSSG).
> * Integrated Ethernet switch supporting up to a total of two external
>   ports.
> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
>   controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
>   peripherals.
> * Centralized System Controller for Security, Power, and Resource
>   Management (DMSC).
> 
> See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
> for further details: https://www.ti.com/lit/pdf/spruim2
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> index c6e1c1e63e43..393f94a64f8d 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -33,6 +33,12 @@ properties:
>          items:
>            - const: ti,j7200
>  
> +      - description: K3 AM642 SoC
> +        items:
> +          - enum:
> +              - ti,am642-evm
> +          - const: ti,am642
> +
>  additionalProperties: true
>  
>  ...
> -- 
> 2.28.0
> 

Just documenting for lore:
https://lore.kernel.org/linux-arm-kernel/20210209023418.GA2564097@robh.at.kernel.org/
is where we got the ack for the patch.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D)/Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
