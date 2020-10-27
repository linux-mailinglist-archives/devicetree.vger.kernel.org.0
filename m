Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1404E29AC46
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 13:40:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2900079AbgJ0Mj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 08:39:58 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59706 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1751345AbgJ0Mjw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 08:39:52 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RCdfkK052419;
        Tue, 27 Oct 2020 07:39:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603802381;
        bh=PtOMn3ODVZLqHgKdtEaCrlqHhMSh/fK/vjDL1oav37g=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=tsoS/ZwqjfTC0TmfCZBZ5O35g/bPGW7RqhJdOQRfCXNAkZh69zLzRbCLlx81QqPZW
         FNkqyGPisbtebWkfqn35txmkyR5Wu+oiMTW1CW0q+s0mW4D0aWzq8fFdkhJbwbA0VZ
         tqAEfiYcO/um87PsuLF4FwkoaKq/ydkjkEmPnIrw=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RCdfJG067038
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 07:39:41 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 07:39:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 07:39:41 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RCdfDW097395;
        Tue, 27 Oct 2020 07:39:41 -0500
Date:   Tue, 27 Oct 2020 07:39:41 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 4/4] arm64: dts: ti: am654-base-board: fix clock node name
Message-ID: <20201027123941.tgkqxx4rk56sl5tf@crafty>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-5-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20201027104132.105485-5-tomi.valkeinen@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:41-20201027, Tomi Valkeinen wrote:
> The fixed clock for OV5640 is named 'clock' which is a very generic name
> and easily leads to conflicts. I encountered this with a similarly named
> fixed-clock node in k3-am654-evm-tc358876.dtso, which then overrode the
> OV5640 fixed clock, causing OV5640 not to work when tc358876 overlay had
> been loaded.
> 
> Rename the node to 'fixed-clock-ov5640'.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> index d12dd89f3405..6801dbddeac5 100644
> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> @@ -55,7 +55,7 @@ sw6 {
>  		};
>  	};
>  
> -	clk_ov5640_fixed: clock {
> +	clk_ov5640_fixed: fixed-clock-ov5640 {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
>  		clock-frequency = <24000000>;
> -- 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 

I think you could post this independently as well.

https://github.com/devicetree-org/devicetree-specification/blob/v0.3/source/devicetree-basics.rst#generic-names-recommendation

There is a strong desire to use standard node names and
clock is recommended. even though there are tons of fixed-clock
compatible clocks in the kernel today, as of v5.10-rc1:

$ git grep fixed-clock- arch/arm64/boot/dts/
$ git grep fixed-clock- arch/arm/boot/dts/

As a node name is not used. Do you want to see how other
platforms are trying to resolve similar issues?

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
