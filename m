Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70C8F77DB80
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 09:56:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233785AbjHPH4B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 03:56:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242593AbjHPHzk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 03:55:40 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03A1E1FC6
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 00:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692172539; x=1723708539;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5YQp7hOff6Qg+IYwO1k0j5EGZ/LBePAUg6rtWfcSyBU=;
  b=Cfk0wpBV3eqYVhL20yDaazXW6hFT2bXHPbTknbNeFDyF6CAOgSSP2U63
   GGwKA+hbepLPmxczE8ZzFiJcC2zAfdO7mPeMNfMl/S3AdC9+oInK4+QZx
   AS2mNSr/tuXOIb25JTkpGkZgRQPudw04FExAOg3J2ylb8ezhdpHoiYttv
   7i8pzKhYJHhL2xbFV259NTqmhJHTjn56s8jKZQfpkA+3RRBlUkdegsIfp
   vEem5Rn+SZhx1EAaxxsmmuul1BtBgzwuD7bxda/BXE2XPq5nEGkL4G1+Y
   EVWPmZgVBnn8750ikkBpZqAKRyk4YLOOros89yMzA5UnQia/ISd16nzGt
   A==;
X-IronPort-AV: E=Sophos;i="6.01,176,1684792800"; 
   d="scan'208";a="32465170"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Aug 2023 09:55:37 +0200
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3F76F280075;
        Wed, 16 Aug 2023 09:55:37 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] ARM: dts: imx6ul: mba6ulx: Fix gpio-keys button node names
Date:   Wed, 16 Aug 2023 09:55:36 +0200
Message-ID: <2899279.e9J7NaK4W3@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230812014414.GE151430@dragon>
References: <20230810095541.720489-1-alexander.stein@ew.tq-group.com> <20230810095541.720489-3-alexander.stein@ew.tq-group.com> <20230812014414.GE151430@dragon>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

Am Samstag, 12. August 2023, 03:44:14 CEST schrieb Shawn Guo:
> On Thu, Aug 10, 2023 at 11:55:40AM +0200, Alexander Stein wrote:
> > Numbers are separated by dashes. Fixes the warnings:
> > arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2-mba6ulx.dtb: gpio-keys:
> > 'button1', 'button2', 'button3' do not match any of the regexes:
> > '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9=
=2D]+
> > -(button|event|key|switch))$', 'pinctrl-[0-9]+'>=20
> >  from schema $id: http://devicetree.org/schemas/input/gpio-keys.yaml#
> >=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>=20
> It doesn't apply to my imx/dt branch.

Oh, thanks for noticing. A dependent patch was missing and has been include=
d=20
in v2.

Thanks and best regards,
Alexander

> Shawn
>=20
> > ---
> >=20
> >  arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
> > b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi index 632ceadcca41..5a8b867d7d=
79
> > 100644
> > --- a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
> > @@ -35,21 +35,21 @@ gpio_buttons: gpio-keys {
> >=20
> >  		pinctrl-names =3D "default";
> >  		pinctrl-0 =3D <&pinctrl_buttons>;
> >=20
> > -		button1 {
> > +		button-1 {
> >=20
> >  			label =3D "s14";
> >  			linux,code =3D <KEY_1>;
> >  			gpios =3D <&expander_in0 0 GPIO_ACTIVE_LOW>;
> >  			wakeup-source;
> >  	=09
> >  		};
> >=20
> > -		button2 {
> > +		button-2 {
> >=20
> >  			label =3D "s6";
> >  			linux,code =3D <KEY_2>;
> >  			gpios =3D <&expander_in0 1 GPIO_ACTIVE_LOW>;
> >  			wakeup-source;
> >  	=09
> >  		};
> >=20
> > -		button3 {
> > +		button-3 {
> >=20
> >  			label =3D "s7";
> >  			linux,code =3D <KEY_3>;
> >  			gpios =3D <&expander_in0 2 GPIO_ACTIVE_LOW>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


