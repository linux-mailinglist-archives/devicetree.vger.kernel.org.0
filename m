Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02BC5261E4A
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 21:50:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730599AbgIHTug (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 15:50:36 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:39544 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729767AbgIHTuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 15:50:32 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088Blnme048889;
        Tue, 8 Sep 2020 06:47:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599565669;
        bh=xX+FQrhk10KqV64wBv6aY20uKJLzrj48xzek9KuUN4w=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=eaD8U5vmuVjZrfl/jyOMuwAAngtPN1DhO71ESeYfKT3p2l7lrxdMjrEnBjkpdyvXV
         BskQn8AZ/Vi0XqJQPVweRAuolU0WE2i3XzpipWxCC/l1Tct6zB6/2LOzHZf/vp7hk0
         7G0+yH/U0VNHdBgQ6wpvK4IyzdC7ncbUN6qohzoQ=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 088BlnMB096650
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 06:47:49 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 06:47:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 06:47:48 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088Blmgf041614;
        Tue, 8 Sep 2020 06:47:48 -0500
Date:   Tue, 8 Sep 2020 06:47:48 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: ti: Add support for J7200 SoC
Message-ID: <20200908114748.zy3dvaprrmcipx75@akan>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <20200827065144.17683-4-lokeshvutla@ti.com>
 <977443e2-45b0-4b5d-006f-4d1f0866c7a1@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <977443e2-45b0-4b5d-006f-4d1f0866c7a1@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:04-20200827, Suman Anna wrote:

will just piggy on this thread..

> > diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
> > new file mode 100644
> > index 000000000000..70c8f7e941fb
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
> > @@ -0,0 +1,199 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Device Tree Source for J7200 SoC Family Main Domain peripherals
> > + *
> > + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
> > + */
> > +
> > +&cbass_main {
> > +	msmc_ram: sram@70000000 {
> > +		compatible = "mmio-sram";
> > +		reg = <0x0 0x70000000 0x0 0x100000>;
> 
> nit, I prefer that we use a consistent style across all nodes. Most of the
> places we are using 0x00 on the first cells of address and size.

yes please. Will be great if you could address this.

> 
[...]

> > +
> > +	main_pmx0: pinmux@11c000 {
> > +		compatible = "pinctrl-single";
> > +		/* Proxy 0 addressing */
> > +		reg = <0x0 0x11c000 0x0 0x2b4>;
> 
> This is the other node that uses a different style compared to all other nodes.
> 
> Otherwise,
> 
> Reviewed-by: Suman Anna <s-anna@ti.com>
> 
> regards
> Suman
> 

[..]
> > diff --git a/arch/arm64/boot/dts/ti/k3-j7200.dtsi b/arch/arm64/boot/dts/ti/k3-j7200.dtsi
> > new file mode 100644
> > index 000000000000..aadf707f25f5
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/ti/k3-j7200.dtsi
> > @@ -0,0 +1,165 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Device Tree Source for J7200 SoC Family
> > + *
> > + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
> > + */
> > +
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/pinctrl/k3.h>
> > +#include <dt-bindings/soc/ti,sci_pm_domain.h>
> > +
> > +/ {
> > +	model = "Texas Instruments K3 J7200 SoC";
> > +	compatible = "ti,j7200";
> > +	interrupt-parent = <&gic500>;
> > +	#address-cells = <2>;
> > +	#size-cells = <2>;
> > +
> > +	aliases {
> > +		serial0 = &wkup_uart0;
> > +		serial1 = &mcu_uart0;
> > +		serial2 = &main_uart0;
> > +		serial3 = &main_uart1;
> > +		serial4 = &main_uart2;
> > +		serial5 = &main_uart3;
> > +		serial6 = &main_uart4;
> > +		serial7 = &main_uart5;
> > +		serial8 = &main_uart6;
> > +		serial9 = &main_uart7;
> > +		serial10 = &main_uart8;
> > +		serial11 = &main_uart9;
> > +	};
> > +
> > +	cpus {
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +		cpu-map {
> > +			cluster0: cluster0 {
> > +				core0 {
> > +					cpu = <&cpu0>;
> > +				};
> > +
> > +				core1 {
> > +					cpu = <&cpu1>;
> > +				};
> > +			};
> > +
> > +		};
> > +
> > +		cpu0: cpu@0 {
> > +			compatible = "arm,cortex-a72";
> > +			reg = <0x000>;
> > +			device_type = "cpu";
> > +			enable-method = "psci";
> > +			i-cache-size = <0xC000>;

minor nitpick comment -> 0xc000 ? I just saw j721e has the same as well..
heck.. I thought I found them all, but looks like I missed.

> > +			i-cache-line-size = <64>;
> > +			i-cache-sets = <256>;
> > +			d-cache-size = <0x8000>;
> > +			d-cache-line-size = <64>;
> > +			d-cache-sets = <128>;
> > +			next-level-cache = <&L2_0>;
> > +		};
> > +
> > +		cpu1: cpu@1 {
> > +			compatible = "arm,cortex-a72";
> > +			reg = <0x001>;
> > +			device_type = "cpu";
> > +			enable-method = "psci";
> > +			i-cache-size = <0xC000>;

same..

> > +			i-cache-line-size = <64>;
> > +			i-cache-sets = <256>;
> > +			d-cache-size = <0x8000>;
> > +			d-cache-line-size = <64>;
> > +			d-cache-sets = <128>;
> > +			next-level-cache = <&L2_0>;
> > +		};
> > +	};
> > +
> 

Other wise, looks fine to me.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
