Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2CF56A40B4
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 12:35:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbjB0LfD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 06:35:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbjB0LfC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 06:35:02 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40DE21EFC2
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 03:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677497701; x=1709033701;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aZgd/jY/MM8eKQNs/+AK8AJM0a2tQcJSNHCU9ZHspnY=;
  b=KsYCx35Lz0btb/w2IylEhJbh+rfWr8PGQpmLAQNIqp4PlG0hCpWY2thR
   4I8x/KxrNC2dNaUy6noCjEdKCSWXor5Lf/no3tToWI5vWIEr6N/KA5zhC
   2KM5IE6IeXxVURS5XrBtMbxgVjXt99aeFPpxfAtD2XqIihfzeMqgxBJ3l
   5yjnXH90wKR3JwC96aRtu5upSYzioeqKA1DghRCK7+zBiCwEdUgmh61Ym
   VvjXa2fIn8tiVr3ncydlIakeEmBu0vQPbUoTvmku1or4f9kClSeqbGUu8
   wFIXIE6HySOM4aEBgN9W23ePU9gDOwO6Mr9DPdZ9xbtYXFdhbThtdnCcY
   A==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29333228"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 27 Feb 2023 12:34:59 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 27 Feb 2023 12:34:59 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 27 Feb 2023 12:34:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677497699; x=1709033699;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aZgd/jY/MM8eKQNs/+AK8AJM0a2tQcJSNHCU9ZHspnY=;
  b=RBTaUdoC2MpiifS3kGb7A2AEwjBXvs8MY/sjLP7x2spLPJcYB/0ve6Fe
   g4idnfFhiUUEqIfdCyCCIUpzyHXffWvBsRDSeaxR5RsoEQbMHcxpJ+Sw9
   15effmJ5u4zb6GoDz6vpRtW6nSx7tzU+6XsS++IzFs4mY2pbqg5J+6zXy
   eYEk1rFSucLqmidf+6l1zpWNu6xIfIPpQl/gjE7YQMOAsEeA5+jp6DIe9
   hLExMqS616hHzXBqkEo3ZXH6oKR3bPGNfcx333avNHqpSkQBL2psq/+W9
   t+B930+1WmbaGTyQbIlXmQ+E3FHmsNkNbyGCV6FUbYzioS0StgjenhA06
   g==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29333226"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Feb 2023 12:34:59 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 01A80280056;
        Mon, 27 Feb 2023 12:34:58 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx93: Add FlexSPI support
Date:   Mon, 27 Feb 2023 12:34:58 +0100
Message-ID: <8236590.NyiUUSuA9g@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230227105710.ty42l7txx4gpdkw5@pengutronix.de>
References: <20230227104324.249343-1-alexander.stein@ew.tq-group.com> <20230227105710.ty42l7txx4gpdkw5@pengutronix.de>
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

Hi Marco,

Am Montag, 27. Februar 2023, 11:57:10 CET schrieb Marco Felsch:
> Hi Alexander,
>=20
> On 23-02-27, Alexander Stein wrote:
> > Add FlexSPI node for i.MX93.
> >=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > This is mainly taken from the downstream kernel with the clock order
> > fixed and 'nxp,imx93-fspi' compatible removed.
> > I do not know if it makes sense to add an imx93 specific compatible or
> > not. imx8mn uses imx8mm only, but imx8mp has it's own. But the latter
> > uses the same device data in the driver.
> >=20
> >  arch/arm64/boot/dts/freescale/imx93.dtsi | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > b/arch/arm64/boot/dts/freescale/imx93.dtsi index
> > 3c3d3d570d8c..1d71ca8d1f5a 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> > @@ -458,6 +458,21 @@ flexcan2: can@425b0000 {
> >=20
> >  				status =3D "disabled";
> >  		=09
> >  			};
> >=20
> > +			flexspi1: spi@425e0000 {
> > +				#address-cells =3D <1>;
> > +				#size-cells =3D <0>;
> > +				compatible =3D "nxp,imx8mm-fspi";
> > +				reg =3D <0x425e0000 0x10000>,=20
<0x28000000 0x10000000>;
>=20
> The compatible should always be the first entry, followed by reg.

Thanks for the feedback. I was wondering about this, but there is no=20
consistency within this file :(

Best regards,
Alexander

> Regards,
>   Marco
>=20
> > +				reg-names =3D "fspi_base", "fspi_mmap";
> > +				interrupts =3D <GIC_SPI 55=20
IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks =3D <&clk=20
IMX93_CLK_FLEXSPI1_GATE>,
> > +					 <&clk=20
IMX93_CLK_FLEXSPI1_GATE>;
> > +				clock-names =3D "fspi_en", "fspi";
> > +				assigned-clocks =3D <&clk=20
IMX93_CLK_FLEXSPI1>;
> > +				assigned-clock-parents =3D <&clk=20
IMX93_CLK_SYS_PLL_PFD1>;
> > +				status =3D "disabled";
> > +			};
> > +
> >=20
> >  			lpuart7: serial@42690000 {
> >  		=09
> >  				compatible =3D "fsl,imx93-lpuart",=20
"fsl,imx7ulp-lpuart";
> >  				reg =3D <0x42690000 0x1000>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


