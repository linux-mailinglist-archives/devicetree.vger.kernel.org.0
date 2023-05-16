Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AF0170480E
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:42:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231631AbjEPImT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:42:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231362AbjEPImS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:42:18 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1C0B421A
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684226531; x=1715762531;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=piCBIyECUYi/crE4SdU4DKlw5L+SqcUVOLEGhipmWu0=;
  b=ia2JRULbqInQiThudTndLnN1Gy/6nCKkPyp4JecVXvK8S1by5gl0PbMM
   XmSz9/MwkQ2oeHx5gYVefZsoM7mQ45g8c+aZrTCq0DZP6HlsPMHOUsNd+
   pDUp2sYgwM1f9ax2nXYFSKgbRXobBRIKj3rPJyIzYbcnat1OWZ78LVxsW
   3DfN4RneykkSJtXXZ8qRS51H3mSf+iQK3WCnDr34NE2P2QmeyFhFuTUM/
   ah3vCSy0fcwCUXh3chYGF74FIMRuRLHk818IzK6MqHUfZ8uwNN5BV8Dzu
   5Q8bhWrL4vPFopEteJpuE49wq1KvUTmqsms8Z0+JVKIcbmZEhbrbbfMkF
   g==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30928500"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 May 2023 10:42:10 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 16 May 2023 10:42:10 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 16 May 2023 10:42:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684226530; x=1715762530;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=piCBIyECUYi/crE4SdU4DKlw5L+SqcUVOLEGhipmWu0=;
  b=XDPIx1Ec2lTgfeC3/BJ9ddb2QCLzcC6A0V+v58PKw7xv7O5j2V22ckkx
   fXNn+jZy95zkU0lzg8eCKvN8hhObynukWLNq8YAM5xc3k5dv3llCiXW4o
   FEPvkpYrZIWdlkK56jw8arYdRR488NIfHhgukktv/nPpfMam5R75J4HCp
   sJ07xpUhDvUD+MTRBsHcxv1B7SfEfW3a4up62RkgG5Sbn6NjUGI67hLIS
   05EASs83S45+feOutYf3mJUB7byLPno1Pq0Ah8dzET2pk8J5P+stCP99N
   CL9rPleBbayDyRnoKGAQhdUQJXkgOQ6DCWr/Au+cTAaKe1vlFWTvl8geW
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,278,1677538800"; 
   d="scan'208";a="30928499"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 May 2023 10:42:09 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id BB1A6280085;
        Tue, 16 May 2023 10:42:09 +0200 (CEST)
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
Subject: Re: [PATCH v2 2/2] arm64: dts: imx8mp: Add DeWarp Engine DT node
Date:   Tue, 16 May 2023 10:42:09 +0200
Message-ID: <3244460.5fSG56mABF@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230516081354.38868-2-marex@denx.de>
References: <20230516081354.38868-1-marex@denx.de> <20230516081354.38868-2-marex@denx.de>
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

Am Dienstag, 16. Mai 2023, 10:13:54 CEST schrieb Marek Vasut:
> Add DT node for the DeWarp Engine of the i.MX8MP.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Thanks,
Alexander

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
> ---
> V2: Update on top of 1/2
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> a3ffd53a95357..cd64b39e7d4b8 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1366,6 +1366,16 @@ isi_in_1: endpoint {
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


