Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C42AD3A4955
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 21:13:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230186AbhFKTPy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 15:15:54 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:37058 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbhFKTPy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 15:15:54 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15BJDr6H089757;
        Fri, 11 Jun 2021 14:13:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623438833;
        bh=n5uKaoSxPaspnSicn7twOuACaaaN0fp5UEu91nhELcQ=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=ounKSXGmtqvaJVmA3GepYdsymGlPvHcHHiPoRqJfz7cK8cX2qIvZwZrCSoOZGeEDy
         GYI4q0pTXsbplmgpRjc/J8lVRO7DkUOxg7Z6kbtDJyOJEXqDN1yd15M4eYzkOba6H/
         GM7InDnV8WO0uLBvrbOfQuxKG6mcHomWYxbuEqpw=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15BJDrqr113832
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 11 Jun 2021 14:13:53 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 11
 Jun 2021 14:13:53 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 11 Jun 2021 14:13:53 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15BJDrPv090223;
        Fri, 11 Jun 2021 14:13:53 -0500
Date:   Fri, 11 Jun 2021 14:13:53 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 4/4] arm64: dts: ti: k3-am642-evm/sk: Reserve some
 on-chip SRAM for R5Fs
Message-ID: <20210611191353.qn5lgasho2rujyof@situated>
References: <20210528144718.25132-1-s-anna@ti.com>
 <20210528144718.25132-5-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210528144718.25132-5-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09:47-20210528, Suman Anna wrote:
> Reserve some portions of the MAIN domain on-chip SRAM for use by various
> R5F cores on AM642 EVM and SK boards. A bank (256 KB) each is reserved
> from the on-chip SRAM for each R5F core. This is done through specific
> child SRAM nodes in the board dts file.
> 
> The memory regions are also assigned to each R5F remoteproc node using
> the sram property. The reserved SRAM banks are as follows for each core:
>   Main R5FSS0 Core0 : OCSRAM1
>   Main R5FSS0 Core1 : OCSRAM2
>   Main R5FSS1 Core0 : OCSRAM3
>   Main R5FSS1 Core1 : OCSRAM4
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Ming Wei <mwei@ti.com>
> Signed-off-by: Nishanth Menon <nm@ti.com>
> Link: https://lore.kernel.org/r/20210528144718.25132-5-s-anna@ti.com
> ---
>  arch/arm64/boot/dts/ti/k3-am642-evm.dts | 22 ++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am642-sk.dts  | 22 ++++++++++++++++++++++
>  2 files changed, 44 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> index 4d0b3f86525e..083df636d7ff 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> @@ -184,28 +184,50 @@ cpsw3g_phy3: ethernet-phy@3 {
>  	};
>  };
>  
> +&oc_sram {
> +	main_r5fss0_core0_sram: r5f-sram@40000 {
> +		reg = <0x40000 0x40000>;
> +	};
> +
> +	main_r5fss0_core1_sram: r5f-sram@80000 {
> +		reg = <0x80000 0x40000>;
> +	};
> +
> +	main_r5fss1_core0_sram: r5f-sram@c0000 {
> +		reg = <0xc0000 0x40000>;
> +	};
> +
> +	main_r5fss1_core1_sram: r5f-sram@100000 {
> +		reg = <0x100000 0x40000>;
> +	};
> +};

We need to relook at these addresses -> please see the series from
Vignesh[1] and Ashwath[2].

0x0 <-> 0x1a0000 is free
0x1a0000 <-> 0x1bc000 -> TF-A
0x1bc000 <-> 0x1c0000 -> Free
0x1c0000 <-> 0x200000 -> Seems to be sysfw?


[1] https://lore.kernel.org/linux-devicetree/20210609140604.9490-1-vigneshr@ti.com/
[2] https://lore.kernel.org/linux-devicetree/162343800075.7434.10921347563461214925.b4-ty@ti.com/

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
