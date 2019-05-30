Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F5972FA82
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 12:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726198AbfE3KtP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 06:49:15 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:39832 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726450AbfE3KtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 06:49:15 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4UAn3m4001170;
        Thu, 30 May 2019 05:49:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559213343;
        bh=zESXW5EtamOTtmBA+ydMjmOz1arrUTtIScAj+pTVAvY=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=w/1B8ZPv8eUL4pzsFwc/Ym7ocpk6KhqZkAPEeSExs7SR2ELfTnzSQfDjugiS2CByb
         JJpbSId1jQ8grgdjZq1IMkUhbGaI3jdhMb5wpkC94MaVloLbHQeQbP2VJlMWi7AqeP
         Ho+d82yOAHcy0FCl1zPy80uNLp9BN3LB1zwXlw4Y=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4UAn3Zi108225
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 30 May 2019 05:49:03 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 05:49:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 05:49:03 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4UAn3x0078277;
        Thu, 30 May 2019 05:49:03 -0500
Date:   Thu, 30 May 2019 05:49:03 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Roger Quadros <rogerq@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
Message-ID: <20190530104903.ldcmkunjnk7a5y3c@akan>
References: <20190529211344.18014-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20190529211344.18014-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:13-20190529, Suman Anna wrote:
> From: Roger Quadros <rogerq@ti.com>
> 
> Add the MSCM RAM address space to the ranges property of the cbass_main
> interconnect node so that the addresses can be translated properly.
> 
> This fixes the probe failure in the sram driver for the MSMC RAM node.
> 
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> 
> The following error message is seen without this:
> [    0.480261] sram interconnect@100000:sram@70000000: found no memory resource
> [    0.487497] sram: probe of interconnect@100000:sram@70000000 failed with error -22
> 
> regards
> Suman
> 
>  arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> index 50f4be2047a9..68b3f954f1d1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> @@ -68,6 +68,7 @@
>  			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
>  			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
>  			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /* MSMC SRAM */
>  			 /* MCUSS Range */
>  			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
>  			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
> -- 
> 2.21.0
> 

Arrgh.. Nice catch. Thanks. We should consider pulling this in as part
of early rc fixes please.

Acked-by: Nishanth Menon <nm@ti.com>

-- 
Regards,
Nishanth Menon
