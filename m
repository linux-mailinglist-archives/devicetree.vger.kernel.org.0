Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A80E9704806
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:40:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231559AbjEPIkJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:40:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231558AbjEPIkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:40:08 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B0C11FE9
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684226402; x=1715762402;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5j4eUPg9L8PqMH0wy1HdzsGRAU3D73Lnsi0+GAAW3EI=;
  b=LHMGPfwlF6CIG4RLEnzL1lH8Ief0vHGItIDCvlFn8zIJw2yApjruyCyt
   I1/LU9S6NohcE5NfPjVpoSRm0hegVmyn2EQNGRWorCu9q3PI0+VLV3/7O
   /qJeHjNlv3hcyPIF6IZvXtKj57fn8rdz420ck/aFRETQqMn5OjpnmV+cB
   rroTH1DXpPQZRt6kQMPXOIB0cBWcg3R4bkXVmoosnaTlJmO0CvcuqVMef
   1yE3hdQKPaw33rLXVZWiiOsI3HkKyxoIIc5KNlZzKK4ZuXJ434KorSsIj
   Q+fvWdoSkDHkBfdxmEWuURZx+sBYCX4zd5Bk/0Cduf2r/2MuhyEXtdocb
   w==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30928410"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 May 2023 10:40:00 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 16 May 2023 10:40:00 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 16 May 2023 10:40:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684226400; x=1715762400;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5j4eUPg9L8PqMH0wy1HdzsGRAU3D73Lnsi0+GAAW3EI=;
  b=ibiWpfMQEQKjCLAnk95ObbXBMPApN0ndWWCVsfRMWVeskDaWSuJ1XRrN
   PzAazc0Z8ljThMGy/cIvArHF+UWgxKryhkG6nLIPyN339b04mIao6TlBj
   q2Qp2Sva326ylv7t5Lpqff3aI1JYSae6oY2ZRGqQNysHfUeSaS0lnnnZ3
   wW980K3RBoqbnam9kR9UgENEYwHRcgq/oIn1pnTj4fVmOCcPa0XIy16yH
   jrpoLf1oZBL8olGHc/7MKETyTpYmG/gB10rlwD+E8PMiUQEHZ9iCwtcs/
   QDM9RYIVT71WOYyL6MZWNoJGPuqUp4Qa18Moy6Fz9yl36vOGgFy0n7YWo
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30928408"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 May 2023 10:40:00 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3CBCA280085;
        Tue, 16 May 2023 10:40:00 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: imx8mp: Sort AIPS4 nodes
Date:   Tue, 16 May 2023 10:40:00 +0200
Message-ID: <3578806.iIbC2pHGDl@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230516081354.38868-1-marex@denx.de>
References: <20230516081354.38868-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 16. Mai 2023, 10:13:53 CEST schrieb Marek Vasut:
> Sort AIPS4 nodes by node unit-address . No functional change .
>=20
> Suggested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Also verified by using dtx_diff.

Thanks,
Alexander

> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V2: New patch
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 204 +++++++++++-----------
>  1 file changed, 102 insertions(+), 102 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> aabcf447e8931..a3ffd53a95357 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1332,6 +1332,108 @@ aips4: bus@32c00000 {
>  			#size-cells =3D <1>;
>  			ranges;
>=20
> +			isi_0: isi@32e00000 {
> +				compatible =3D "fsl,imx8mp-isi";
> +				reg =3D <0x32e00000 0x4000>;
> +				interrupts =3D <GIC_SPI 16=20
IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 42=20
IRQ_TYPE_LEVEL_HIGH>;
> +				clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_AXI_ROOT>,
> +					 <&clk=20
IMX8MP_CLK_MEDIA_APB_ROOT>;
> +				clock-names =3D "axi", "apb";
> +				fsl,blk-ctrl =3D <&media_blk_ctrl>;
> +				power-domains =3D <&media_blk_ctrl=20
IMX8MP_MEDIABLK_PD_ISI>;
> +				status =3D "disabled";
> +
> +				ports {
> +					#address-cells =3D <1>;
> +					#size-cells =3D <0>;
> +
> +					port@0 {
> +						reg =3D <0>;
> +
> +						isi_in_0: endpoint=20
{
> +							remote-
endpoint =3D <&mipi_csi_0_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg =3D <1>;
> +
> +						isi_in_1: endpoint=20
{
> +							remote-
endpoint =3D <&mipi_csi_1_out>;
> +						};
> +					};
> +				};
> +			};
> +
> +			mipi_csi_0: csi@32e40000 {
> +				compatible =3D "fsl,imx8mp-mipi-csi2",=20
"fsl,imx8mm-mipi-csi2";
> +				reg =3D <0x32e40000 0x10000>;
> +				interrupts =3D <GIC_SPI 17=20
IRQ_TYPE_LEVEL_HIGH>;
> +				clock-frequency =3D <500000000>;
> +				clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_APB_ROOT>,
> +					 <&clk=20
IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
> +					 <&clk=20
IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
> +					 <&clk=20
IMX8MP_CLK_MEDIA_AXI_ROOT>;
> +				clock-names =3D "pclk", "wrap", "phy",=20
"axi";
> +				assigned-clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_CAM1_PIX>;
> +				assigned-clock-parents =3D <&clk=20
IMX8MP_SYS_PLL2_1000M>;
> +				assigned-clock-rates =3D <500000000>;
> +				power-domains =3D <&media_blk_ctrl=20
IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
> +				status =3D "disabled";
> +
> +				ports {
> +					#address-cells =3D <1>;
> +					#size-cells =3D <0>;
> +
> +					port@0 {
> +						reg =3D <0>;
> +					};
> +
> +					port@1 {
> +						reg =3D <1>;
> +
> +						mipi_csi_0_out:=20
endpoint {
> +							remote-
endpoint =3D <&isi_in_0>;
> +						};
> +					};
> +				};
> +			};
> +
> +			mipi_csi_1: csi@32e50000 {
> +				compatible =3D "fsl,imx8mp-mipi-csi2",=20
"fsl,imx8mm-mipi-csi2";
> +				reg =3D <0x32e50000 0x10000>;
> +				interrupts =3D <GIC_SPI 80=20
IRQ_TYPE_LEVEL_HIGH>;
> +				clock-frequency =3D <266000000>;
> +				clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_APB_ROOT>,
> +					 <&clk=20
IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
> +					 <&clk=20
IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
> +					 <&clk=20
IMX8MP_CLK_MEDIA_AXI_ROOT>;
> +				clock-names =3D "pclk", "wrap", "phy",=20
"axi";
> +				assigned-clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_CAM2_PIX>;
> +				assigned-clock-parents =3D <&clk=20
IMX8MP_SYS_PLL2_1000M>;
> +				assigned-clock-rates =3D <266000000>;
> +				power-domains =3D <&media_blk_ctrl=20
IMX8MP_MEDIABLK_PD_MIPI_CSI2_2>;
> +				status =3D "disabled";
> +
> +				ports {
> +					#address-cells =3D <1>;
> +					#size-cells =3D <0>;
> +
> +					port@0 {
> +						reg =3D <0>;
> +					};
> +
> +					port@1 {
> +						reg =3D <1>;
> +
> +						mipi_csi_1_out:=20
endpoint {
> +							remote-
endpoint =3D <&isi_in_1>;
> +						};
> +					};
> +				};
> +			};
> +
>  			mipi_dsi: dsi@32e60000 {
>  				compatible =3D "fsl,imx8mp-mipi-dsim";
>  				reg =3D <0x32e60000 0x400>;
> @@ -1493,108 +1595,6 @@ ldb_lvds_ch1: endpoint {
>  				};
>  			};
>=20
> -			isi_0: isi@32e00000 {
> -				compatible =3D "fsl,imx8mp-isi";
> -				reg =3D <0x32e00000 0x4000>;
> -				interrupts =3D <GIC_SPI 16=20
IRQ_TYPE_LEVEL_HIGH>,
> -					     <GIC_SPI 42=20
IRQ_TYPE_LEVEL_HIGH>;
> -				clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_AXI_ROOT>,
> -					 <&clk=20
IMX8MP_CLK_MEDIA_APB_ROOT>;
> -				clock-names =3D "axi", "apb";
> -				fsl,blk-ctrl =3D <&media_blk_ctrl>;
> -				power-domains =3D <&media_blk_ctrl=20
IMX8MP_MEDIABLK_PD_ISI>;
> -				status =3D "disabled";
> -
> -				ports {
> -					#address-cells =3D <1>;
> -					#size-cells =3D <0>;
> -
> -					port@0 {
> -						reg =3D <0>;
> -
> -						isi_in_0: endpoint=20
{
> -							remote-
endpoint =3D <&mipi_csi_0_out>;
> -						};
> -					};
> -
> -					port@1 {
> -						reg =3D <1>;
> -
> -						isi_in_1: endpoint=20
{
> -							remote-
endpoint =3D <&mipi_csi_1_out>;
> -						};
> -					};
> -				};
> -			};
> -
> -			mipi_csi_0: csi@32e40000 {
> -				compatible =3D "fsl,imx8mp-mipi-csi2",=20
"fsl,imx8mm-mipi-csi2";
> -				reg =3D <0x32e40000 0x10000>;
> -				interrupts =3D <GIC_SPI 17=20
IRQ_TYPE_LEVEL_HIGH>;
> -				clock-frequency =3D <500000000>;
> -				clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_APB_ROOT>,
> -					 <&clk=20
IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
> -					 <&clk=20
IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
> -					 <&clk=20
IMX8MP_CLK_MEDIA_AXI_ROOT>;
> -				clock-names =3D "pclk", "wrap", "phy",=20
"axi";
> -				assigned-clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_CAM1_PIX>;
> -				assigned-clock-parents =3D <&clk=20
IMX8MP_SYS_PLL2_1000M>;
> -				assigned-clock-rates =3D <500000000>;
> -				power-domains =3D <&media_blk_ctrl=20
IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
> -				status =3D "disabled";
> -
> -				ports {
> -					#address-cells =3D <1>;
> -					#size-cells =3D <0>;
> -
> -					port@0 {
> -						reg =3D <0>;
> -					};
> -
> -					port@1 {
> -						reg =3D <1>;
> -
> -						mipi_csi_0_out:=20
endpoint {
> -							remote-
endpoint =3D <&isi_in_0>;
> -						};
> -					};
> -				};
> -			};
> -
> -			mipi_csi_1: csi@32e50000 {
> -				compatible =3D "fsl,imx8mp-mipi-csi2",=20
"fsl,imx8mm-mipi-csi2";
> -				reg =3D <0x32e50000 0x10000>;
> -				interrupts =3D <GIC_SPI 80=20
IRQ_TYPE_LEVEL_HIGH>;
> -				clock-frequency =3D <266000000>;
> -				clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_APB_ROOT>,
> -					 <&clk=20
IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
> -					 <&clk=20
IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
> -					 <&clk=20
IMX8MP_CLK_MEDIA_AXI_ROOT>;
> -				clock-names =3D "pclk", "wrap", "phy",=20
"axi";
> -				assigned-clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_CAM2_PIX>;
> -				assigned-clock-parents =3D <&clk=20
IMX8MP_SYS_PLL2_1000M>;
> -				assigned-clock-rates =3D <266000000>;
> -				power-domains =3D <&media_blk_ctrl=20
IMX8MP_MEDIABLK_PD_MIPI_CSI2_2>;
> -				status =3D "disabled";
> -
> -				ports {
> -					#address-cells =3D <1>;
> -					#size-cells =3D <0>;
> -
> -					port@0 {
> -						reg =3D <0>;
> -					};
> -
> -					port@1 {
> -						reg =3D <1>;
> -
> -						mipi_csi_1_out:=20
endpoint {
> -							remote-
endpoint =3D <&isi_in_1>;
> -						};
> -					};
> -				};
> -			};
> -
>  			pcie_phy: pcie-phy@32f00000 {
>  				compatible =3D "fsl,imx8mp-pcie-phy";
>  				reg =3D <0x32f00000 0x10000>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


