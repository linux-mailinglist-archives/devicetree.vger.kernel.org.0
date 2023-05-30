Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83D4A71553B
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 08:02:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbjE3GCk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 02:02:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbjE3GCj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 02:02:39 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26732E5
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 23:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1685426557; x=1716962557;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KPmITw0D5tU2qnkJH8pFZkwrRlp65kTmwDxJj7XFCX8=;
  b=ERLWl6ZgMak6P7hJdkU1xDHWjM9LQ0rfplVD63aQ7WSqpYiT+0QBmy9U
   lxsZdSQDN+BND3F6aAsLsr5r3NPaux257Pc9HsUQHgXCxqQAxJ/+Ywgd4
   YE/qOL423ImxiZ1ZvqkfoCAm64PJ7kOSxSwsz0EbFmccFGJQY1goFVnPR
   Z/i64Um2BfwxCS8KmIvINVFrfGNTPCJI+7Rw5Qv6JK3qGgcW72uuTx0bJ
   cADulVPQWHyuY2g+vN4U6WsuibwbIrxgT23RdCmIrpTrAF5C4e6ajCIdr
   4i5jeSY+Wr+EGsupHZhi8U1CiW0wKNtG0oJtuMhwBDst394Txf/bNvsD+
   w==;
X-IronPort-AV: E=Sophos;i="6.00,203,1681164000"; 
   d="scan'208";a="31152016"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 30 May 2023 08:02:34 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 30 May 2023 08:02:34 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 30 May 2023 08:02:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1685426554; x=1716962554;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KPmITw0D5tU2qnkJH8pFZkwrRlp65kTmwDxJj7XFCX8=;
  b=lDZuTwPo60IGRYIaEuEQKe89LNfWx5Lt4WuX8eVJRe2t9fBkehaemh1b
   ZKSxoYhdn+R2oncLr3cFU8MPAvyhP0Gi9v1DmLLY78GfPMf3CLcOsWGaP
   L1OdSDNjmoYAXpsxc8ZtI7HnkMES7YYITWc9CIrE9fgnPnlU8Lx3SoFoR
   8EJh+wiDC7jSmXl4n6lekq/K96ZS9qCiI6KAVR4+jIASHo3hTRhVPezQ+
   fB3B3tfM73QsOpdGP7sQs6/TXcHWd+6aAY1Zaf04elCVCtO7zt3qlz4qI
   1hJdXJUZD57gULICWWe5yL1v+tGHKNZlQnbQVtuvLkm9oSt082CFApJ+f
   w==;
X-IronPort-AV: E=Sophos;i="6.00,203,1681164000"; 
   d="scan'208";a="31152015"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 30 May 2023 08:02:34 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8FF2C28008D;
        Tue, 30 May 2023 08:02:34 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] ARM: dts: imx6qdl-mba6: add mac address for USB ethernet controller
Date:   Tue, 30 May 2023 08:02:34 +0200
Message-ID: <12221806.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230527081559.GA528183@dragon>
References: <20230515054429.14736-1-alexander.stein@ew.tq-group.com> <20230527081559.GA528183@dragon>
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

Hi Shawn,

Am Samstag, 27. Mai 2023, 10:15:59 CEST schrieb Shawn Guo:
> On Mon, May 15, 2023 at 07:44:29AM +0200, Alexander Stein wrote:
> > The mac address is stored in mainboard eeprom.
> >=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > Changes in v2:
> > * Fix indentation
> >=20
> >  arch/arm/boot/dts/imx6qdl-mba6.dtsi  | 16 ++++++++++++++++
> >  arch/arm/boot/dts/imx6qdl-mba6a.dtsi |  6 ++++++
> >  arch/arm/boot/dts/imx6qdl-mba6b.dtsi |  6 ++++++
> >  3 files changed, 28 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> > b/arch/arm/boot/dts/imx6qdl-mba6.dtsi index 7b7e6c2ad190..9d90d7647024
> > 100644
> > --- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
> > @@ -272,6 +272,22 @@ &uart5 {
> >=20
> >  &usbh1 {
> > =20
> >  	disable-over-current;
> >  	status =3D "okay";
> >=20
> > +	#address-cells =3D <1>;
> > +	#size-cells =3D <0>;
> > +
> > +	hub@1 {
> > +		compatible =3D "usb424,2517";
> > +		reg =3D <1>;
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		ethernet@1 {
> > +			compatible =3D "usb424,9e00";
>=20
> These two usb424 compatible strings are undocumented?

Well, there are bindings in Documentation/devicetree/bindings/usb/usb-
device.yaml. But (all) the VID/PID are not listed explicitly.

Best regards,
Alexander

> Shawn
>=20
> > +			reg =3D <1>;
> > +			nvmem-cells =3D <&mba_mac_address>;
> > +			nvmem-cell-names =3D "mac-address";
> > +		};
> > +	};
> >=20
> >  };
> > =20
> >  &usbotg {
> >=20
> > diff --git a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> > b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi index df8fa169e9f6..27fec340c380
> > 100644
> > --- a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> > @@ -21,6 +21,12 @@ m24c64_57: eeprom@57 {
> >=20
> >  		compatible =3D "atmel,24c64";
> >  		reg =3D <0x57>;
> >  		pagesize =3D <32>;
> >=20
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <1>;
> > +
> > +		mba_mac_address: mac-address@20 {
> > +			reg =3D <0x20 0x6>;
> > +		};
> >=20
> >  	};
> >  =09
> >  	rtc0: rtc@68 {
> >=20
> > diff --git a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> > b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi index 7d1cd7454c7f..0a9f076eeb36
> > 100644
> > --- a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> > @@ -31,6 +31,12 @@ m24c64_57: eeprom@57 {
> >=20
> >  		compatible =3D "atmel,24c64";
> >  		reg =3D <0x57>;
> >  		pagesize =3D <32>;
> >=20
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <1>;
> > +
> > +		mba_mac_address: mac-address@20 {
> > +			reg =3D <0x20 0x6>;
> > +		};
> >=20
> >  	};
> >  =09
> >  	rtc0: rtc@68 {


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


