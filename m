Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12A1B629C7F
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 15:46:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229937AbiKOOqN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 09:46:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229836AbiKOOqM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 09:46:12 -0500
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CA31CDA
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 06:46:10 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AFEk4i7062759;
        Tue, 15 Nov 2022 08:46:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1668523564;
        bh=sgd24pY+Zf/ISsab2OJmHyeBcnvLZbITB0EFlk6yz2o=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=OvSHyxK4edto2Sym8237DJLeVMfrK3k7auZzSlkj5mgtX8M+ylJtJy77yyVAf/8Rh
         5nJrHQaQmdOBnDfUSQqItDdZOL2s5py3XMN2vvtdNgiFKsqyGzDRq9WsxrgUoFzlzm
         iz4kegxC7vuZi+BkKjrPyTYGZyUrsP3ZQKgonZcQ=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AFEk4sQ075629
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Nov 2022 08:46:04 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 15
 Nov 2022 08:46:04 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 15 Nov 2022 08:46:04 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AFEk4pL030795;
        Tue, 15 Nov 2022 08:46:04 -0600
Date:   Tue, 15 Nov 2022 08:46:04 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Tony Lindgren <tony@atomide.com>
CC:     Vignesh Raghavendra <vigneshr@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Keerthy <j-keerthy@ti.com>,
        Georgi Vlaev <g-vlaev@ti.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: ti: k3-am62: Add general purpose
 timers for am62
Message-ID: <20221115144604.qjtor4wsetqmxnlh@hatching>
References: <20221107163533.48777-1-tony@atomide.com>
 <20221107163533.48777-4-tony@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221107163533.48777-4-tony@atomide.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18:35-20221107, Tony Lindgren wrote:
> ---
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 97 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi  | 45 +++++++++++
>  2 files changed, 142 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -192,6 +192,103 @@ main_pmx0: pinctrl@f4000 {
	[...]
> +
> +	main_timer7: timer@2470000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2470000 0x00 0x400>;
> +		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 43 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 43 2>;
> +		assigned-clock-parents = <&k3_clks 43 3>;
> +		power-domains = <&k3_pds 43 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +	};
> +
> +
^^ Looks like an extra EoL crept in here.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
