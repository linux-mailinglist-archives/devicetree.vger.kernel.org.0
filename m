Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A5306A3BB1
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 08:28:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbjB0H2r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 02:28:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjB0H2q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 02:28:46 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0565A76AB
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 23:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677482925; x=1709018925;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=BTSw6mpHWjsL8frJdjtylrE+L1qL+on6wQLKLb6cb5E=;
  b=dEO1lBQBuTv+t8Ej2c9X0pXVgQPtqA2TNq+3mjiJrNhOM2nG0U27YHOM
   pa18i5YlN+TbOqHPNG7D2xFMXxjN5z2ED1DyppptfHj5OTpiZ1sn7zu0w
   QZrES/ZeK0D8s3+sCzMz2kiVXS+nIledXFdkZy2/ZT6If3lRSjZoiUJvK
   f5yiXOZFA2Yhi/ZF2nkIVtta7RWq8c03mhqQGtXZsEELX1l20qt5CFWIp
   CNDeAMvX4Bls7LTU4SGouCQBvWEpOEShHr22JEeRCuhYX3dKtJVsMrgq4
   ZJ+B5YjliP0CFLvNUBwZyPliL0q8qEKC0aAdtS1pOf+3pBbZuvdeprLSP
   w==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29323083"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 27 Feb 2023 08:28:42 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 27 Feb 2023 08:28:42 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 27 Feb 2023 08:28:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677482922; x=1709018922;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=BTSw6mpHWjsL8frJdjtylrE+L1qL+on6wQLKLb6cb5E=;
  b=Irma4WkL6vfBZe9Qo4WipgFKOeJ0s4jMpn2IRWM1J/FmZO93QnL83X5Q
   YrCja7MKTaeGEWE3L/I21d+mhOv4Hjkq5dmS/4PQllWFhy4LK1MaN3rhX
   J2c5snG2ilIFjLqNwnxPr/uV086tXfUWWYndwqXjXUg90PQpthHw4Q+Qv
   n3P0I3dsguVl8Q3A0/SSKe0DGf5cLZzRhg3Uz4Xfc+t7YAh3sVEaJ+oHa
   7YtyIwYTlIy1xdlou0O760/Tzr3/9Y1hmv6UWPeRGwqQupR49YvTGvFNQ
   ZYg25LON9MjkLGtDZ8WrLdiaiRvHeUKjaoxFORtCTt97d/uoksTLhBJ+6
   w==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29323082"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Feb 2023 08:28:42 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 294A3280056;
        Mon, 27 Feb 2023 08:28:42 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
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
Subject: Re: [PATCH v4 1/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Align block controller example name
Date:   Mon, 27 Feb 2023 08:28:39 +0100
Message-ID: <12169236.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230223151043.41548-1-marex@denx.de>
References: <20230223151043.41548-1-marex@denx.de>
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

Am Donnerstag, 23. Februar 2023, 16:10:40 CET schrieb Marek Vasut:
> Align the block controller example node name with Linux imx8mp.dtsi .
> No functional change.
>=20
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
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
> V2: Adjust the label too
> V3: - Add RB from Liu
>     - Drop the label
> V4: Add AB from Krzysztof
> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git
> a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> index dadb6108e3213..a0f7c73510d04 100644
> ---
> a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> +++
> b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> @@ -94,7 +94,7 @@ examples:
>      #include <dt-bindings/clock/imx8mp-clock.h>
>      #include <dt-bindings/power/imx8mp-power.h>
>=20
> -    media_blk_ctl: blk-ctl@32ec0000 {
> +    blk-ctrl@32ec0000 {
>          compatible =3D "fsl,imx8mp-media-blk-ctrl", "syscon";
>          reg =3D <0x32ec0000 0x138>;
>          power-domains =3D <&mediamix_pd>, <&mipi_phy1_pd>, <&mipi_phy1_p=
d>,


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


