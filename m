Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A351264AA6
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 19:06:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727032AbgIJRFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 13:05:49 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:55170 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726812AbgIJQzE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 12:55:04 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08AGslhU002476;
        Thu, 10 Sep 2020 11:54:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599756887;
        bh=PCDQCefiYFtVjAIHUbpSBYOEbZyXMzCDqXj/pJFtRO4=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=KrWajQG1z8zJ5PjxiHFiOqxGL9pw2gIq8Fm+EE5BNA7pFOy2hPw0pIgBlvfvVpLj7
         at5u/Ekgq9N27ltiOkcF1QhePZGqhZ0YoQR0gPbxHJA1aPQd7zNAUWGsj3p2RYLhCC
         4v6IGKqjO3RXDEY4o0a4jabBQ96QeuqkrIhudSvU=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08AGslYj002984
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 10 Sep 2020 11:54:47 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 10
 Sep 2020 11:54:47 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 10 Sep 2020 11:54:47 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08AGskW2109899;
        Thu, 10 Sep 2020 11:54:47 -0500
Date:   Thu, 10 Sep 2020 11:54:46 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham Israel Vijayponraj <kishon@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 4/5] arm64: dts: ti: Add support for J7200 SoC
Message-ID: <20200910165446.jedh67fngwkb4dts@akan>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
 <20200908162252.17672-5-lokeshvutla@ti.com>
 <887a786d-4d3d-8187-2e55-e1f714b081d1@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <887a786d-4d3d-8187-2e55-e1f714b081d1@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18:35-20200910, Vignesh Raghavendra wrote:
> Hi,
> 
> On 9/8/20 9:52 PM, Lokesh Vutla wrote:
> > The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
> > It is targeted for automotive gateway, vehicle compute systems,
> > Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
> > The SoC aims to meet the complex processing needs of modern embedded
> > products.
> > 
> > Some highlights of this SoC are:
> > * Dual Cortex-A72s in a single cluster, two clusters of lockstep
> >   capable dual Cortex-R5F MCUs and a Centralized Device Management and
> >   Security Controller (DMSC).
> > * Configurable L3 Cache and IO-coherent architecture with high data
> >   throughput capable distributed DMA architecture under NAVSS.
> > * Integrated Ethernet switch supporting up to a total of 4 external ports
> >   in addition to legacy Ethernet switch of up to 2 ports.
> > * Upto 1 PCIe-GEN3 controller, 1 USB3.0 Dual-role device subsystems,
> >   20 MCANs, 3 McASP, eMMC and SD, OSPI/HyperBus memory controller, I3C
> >   and I2C, eCAP/eQEP, eHRPWM among other peripherals.
> > * One hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
> >   management.
> > 
> > See J7200 Technical Reference Manual (SPRUIU1, June 2020)
> > for further details: https://www.ti.com/lit/pdf/spruiu1
> > 
> > Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> > Reviewed-by: Suman Anna <s-anna@ti.com>
> > Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> [...]
> > +	cbass_main: bus@100000 {
> > +		compatible = "simple-bus";
> > +		#address-cells = <2>;
> > +		#size-cells = <2>;
> > +		ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
> > +			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00031100>, /* GPIO */
> > +			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* timesync router */
> > +			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0d000000>, /* Most peripherals */
> > +			 <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>, /* MAIN NAVSS */
> > +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00800000>, /* MSMC RAM */

Also:
				 <0x00 0x18000000 0x00 0x18000000 0x00 0x08000000>, /* PCIe1 DAT0 */
> > +			 <0x41 0x00000000 0x41 0x00000000 0x01 0x00000000>, /* PCIe1 DAT */

Kishon: would it be nice to help DAT be DAT1 ?

> > +
> > +			 /* MCUSS_WKUP Range */
> > +			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
> > +			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
> > +			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
> > +			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
> > +			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
> > +			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
> > +			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
> > +			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
> > +			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
> > +			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
> > +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>;
> > +
> > +		cbass_mcu_wakeup: bus@28380000 {
> > +			compatible = "simple-bus";
> > +			#address-cells = <2>;
> > +			#size-cells = <2>;
> > +			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
> > +				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>, /* First peripheral window */
> > +				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
> > +				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
> > +				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
> > +				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>, /* MCU SRAM */
> > +				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP peripheral window */
> > +				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
> > +				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
> > +				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI register space */
> > +				 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>; /* FSS OSPI0/1 data region 0 */
> > +		};
> > +	};
> > +};
> > +
> 
> Could you pick up FSS region updates from [1] as Nishanth suggested?
> 
> [1]
> https://lore.kernel.org/linux-arm-kernel/20200807124407.12604-2-vigneshr@ti.com/
> 
> Regards
> Vignesh

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
