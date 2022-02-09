Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E97B54AF459
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 15:46:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235190AbiBIOqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 09:46:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbiBIOqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 09:46:16 -0500
X-Greylist: delayed 664 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 09 Feb 2022 06:46:19 PST
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBC02C06157B
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 06:46:19 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 219EZ29U034721;
        Wed, 9 Feb 2022 08:35:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1644417302;
        bh=uG7DcDVY6sgs4N9O81IbjIB2Z2P1ulJ+KGv19bHtqv0=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=g/y7L2v/ap26TtF0sBsToCDijzDOxbCZCcXdV0C7gVeAYQNoEdvgwPW4+udtx0+TA
         Mvt5Z7Bdg/dtJhSTM+KA9+iDCvgT20+uIHQOUc8gq4uFvc7KffigLucxRdKCO4FIC5
         U9eaJzv4WPfOgHhHK7OoHsJJ3JHxYzidEOorz7xI=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 219EZ2eL104351
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 9 Feb 2022 08:35:02 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 9
 Feb 2022 08:35:01 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 9 Feb 2022 08:35:01 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 219EZ1CT113358;
        Wed, 9 Feb 2022 08:35:01 -0600
Date:   Wed, 9 Feb 2022 08:35:01 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>
CC:     Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Jan Kiszka <jan.kiszka@siemens.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65-main: Remove "syscon" nodes
 added for pcieX_mode/pcie_devid
Message-ID: <20220209143501.eibwoenxpuiby3zh@glade>
References: <20220209072702.18544-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220209072702.18544-1-kishon@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:57-20220209, Kishon Vijay Abraham I wrote:
> Remove "syscon" nodes added for pcieX_mode/pcie_devid and have the PCIe
> node point to the parent with an offset argument. This change is as
> discussed in [1].
> 
> commit 7dcf07ac8867 ("PCI: keystone: Use phandle argument from
> "ti,syscon-pcie-id"/"ti,syscon-pcie-mode"") added the corresponding driver
> changes.
> 
> [1] -> http://lore.kernel.org/r/CAL_JsqKiUcO76bo1GoepWM1TusJWoty_BRy2hFSgtEVMqtrvvQ@mail.gmail.com
> 
> Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> Cc: Jan Kiszka <jan.kiszka@siemens.com>

I think Reported-by is due here.


Jan, Matthias: will appreciate any one of your acks/reviews..

> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 27 ++++++------------------
>  1 file changed, 6 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index ce8bb4a61011..ff52e16ff603 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -304,21 +304,6 @@
>  		#size-cells = <1>;
>  		ranges = <0x0 0x0 0x00100000 0x1c000>;
>  
> -		pcie0_mode: pcie-mode@4060 {
> -			compatible = "syscon";
> -			reg = <0x00004060 0x4>;
> -		};
> -
> -		pcie1_mode: pcie-mode@4070 {
> -			compatible = "syscon";
> -			reg = <0x00004070 0x4>;
> -		};
> -
> -		pcie_devid: pcie-devid@210 {
> -			compatible = "syscon";
> -			reg = <0x00000210 0x4>;
> -		};
> -
>  		serdes0_clk: clock@4080 {
>  			compatible = "syscon";
>  			reg = <0x00004080 0x4>;
> @@ -694,8 +679,8 @@
>  		#size-cells = <2>;
>  		ranges = <0x81000000 0 0          0x0 0x10020000 0 0x00010000>,
>  			 <0x82000000 0 0x10030000 0x0 0x10030000 0 0x07FD0000>;
> -		ti,syscon-pcie-id = <&pcie_devid>;
> -		ti,syscon-pcie-mode = <&pcie0_mode>;
> +		ti,syscon-pcie-id = <&scm_conf 0x210>;
> +		ti,syscon-pcie-mode = <&scm_conf 0x4060>;
>  		bus-range = <0x0 0xff>;
>  		num-viewport = <16>;
>  		max-link-speed = <2>;
> @@ -710,7 +695,7 @@
>  		reg =  <0x0 0x5500000 0x0 0x1000>, <0x0 0x5501000 0x0 0x1000>, <0x0 0x10000000 0x0 0x8000000>, <0x0 0x5506000 0x0 0x1000>;
>  		reg-names = "app", "dbics", "addr_space", "atu";
>  		power-domains = <&k3_pds 120 TI_SCI_PD_EXCLUSIVE>;
> -		ti,syscon-pcie-mode = <&pcie0_mode>;
> +		ti,syscon-pcie-mode = <&scm_conf 0x4060>;
>  		num-ib-windows = <16>;
>  		num-ob-windows = <16>;
>  		max-link-speed = <2>;
> @@ -727,8 +712,8 @@
>  		#size-cells = <2>;
>  		ranges = <0x81000000 0 0          0x0   0x18020000 0 0x00010000>,
>  			 <0x82000000 0 0x18030000 0x0   0x18030000 0 0x07FD0000>;
> -		ti,syscon-pcie-id = <&pcie_devid>;
> -		ti,syscon-pcie-mode = <&pcie1_mode>;
> +		ti,syscon-pcie-id = <&scm_conf 0x210>;
> +		ti,syscon-pcie-mode = <&scm_conf 0x4070>;
>  		bus-range = <0x0 0xff>;
>  		num-viewport = <16>;
>  		max-link-speed = <2>;
> @@ -743,7 +728,7 @@
>  		reg =  <0x0 0x5600000 0x0 0x1000>, <0x0 0x5601000 0x0 0x1000>, <0x0 0x18000000 0x0 0x4000000>, <0x0 0x5606000 0x0 0x1000>;
>  		reg-names = "app", "dbics", "addr_space", "atu";
>  		power-domains = <&k3_pds 121 TI_SCI_PD_EXCLUSIVE>;
> -		ti,syscon-pcie-mode = <&pcie1_mode>;
> +		ti,syscon-pcie-mode = <&scm_conf 0x4070>;
>  		num-ib-windows = <16>;
>  		num-ob-windows = <16>;
>  		max-link-speed = <2>;
> -- 
> 2.17.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
