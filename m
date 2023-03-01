Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A96ED6A67A4
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 07:32:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbjCAGcj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Mar 2023 01:32:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbjCAGci (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Mar 2023 01:32:38 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1917137557
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 22:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677652356; x=1709188356;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YzcTS6UvJpAIftBuJ9hqk4GRn2DuoP+6eqYrpPzYvHc=;
  b=EDboJmo1LpZZuKevSUUYOKmYmg7dZv3n21Zw1KPd/QkuCbFGyuvE7ux1
   GBgXnCtEYd/hYe3ZvzfYmJvypT67QCqUIG0wrK8inxTPGMQ2PWFnso57v
   d2x9Knl1DxH/zaawt5aVMar+5PBvebNK6dEcp716+9qTJohFay9z12fw7
   ZStMN3tDz1K95px/UX9Nr1mBwn2b+Ke32W5+eUWR9yVD/tXhmmBmoxyiv
   eelfLl/naUI/IxOQjEepl8ylPCCtSI6e+Bd4HEjNfdrqS5fefTq9mJ5So
   vd2dLdUXlc+GBUNuvJos3GMRBIIdEL/htWcYHnImz9LFdVO4BIyibjyd+
   A==;
X-IronPort-AV: E=Sophos;i="5.98,224,1673910000"; 
   d="scan'208";a="29382744"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 01 Mar 2023 07:32:34 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 01 Mar 2023 07:32:34 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 01 Mar 2023 07:32:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677652354; x=1709188354;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YzcTS6UvJpAIftBuJ9hqk4GRn2DuoP+6eqYrpPzYvHc=;
  b=VM3b0FBCXVf29nZaSioZ8CxmITd9e+5srnhquFzJc3FoZJQef9KO70Sn
   9PGQcpmZMe55cpCadlScVt8Y4miiYrGwRYH6/xZIRvAoyMSrKQk0j9u+S
   nn+HjAe/11vJTimUzTKRektP2qHE7MsGtukd6AoszzbVtvH2HMhs+NXZf
   J4NK57kV5XcuG6baYpoXMHj/TXZzf6b3c3D5GrD0uCPAPgO2QZQru6cgR
   6wuxw4a004KJ4L6w3mN1WPyBsxgrv4ExHf5Bw8WWmJCe87z1JIxc3vNEY
   53Up3gdUXGfaIlyeT48WweDNl89ShP6WMAFM2qRe2BwAFan0+017B90ke
   A==;
X-IronPort-AV: E=Sophos;i="5.98,224,1673910000"; 
   d="scan'208";a="29382743"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 01 Mar 2023 07:32:34 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DCAFB280056;
        Wed,  1 Mar 2023 07:32:33 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/5] arm64: dts: imx8mp: Reorder clock and reg properties
Date:   Wed, 01 Mar 2023 07:32:31 +0100
Message-ID: <4814723.31r3eYUQgx@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230227155423.40359-5-marex@denx.de>
References: <20230227155423.40359-1-marex@denx.de> <20230227155423.40359-5-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, 27. Februar 2023, 16:54:23 CET schrieb Marek Vasut:
> Align the clock and reg properties order with example bindings
> and the rest of the imx8mp.dtsi . No functional change.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by:  Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> V5: New patch
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> ca8093ee4d0e4..524b4ccfcc553 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1202,10 +1202,10 @@ media_blk_ctrl: blk-ctrl@32ec0000 {
>=20
>  				lvds_bridge: bridge@5c {
>  					compatible =3D "fsl,imx8mp-
ldb";
> -					clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_LDB>;
> -					clock-names =3D "ldb";
>  					reg =3D <0x5c 0x4>, <0x128=20
0x4>;
>  					reg-names =3D "ldb", "lvds";
> +					clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_LDB>;
> +					clock-names =3D "ldb";
>  					assigned-clocks =3D <&clk=20
IMX8MP_CLK_MEDIA_LDB>;
>  					assigned-clock-parents =3D=20
<&clk IMX8MP_VIDEO_PLL1_OUT>;
>  					status =3D "disabled";


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


