Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06B756A3BC2
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 08:37:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230003AbjB0Hh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 02:37:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjB0HhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 02:37:25 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0861B2F0
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 23:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677483444; x=1709019444;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=F1rd5pjczimcbpKk7Kc/JhwdZSpXACt6VJAEpmAwKkM=;
  b=XYuLr45aI1bZPwQD+NelDCfoAEev1vWKsu5zSaSbR0vH9vlW0krjQetk
   X7QCmURqJZZf6WDIPUsgqVKje41gZYfq26yJTtFIOMj2zfiY2HWj+7p+y
   Oyqa5cLLcyNMKNUux/w3+uABocmubtC9gmXSEMyV1j0xVWbrc7U9FHS0a
   Vp5p5OSRKt3Ouz+PjyH9jDzQlWB0rVIghQA7uua7xiGRQQX7RB9+Xh2pc
   7dPkWdEWj+PAW633/TpmkEun4/r5q1ZJj/NedB7jZdpXCK+zrMFXWPThh
   G0MsbaRvo1BBJ1Xf5p7/xNNWnh54M2zHE6JlBvUZ1UTVcmRF1e8eifrR8
   w==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29323402"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 27 Feb 2023 08:37:22 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 27 Feb 2023 08:37:22 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 27 Feb 2023 08:37:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677483442; x=1709019442;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=F1rd5pjczimcbpKk7Kc/JhwdZSpXACt6VJAEpmAwKkM=;
  b=NdD2V4PgA7DwSS6Sb93zP6H0POsgCpvFqW7PTI6WSaSq+9Ved8wcJ7W7
   qH6UalTr/uGHC47wRmDTdw8/3WI+ZoMS+TAKJdy6wonLEh9jXjdz9UeTa
   wNTPOjrCqyEJjLAV/nivih6XXYlczfOUrKeQL60KNwR8wgIOPJO7jW/f6
   Ksy0g+czAQ+9X16ZlwjbztjKijImtFGVwG25m/xslPFLM7119M6v7KUPw
   JpPKWoXmjz50A82UsjCiqQUG4KSu2evVSajJ5NjsE7FlfzMvnUoisEXLw
   2YneGqS3X+rBLO8xSp9PgeYkFroZDmIDJ4TPMxuLRwo5aqY/H2u6XU8ow
   A==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29323401"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Feb 2023 08:37:22 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D6C42280056;
        Mon, 27 Feb 2023 08:37:21 +0100 (CET)
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
Subject: Re: [PATCH v4 2/4] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB subnode into schema and example
Date:   Mon, 27 Feb 2023 08:37:19 +0100
Message-ID: <2283499.ElGaqSPkdT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230223151043.41548-2-marex@denx.de>
References: <20230223151043.41548-1-marex@denx.de> <20230223151043.41548-2-marex@denx.de>
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

Am Donnerstag, 23. Februar 2023, 16:10:41 CET schrieb Marek Vasut:
> Document the LDB bridge subnode and add the subnode into the example.
> For the subnode to work, the block control must scan its subnodes and
> bind drivers to them, do not misuse either simple-bus or simple-mfd
> here.
>=20
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> Signed-off-by: Marek Vasut <marex@denx.de>
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
> V2: Add RB from Liu
> V3: - Update commit subject and drop space before fullstop.
>     - Add RB from Krzysztof
> V4: No change
> ---
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>=20
> diff --git
> a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> index a0f7c73510d04..f092916dc8594 100644
> ---
> a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> +++
> b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> @@ -23,6 +23,12 @@ properties:
>    reg:
>      maxItems: 1
>=20
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
>    '#power-domain-cells':
>      const: 1
>=20
> @@ -78,9 +84,16 @@ properties:
>        - const: isp1
>        - const: dwe
>=20
> +  bridge@5c:
> +    type: object
> +    $ref: /schemas/display/bridge/fsl,ldb.yaml#
> +    unevaluatedProperties: false
> +
>  required:
>    - compatible
>    - reg
> +  - '#address-cells'
> +  - '#size-cells'
>    - '#power-domain-cells'
>    - power-domains
>    - power-domain-names
> @@ -114,5 +127,43 @@ examples:
>          clock-names =3D "apb", "axi", "cam1", "cam2", "disp1", "disp2",
>                        "isp", "phy";
>          #power-domain-cells =3D <1>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +
> +        bridge@5c {
> +            compatible =3D "fsl,imx8mp-ldb";
> +            clocks =3D <&clk IMX8MP_CLK_MEDIA_LDB>;
> +            clock-names =3D "ldb";
> +            reg =3D <0x5c 0x4>, <0x128 0x4>;
> +            reg-names =3D "ldb", "lvds";

I remember that reg shall be stated right after compatible. Maybe this orde=
r=20
should be used this example as well.
Despite that:
Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> +
> +            ports {
> +                #address-cells =3D <1>;
> +                #size-cells =3D <0>;
> +
> +                port@0 {
> +                    reg =3D <0>;
> +
> +                    ldb_from_lcdif2: endpoint {
> +                        remote-endpoint =3D <&lcdif2_to_ldb>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg =3D <1>;
> +
> +                    ldb_lvds_ch0: endpoint {
> +                        remote-endpoint =3D <&ldb_to_lvdsx4panel>;
> +                    };
> +                };
> +
> +                port@2 {
> +                    reg =3D <2>;
> +
> +                    ldb_lvds_ch1: endpoint {
> +                    };
> +                };
> +            };
> +        };
>      };
>  ...


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


