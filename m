Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A647171297D
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 17:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243838AbjEZP3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 11:29:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243937AbjEZP3g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 11:29:36 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45995F7
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:29:23 -0700 (PDT)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34QCq8vF015360;
        Fri, 26 May 2023 17:29:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=from : to : cc :
 references : in-reply-to : subject : date : message-id : mime-version :
 content-type : content-transfer-encoding; s=selector1;
 bh=HBLC25tXm7PL8iCv/hvsiP333s5gaIjYk0U6zt24BHc=;
 b=2zxcYfhHIFQK6h07+ohH5SliIZjSmgduH3XlzOeeKAzGZG6YSU1QpMP32OA50KNMWWxN
 0dkhkSpo/nUUn9lJQow5Ob9wMozCRWh/kUMYVSd6PJAcJFoiXabuDIub427Jk+m7spl+
 QpLddFyMxMp2VjDM5gbBdHC+j1cTXV2nNxJH+i+BZq4qVv9yVcp00lOBi+xHyjVJUAZg
 M1F1MJxHZcsY2MsR0317iCWYj/2EhoG0RNlyMBvsz7LQ3VK8L+3Rs7ZDdqBOA44BXnp5
 5poFv9F5BT/g58FUSNZl4VqHaAVdz85BeNLE/sPxV5ZhXNdpTKSSQ9K+IW21vx5yxwIa ug== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3qttufa14n-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 26 May 2023 17:29:00 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BC36E100034;
        Fri, 26 May 2023 17:28:59 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AC9FF23C6AC;
        Fri, 26 May 2023 17:28:59 +0200 (CEST)
Received: from LMECWL1299 (10.201.28.137) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Fri, 26 May
 2023 17:28:57 +0200
From:   <patrick.delaunay@foss.st.com>
To:     'Marek Vasut' <marex@denx.de>,
        <linux-arm-kernel@lists.infradead.org>
CC:     Alexandre TORGUE - foss <alexandre.torgue@foss.st.com>,
        'Conor Dooley' <conor+dt@kernel.org>,
        'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>,
        'Maxime Coquelin' <mcoquelin.stm32@gmail.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Srinivas Kandagatla' <srinivas.kandagatla@linaro.org>,
        <devicetree@vger.kernel.org>, <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20230517152513.27922-1-marex@denx.de> <20230517152513.27922-3-marex@denx.de>
In-Reply-To: <20230517152513.27922-3-marex@denx.de>
Subject: RE: [PATCH v2 3/3] ARM: dts: stm32: Add nvmem-syscon node to TAMP to expose boot count on DHSOM
Date:   Fri, 26 May 2023 17:28:51 +0200
Message-ID: <02ca01d98fe6$ca371d80$5ea55880$@foss.st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHZj9Uh86Xh97Obl0G0KFWD/onRSq9skNqA
msip_labels: MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Enabled=true; MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_SetDate=2023-05-26T15:28:51Z; MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Method=Standard; MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_Name=23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0; MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_SiteId=75e027c9-20d5-47d5-b82f-77d7cd041e8f; MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_ActionId=d91f1318-ed6d-4299-a9f2-97d9fb285e39; MSIP_Label_23add6c0-cfdb-4bb9-b90f-bf23b83aa6c0_ContentBits=2
X-Originating-IP: [10.201.28.137]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-26_06,2023-05-25_03,2023-05-22_02
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

> From: Marek Vasut <marex@denx.de>
> Sent: Wednesday, May 17, 2023 5:25 PM
> Subject: [PATCH v2 3/3] ARM: dts: stm32: Add nvmem-syscon node to TAMP =
to
> expose boot count on DHSOM
>=20
> Add nvmem-syscon subnode to expose TAMP_BKPxR register 19 to user =
space.
> This register contains U-Boot boot counter, by exposing it to user =
space the user
> space can reset the boot counter.
>=20
> Read access example:
> "
> $ hexdump -vC /sys/bus/nvmem/devices/5c00a000.tamp\:nvmem0/nvmem
> 00000000  0c 00 c4 b0
> "
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
> V2: No change
> ---
>  arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi | 11 +++++++++++
> arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi | 11 +++++++++++
>  2 files changed, 22 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
> b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
> index 74735552f4803..b2557bb718f52 100644
> --- a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
> @@ -537,6 +537,17 @@ &sdmmc3 {
>  	status =3D "okay";
>  };
>=20
> +&tamp {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	/* Boot counter */
> +	nvmem {
> +		compatible =3D "nvmem-syscon";
> +		reg =3D <0x14c 0x4>;
> +	};
> +};
> +
>  &uart4 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&uart4_pins_a>;
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
> b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
> index bba19f21e5277..864960387e634 100644
> --- a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
> @@ -269,3 +269,14 @@ &rng1 {
>  &rtc {
>  	status =3D "okay";
>  };
> +
> +&tamp {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	/* Boot counter */
> +	nvmem {

According binding you need to add "@<reg>" =3D> nvmem@14c

And you export only TAMP_BKP19R directly in a nvmem region ?

> +		compatible =3D "nvmem-syscon";
> +		reg =3D <0x14c 0x4>;
> +	};
> +};


the boot counter could be a nvem cell so you could expose  other backup =
registers=20

For example :

&tamp {
	#address-cells =3D <1>;
	#size-cells =3D <1>;

	nvmem@14c  {
		compatible =3D "nvmem-syscon";
		reg =3D <0x14c 0x4>;

		/* Data cells */
		boot_counter: boot-counter@14c {
			reg =3D <0x14c 0x4>;
		};
	};
};

Even if you export more backup register the cell will be correctly =
described in DT
and could be accessible directly  with sysfs without managed offset in =
userland

with https://lore.kernel.org/lkml/202305240724.z3McDuYM-lkp@intel.com/T/
Or previous serie =
https://lore.kernel.org/lkml/20211220064730.28806-1-zajec5@gmail.com/


for example to export all the free register:

Reference: https://wiki.st.com/stm32mpu/wiki/STM32MP15_backup_registers

the cell " boot-counter" will be always available for users.

&tamp {
	#address-cells =3D <1>;
	#size-cells =3D <1>;

	/* backup register: 10 to 21 */
	nvmem@0x128  {
		compatible =3D "nvmem-syscon";
		reg =3D <0x128 0x44>;

		/* Data cells */
		boot_counter: boot-counter@14c {
			reg =3D <0x14c 0x4>;
		};
		boot_mode: boot-mode@150 {
			reg =3D <0x150 0x4>;
		};
....
	};
};


Patrick

> --
> 2.39.2

ST Restricted

