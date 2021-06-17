Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3FA53AA83D
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 02:45:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231530AbhFQArG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 20:47:06 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:54302 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231521AbhFQArF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 20:47:05 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15H0infY117855;
        Wed, 16 Jun 2021 19:44:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623890689;
        bh=GBE0nuKiBXUYhWyfOR7h43cJhXBx+qW8wWGD0dfteKg=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=OkuH4iNF0hpS7sjt6U/+zCoCSp4aST+qA59J8NtEsZXhJXVUzyAvzAaCAX81WBm4/
         78zVywGu4avXpJlj+OAGv4qToZaJOgyg92hlx41bfDN5VXFXZawlUZ8cGKsYMyiHNo
         HQWdB7CymLy+XfHjRdjZPi9WYdZPXx9jqSKnEbHs=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15H0inFn015881
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Jun 2021 19:44:49 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 16
 Jun 2021 19:44:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 16 Jun 2021 19:44:49 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15H0imP3098691;
        Wed, 16 Jun 2021 19:44:48 -0500
Date:   Wed, 16 Jun 2021 19:44:48 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>, Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh@kernel.org>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: Re: [PATCH v2 3/3] arm64: dts: ti: k3-am642-evm/sk: Add DDR carveout
 memory nodes for R5Fs
Message-ID: <20210617004448.aozqtxu5smg57vr5@exterior>
References: <20210615195718.15898-1-s-anna@ti.com>
 <20210615195718.15898-4-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210615195718.15898-4-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14:57-20210615, Suman Anna wrote:
[...]
> 
>  arch/arm64/boot/dts/ti/k3-am642-evm.dts | 62 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am642-sk.dts  | 62 +++++++++++++++++++++++++
>  2 files changed, 124 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> index 2e75cd68f8b7..030712221188 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> @@ -38,6 +38,60 @@ secure_ddr: optee@9e800000 {
>  			alignment = <0x1000>;
>  			no-map;
>  		};
> +
[...]
> +		main_r5fss1_core1_memory_region: r5f-memory@a3100000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa3100000 0x00 0xf00000>;
> +			no-map;
> +		};
arch/arm64/boot/dts/ti/k3-am642-evm.dt.yaml:0:0: /reserved-memory/r5f-dma-memory@a0000000: failed to match any schema with compatible: ['shared-dma-pool']
arch/arm64/boot/dts/ti/k3-am642-evm.dt.yaml:0:0: /reserved-memory/r5f-memory@a0100000: failed to match any schema with compatible: ['shared-dma-pool']
arch/arm64/boot/dts/ti/k3-am642-evm.dt.yaml:0:0: /reserved-memory/r5f-dma-memory@a1000000: failed to match any schema with compatible: ['shared-dma-pool']
arch/arm64/boot/dts/ti/k3-am642-evm.dt.yaml:0:0: /reserved-memory/r5f-memory@a1100000: failed to match any schema with compatible: ['shared-dma-pool']
arch/arm64/boot/dts/ti/k3-am642-evm.dt.yaml:0:0: /reserved-memory/r5f-dma-memory@a2000000: failed to match any schema with compatible: ['shared-dma-pool']
arch/arm64/boot/dts/ti/k3-am642-evm.dt.yaml:0:0: /reserved-memory/r5f-memory@a2100000: failed to match any schema with compatible: ['shared-dma-pool']
arch/arm64/boot/dts/ti/k3-am642-evm.dt.yaml:0:0: /reserved-memory/r5f-dma-memory@a3000000: failed to match any schema with compatible: ['shared-dma-pool']
arch/arm64/boot/dts/ti/k3-am642-evm.dt.yaml:0:0: /reserved-memory/r5f-memory@a3100000: failed to match any schema with compatible: ['shared-dma-pool']

ughh..

Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt is
not converted to yaml.

Rob, Arnd,

I am considering to pick this series up this friday given the scale
of other platforms that are using the same property and since I see
for example commit 0fe0fbc867115659bbd9a0ab107d1fe9bcc432e8 (MIPS)
in next-20210616. Unfortunately [1] does'nt give me much precedence
either in immediate recent history.

Let me know if you think we should wait on this.

[1] https://lore.kernel.org/linux-arm-kernel/?q=shared-dma-pool
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
