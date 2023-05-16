Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 167E470455F
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 08:38:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbjEPGiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 02:38:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230051AbjEPGiK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 02:38:10 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B441198B
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 23:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684219088; x=1715755088;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TCxpBENV+zqXSkcuLnWs6/rslnSwLFSs45WMSjLUzR0=;
  b=hHQXwmQeoDfN202xWuXBfdgxxMC9REUbtjkEXC6tzzBq7HwCMuytA2cU
   c+KH5EY8UjdfbLORuvpO7dgXEd3vIZZuccn+Jtxx7kX0FnUoC8Wfwbvmy
   e1I+sv4dl60L8jLyWd/7fW8lF3V6bf1G1uFplygm3RGiiETtYqOY1qqnD
   RBhBF642WRE1MhbgTnfqarZyorvzyylm2n+A2RJyndboslFTRYHqRWxCh
   Mpzu1aHLXFsyYG6vXrGFxHs55Yi/D0o94AKDiWCiTOCqWBxx4uGRR+KlY
   GkOUHo3KuucFRj/IGDf0Pnmk3LvSIKGUXeG6RjnBc50+LpJNkfbOp9Y7v
   w==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30922863"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 May 2023 08:38:06 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 16 May 2023 08:38:06 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 16 May 2023 08:38:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684219086; x=1715755086;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TCxpBENV+zqXSkcuLnWs6/rslnSwLFSs45WMSjLUzR0=;
  b=QejqqFb0GhmOxrWXEE5J8BRMGZVK5ijMtog/yptCGCN20Zdmd2N7z9wv
   qkb/XEeTlU4LMtrtfEIGVKuw4Qt1TjyDuJ+EO0xlSDIOIEopoBZHe8AaY
   W+nJdWLfpr8dt4j4Aevo470FtDMhUlTC4pT2TEiLngU8Zz7sjnPhvmMqe
   T3PXLqBQC40f6V6bZnOzXl1J/5w0zsFCtpa3QACGgG62+GQ6Y3yiuATwE
   49hQ/99a9OmJhjsZOeOnuyCNdg2r8aDxYTOQ84wzbRZLDy6kBrFOA5Cj7
   ECsBOaux39qRC38X5AFBu7WTCSCW8gHKL7dRJLH+1cEPh4o59WqFINbaT
   A==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30922862"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 May 2023 08:38:06 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 55CB5280056;
        Tue, 16 May 2023 08:38:06 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: Add DeWarp Engine DT node
Date:   Tue, 16 May 2023 08:38:06 +0200
Message-ID: <2306485.iZASKD2KPV@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230515163224.70300-1-marex@denx.de>
References: <20230515163224.70300-1-marex@denx.de>
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

Hi Marek,

Am Montag, 15. Mai 2023, 18:32:24 CEST schrieb Marek Vasut:
> Add DT node for the DeWarp Engine of the i.MX8MP.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org

While the node itself is okay, could you please add a patch for reordering =
the=20
other nodes in aips4 before adding dewarp? dwe@32e30000 should be at the to=
p=20
after ISI (ISP not yet added).

Best regards,
Alexander

> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 245c560674de7..b64c944eecf82 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1534,6 +1534,16 @@ isi_in_1: endpoint {
>  				};
>  			};
>=20
> +			dewarp: dwe@32e30000 {
> +				compatible =3D "nxp,imx8mp-dw100";
> +				reg =3D <0x32e30000 0x10000>;
> +				interrupts =3D <GIC_SPI 100=20
IRQ_TYPE_LEVEL_HIGH>;
> +				clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_AXI_ROOT>,
> +					 <&clk=20
IMX8MP_CLK_MEDIA_APB_ROOT>;
> +				clock-names =3D "axi", "ahb";
> +				power-domains =3D <&media_blk_ctrl=20
IMX8MP_MEDIABLK_PD_DWE>;
> +			};
> +
>  			mipi_csi_0: csi@32e40000 {
>  				compatible =3D "fsl,imx8mp-mipi-csi2",=20
"fsl,imx8mm-mipi-csi2";
>  				reg =3D <0x32e40000 0x10000>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


