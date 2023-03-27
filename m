Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 155E46C9EAD
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 10:55:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233513AbjC0Iza (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 04:55:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232907AbjC0IzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 04:55:02 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EC5E902C
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 01:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1679907041; x=1711443041;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vY3KoypFPKzdZSYJPM6q5nkoi3aDDvQNGeIcaUwe7YU=;
  b=TdRpgST1+fqSqfWK57EGCZuE36tx7ENicNY7vFq8MOVS+xeCkVcrDH01
   sLZE1rX6/qPkCvlIeXP6g76VAglIcj8lKYOgxvNi8yGVNlN4OrJgdgO7O
   YTdlhUzVGUNEWjqRjXzQ4WSz+LzXZhYMAzwgJ1Bp/Y8WHcQdjxQhLKgi+
   DIlGIeQHIokLqcbtM7bEODunI3mlCjFeDP+JBM1kElXgl3bGLmeE0lLb4
   pLysg91hKJKzave1wgZF4sFDO/7PTsc4QbgluXLew5uGg85Xh8nQTpKsp
   CA2tpE16a865IUhONk2kuLmHVswodAQ7eNfE4fNH8rGbYPr1MOVi7ChtM
   g==;
X-IronPort-AV: E=Sophos;i="5.98,294,1673910000"; 
   d="scan'208";a="29947163"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 27 Mar 2023 10:50:38 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 27 Mar 2023 10:50:39 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 27 Mar 2023 10:50:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1679907039; x=1711443039;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vY3KoypFPKzdZSYJPM6q5nkoi3aDDvQNGeIcaUwe7YU=;
  b=VikFDJtqUi98a1xLp5Pv5MkU//Ijl6qX5VPmn/2NclRH/E7c1RgH5uAU
   6NNkNQ2GDNmoy0qhJe/ZP4fikdYRVK51wJRz1bjxs3hcPX4iyFyVBD3Aa
   qfIUUuwDC3OsG2QbC+Fe5B2tCPyk0obkdxcP0n3IND/4mrQnVbuveqgqb
   tuanlpZzblzf5laa/KKHbP/7mqs1pXNGxs5WW+O+X4x3H9sWGowYoL1G1
   gLEBRmOEwWJAgdE+ufx5N3oqH4gq52Od/UD01WDIQkDDQs87Q58tXACZ8
   aeiRuhl6YOOtT8o5uUQ/Szf0Iq9Gl+6iDG1cRNbWrIENZTokx59+R82Go
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,294,1673910000"; 
   d="scan'208";a="29947161"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Mar 2023 10:50:38 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C170E280056;
        Mon, 27 Mar 2023 10:50:37 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm: Fix lcdif compatible
Date:   Mon, 27 Mar 2023 10:50:37 +0200
Message-ID: <5663802.DvuYhMxLoT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230327023444.GF3364759@dragon>
References: <20230316140646.489626-1-alexander.stein@ew.tq-group.com> <20230327023444.GF3364759@dragon>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, 27. M=E4rz 2023, 04:34:44 CEST schrieb Shawn Guo:
> On Thu, Mar 16, 2023 at 03:06:45PM +0100, Alexander Stein wrote:
> > imx8mm-lcdif is compatible to imx6sx-lcdif.
> >=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>=20
> Doesn't apply for me.

Ah, you are right. These are patches based on Jagan's MIPI-DSI support.
I'll resubmit once that series is applied.

Best regards,
Alexander

> Shawn
>=20
> > ---
> >=20
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi index
> > fedd32cfa47a..1de455ba21da 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -1120,7 +1120,7 @@ aips4: bus@32c00000 {
> >=20
> >  			ranges =3D <0x32c00000 0x32c00000 0x400000>;
> >  		=09
> >  			lcdif: lcdif@32e00000 {
> >=20
> > -				compatible =3D "fsl,imx28-lcdif";
> > +				compatible =3D "fsl,imx8mm-lcdif",=20
"fsl,imx6sx-lcdif";
> >=20
> >  				reg =3D <0x32e00000 0x10000>;
> >  				clocks =3D <&clk=20
IMX8MM_CLK_LCDIF_PIXEL>,
> >  			=09
> >  					 <&clk=20
IMX8MM_CLK_DISP_AXI_ROOT>,


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


