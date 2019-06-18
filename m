Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 148724A43F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 16:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729189AbfFROnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 10:43:51 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:44696 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727105AbfFROnv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 10:43:51 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IEhlcs118446;
        Tue, 18 Jun 2019 09:43:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560869027;
        bh=bPvWDl2Vi9YLEjn+FrKS5fj4iYwTZRUUg0e1CYrL5iY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=E/OoWcdmWePXp/vfcuFUbvEaoqavso7KSdYF1t/V3zWeZDxRhOfTAaoLZLsRTU4s7
         W66S0KAW6rmQ5J+WH7huF/Gd4w986Vy9ZcbwKoTymmV3XaIWqPxrTp32uhsiUyrxeB
         sJouCVymHPng/VGDHGtsSsfea7efhZNle/IKrfbI=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IEhlXe019388
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 18 Jun 2019 09:43:47 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 09:43:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 09:43:47 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IEhjot016738;
        Tue, 18 Jun 2019 09:43:46 -0500
Subject: Re: [PATCH 3/4] arm64: dts: ti: k3-j721e: Add the MCU SRAM node
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20190605163434.23173-1-s-anna@ti.com>
 <20190605163434.23173-4-s-anna@ti.com>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <cfcfe8c9-a6dd-648d-8ce2-b0115b558892@ti.com>
Date:   Tue, 18 Jun 2019 17:43:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605163434.23173-4-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/06/2019 19:34, Suman Anna wrote:
> Add the on-chip SRAM present within the MCU domain as a mmio-sram node.
> The K3 J721E SoCs have 1 MB of such memory. Any specific memory range
> within this RAM needed by a driver/software module ought to be reserved
> using an appropriate child node.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>

Queuing for 5.3, thanks.

-Tero

> ---
>   arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> index b72e033fa159..397ef715e145 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> @@ -44,6 +44,14 @@
>   		pinctrl-single,function-mask = <0xffffffff>;
>   	};
>   
> +	mcu_ram: sram@41c00000 {
> +		compatible = "mmio-sram";
> +		reg = <0x00 0x41c00000 0x00 0x100000>;
> +		ranges = <0x0 0x00 0x41c00000 0x100000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +
>   	wkup_uart0: serial@42300000 {
>   		compatible = "ti,j721e-uart", "ti,am654-uart";
>   		reg = <0x00 0x42300000 0x00 0x100>;
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
