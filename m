Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E3BA346178
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 16:48:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728239AbfFNOsU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 10:48:20 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:43806 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728219AbfFNOsT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 10:48:19 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EEmE79033033;
        Fri, 14 Jun 2019 09:48:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560523694;
        bh=YY407v4FUUGrWVxCrjpprZqWG+ZFz6K5gsWMS4+ez1c=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=cV3Aamep8bVc3Rp8Vy8uL2oBqZkuEOo3ed31ki5CSTdTy+L+jV1+IsWJ9KY67yoPX
         +aXr4M3DP57tE9GS7xjrJfa1G52IfhVLKWkACaf94MfHTJVJuhs85TmUWTA0otCuN6
         HeFS0vhc6zFDRtqUNPTIhjEqeOhxkureNDZpykU8=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EEmEnp018446
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 Jun 2019 09:48:14 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:48:14 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:48:14 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EEmA55062905;
        Fri, 14 Jun 2019 09:48:11 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-main: Add Main NavSS Interrupt
 controller node
To:     Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Nishanth Menon <nm@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20190531004848.32061-1-s-anna@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <5e8fa7b4-6c44-85dc-0a33-bcf930b6d795@ti.com>
Date:   Fri, 14 Jun 2019 20:17:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531004848.32061-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31/05/19 6:18 AM, Suman Anna wrote:
> Add the Interrupt controller node for the Interrupt Router present within
> the Main NavSS module. This Interrupt Router can route 192 interrupts to
> the GIC_SPI in 3 sets of 64 interrupts each. Note that the last set is
> reserved for the host ID A72_3 for hypervisor usecases, so the node is
> added only with 2 sets for the Linux kernel context (host id A72_2). This
> is specified through the ti,sci-rm-range-girq property.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

> ---
> Hi Tero,
> 
> This patch depends on the J721E series [1] from Nishanth. Patch tested
> using additional patches exercising Mailbox IP.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189
> 
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index d42912044a5d..36c51ff9a898 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -50,6 +50,24 @@
>  		#iommu-cells = <1>;
>  	};
>  
> +	cbass_main_navss: interconnect0 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		main_navss_intr: interrupt-controller1 {
> +			compatible = "ti,sci-intr";
> +			ti,intr-trigger-type = <4>;
> +			interrupt-controller;
> +			interrupt-parent = <&gic500>;
> +			#interrupt-cells = <2>;
> +			ti,sci = <&dmsc>;
> +			ti,sci-dst-id = <14>;
> +			ti,sci-rm-range-girq = <0>, <2>;
> +		};
> +	};
> +
>  	secure_proxy_main: mailbox@32c00000 {
>  		compatible = "ti,am654-secure-proxy";
>  		#mbox-cells = <1>;
> 
