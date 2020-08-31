Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FEC725762D
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 11:12:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728157AbgHaJM3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 05:12:29 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:38816 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726244AbgHaJM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 05:12:27 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 07V9CF9i030103;
        Mon, 31 Aug 2020 04:12:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1598865135;
        bh=dLDTYfaeXn6QpIwEYFU9KyEW4fhgDLxolDTMAUAw9yQ=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=rW8gSRUbaOJay44lI1k5PbbM7b0zP2FZ833Ekug4FcESdtzpk1/1bN1VzwSA1FCtD
         2QuHcqFeLsuSvg5sK/GYsz9aN/OMkDsGIwyBQVjlbnHwc6XmwXPDdKKjw5wMGI+s0h
         bAUOZt2ieZJbII6/6gQHSFKXPNsyA1qqy91sOeL0=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 07V9CFfR065193
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 31 Aug 2020 04:12:15 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 31
 Aug 2020 04:12:15 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 31 Aug 2020 04:12:15 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 07V9CDuW030583;
        Mon, 31 Aug 2020 04:12:13 -0500
Subject: Re: [PATCH v2 3/4] arm64: dts: ti: Add support for J7200 SoC
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <20200827065144.17683-4-lokeshvutla@ti.com>
From:   Peter Ujfalusi <peter.ujfalusi@ti.com>
X-Pep-Version: 2.0
Message-ID: <4452e4b4-8479-6ec9-9206-74482e40538b@ti.com>
Date:   Mon, 31 Aug 2020 12:13:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200827065144.17683-4-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lokesh,

On 27/08/2020 9.51, Lokesh Vutla wrote:
> The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
> It is targeted for automotive gateway, vehicle compute systems,
> Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
> The SoC aims to meet the complex processing needs of modern embedded
> products.
>=20
> Some highlights of this SoC are:
> * Dual Cortex-A72s in a single cluster, two clusters of lockstep
>   capable dual Cortex-R5F MCUs and a Centralized Device Management and
>   Security Controller (DMSC).
> * Configurable L3 Cache and IO-coherent architecture with high data
>   throughput capable distributed DMA architecture under NAVSS.
> * Integrated Ethernet switch supporting up to a total of 4 external por=
ts
>   in addition to legacy Ethernet switch of up to 2 ports.
> * Upto 1 PCIe-GEN3 controller, 1 USB3.0 Dual-role device subsystems,
>   20 MCANs, 3 McASP, eMMC and SD, OSPI/HyperBus memory controller, I3C
>   and I2C, eCAP/eQEP, eHRPWM among other peripherals.
> * One hardware accelerator block containing AES/DES/SHA/MD5 called SA2U=
L
>   management.
>=20
> See J7200 Technical Reference Manual (SPRUIU1, June 2020)
> for further details: https://www.ti.com/lit/pdf/spruiu1
>=20
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j7200-main.dtsi     | 199 ++++++++++++++++++=

>  .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      |  84 ++++++++
>  arch/arm64/boot/dts/ti/k3-j7200.dtsi          | 165 +++++++++++++++
>  3 files changed, 448 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200.dtsi
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boo=
t/dts/ti/k3-j7200-main.dtsi
> new file mode 100644
> index 000000000000..70c8f7e941fb
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
> @@ -0,0 +1,199 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Source for J7200 SoC Family Main Domain peripherals
> + *
> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.=
com/
> + */
> +
> +&cbass_main {
> +	msmc_ram: sram@70000000 {
> +		compatible =3D "mmio-sram";
> +		reg =3D <0x0 0x70000000 0x0 0x100000>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		ranges =3D <0x0 0x0 0x70000000 0x100000>;
> +
> +		atf-sram@0 {
> +			reg =3D <0x0 0x20000>;
> +		};
> +	};
> +
> +	gic500: interrupt-controller@1800000 {
> +		compatible =3D "arm,gic-v3";
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +		#interrupt-cells =3D <3>;
> +		interrupt-controller;
> +		reg =3D <0x00 0x01800000 0x00 0x10000>,	/* GICD */
> +		      <0x00 0x01900000 0x00 0x100000>;	/* GICR */
> +
> +		/* vcpumntirq: virtual CPU interface maintenance interrupt */
> +		interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		gic_its: msi-controller@1820000 {
> +			compatible =3D "arm,gic-v3-its";
> +			reg =3D <0x00 0x01820000 0x00 0x10000>;
> +			socionext,synquacer-pre-its =3D <0x1000000 0x400000>;
> +			msi-controller;
> +			#msi-cells =3D <1>;
> +		};
> +	};
> +
> +	main_navss: navss@30000000 {
> +		compatible =3D "simple-mfd";
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges =3D <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>;
> +
> +		secure_proxy_main: mailbox@32c00000 {
> +			compatible =3D "ti,am654-secure-proxy";
> +			#mbox-cells =3D <1>;
> +			reg-names =3D "target_data", "rt", "scfg";
> +			reg =3D <0x00 0x32c00000 0x00 0x100000>,
> +			      <0x00 0x32400000 0x00 0x100000>,
> +			      <0x00 0x32800000 0x00 0x100000>;
> +			interrupt-names =3D "rx_011";
> +			interrupts =3D <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
> +		};

Would it make sense to have the nodes needed for DMA also in the initial
commit?
mainline is prepared for it.

- P=C3=A9ter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

