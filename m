Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24CDE6A3BC8
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 08:41:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbjB0HlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 02:41:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229702AbjB0HlN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 02:41:13 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 636431B2F0
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 23:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677483672; x=1709019672;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7hf2Klz8nb16wGOuK2AKHv1XnNwtTq+5bED6HetMwso=;
  b=ivBoTaNnXlIQojoO4ZtoTuHQ3imxsuPwm1iWDHvmFlmSDkx5p8DpoEX1
   qyKinCbdOVS00lhKR9tbY25gqL9K4RLzNe98UyUM43Ymo0mTPrdhcN4M4
   clWM0MGY1ythm1O0qCyts9GMwsSuWxfpfVqAUVio3hLN2TlPxWfMRupZU
   uwuC8Yu1A6vR8qqpRDTohbILFjYRB5UcL+GFsresIj7eBv5oX/xQPUR9s
   s1lUDtKLTXjI9tG+y8NYJBjUDUo5vrefmyiI6i6lgj4PP/DrSpdc8RKX6
   bAz4ye7lS6ohw9dHHqlZRF6OTJlwH5a9EYvzRXILaIx1+taaJLJ3niTc/
   A==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29323523"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 27 Feb 2023 08:41:10 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 27 Feb 2023 08:41:10 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 27 Feb 2023 08:41:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677483670; x=1709019670;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7hf2Klz8nb16wGOuK2AKHv1XnNwtTq+5bED6HetMwso=;
  b=PuXtGTzwK79o8haXTZBpc6kijBocRRMdlUJFQK5TrOUq4n4pVkKSGLfn
   ql67n7tIAHlXkPzKixUnoxuEGycKT+/U9gu/dz4QxCzRKoRZSNgSi3TLY
   L5S+zcTjpNrHAfTBUE+o3Rr5PpOCBIUDx5mN5OU9gcwSYr6DaP2TFCPJl
   FTV5pMmP1tJ7yLFDjD52jIeCY8EAWydXtViusqIghvV3rCRDaoffdWqSJ
   0yleFt4/GAbx/s3+r1DOFpoZ7Lzgwi67uES88kKCVXbFPT+bFYkO2+0KH
   87d6hck32phGWfMfc5lHwUIOcn5crtLQqRYO9kYZvjlxO2yPNEdjB9ntX
   g==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29323522"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Feb 2023 08:41:10 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 647BA280056;
        Mon, 27 Feb 2023 08:41:10 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc:     Marek Vasut <marex@denx.de>, Liu Ying <victor.liu@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
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
Subject: Re: [PATCH v4 4/4] arm64: dts: imx8mp: Drop simple-bus from fsl, imx8mp-media-blk-ctrl
Date:   Mon, 27 Feb 2023 08:41:08 +0100
Message-ID: <13222095.uLZWGnKmhe@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230223151043.41548-4-marex@denx.de>
References: <20230223151043.41548-1-marex@denx.de> <20230223151043.41548-4-marex@denx.de>
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

Hi Marek,

thanks for the cleanup.

Am Donnerstag, 23. Februar 2023, 16:10:43 CET schrieb Marek Vasut:
> This block should not be compatible with simple-bus and misuse it that wa=
y.
> Instead, the driver should scan its subnodes and bind drivers to them.
>=20
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Also the whole series tested on imx8mp and imx93.
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

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
> V2: Turn this into 4/4
> V3: Add RB from Liu
> V4: No change
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 2dd60e3252f35..ca8093ee4d0e4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1151,7 +1151,7 @@ lcdif2_to_ldb: endpoint {
>=20
>  			media_blk_ctrl: blk-ctrl@32ec0000 {
>  				compatible =3D "fsl,imx8mp-media-blk-
ctrl",
> -					     "simple-bus", "syscon";
> +					     "syscon";
>  				reg =3D <0x32ec0000 0x10000>;
>  				#address-cells =3D <1>;
>  				#size-cells =3D <1>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


