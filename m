Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48F60732C5C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 11:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbjFPJnT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 05:43:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243969AbjFPJmx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 05:42:53 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 243063C22
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686908550; x=1718444550;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cvM4BtjtOdVPVTJtyyb1q6nRBRkQTnYs3z8tLWGfmTY=;
  b=cwpRb02cnBSJd+4IRWSBMBKCKNj7QJW4Wy1k7KUGyVKq3WOWXpTCTHOg
   8JDQWJHbdPyCPKHwfLpNec/iFLA5AyZD9NOciQqfpN8vzMJMTldpNV7gq
   Gf0JOf3dFbW+r26m9z/clJ8DlDBeBwHujAF8Qs9PCT1/LUMUQLo+O2v16
   QGak7wSXg6SmECAOM8uMhs/rdNPq9x8BrQt5UoXUqywC+A2CLWR5wpnEz
   4c1VcKoAK78A96Y+F2FzM1i+/29i7uaebILlYiRlutshpiiivgwWIzQ6/
   y06stZzOUyrwwPNCKIYBxagnXLEx6OVl6i4QyWXNa2z4UaebtmiOwRqrW
   A==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31462784"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 11:42:17 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B0E28280082;
        Fri, 16 Jun 2023 11:42:17 +0200 (CEST)
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
Subject: Re: [PATCH 3/3] ARM: dts: imx6qdl-mba6: Add missing supply regulator for lm75 and at24
Date:   Fri, 16 Jun 2023 11:42:19 +0200
Message-ID: <3268282.VLH7GnMWUR@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230503113112.1751886-3-alexander.stein@ew.tq-group.com>
References: <20230503113112.1751886-1-alexander.stein@ew.tq-group.com> <20230503113112.1751886-3-alexander.stein@ew.tq-group.com>
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

Am Mittwoch, 3. Mai 2023, 13:31:12 CEST schrieb Alexander Stein:
> Fixes the warnings:
> at24 0-0057: supply vcc not found, using dummy regulator
> lm75 0-0049: supply vs not found, using dummy regulator
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

You applied patch 1 & 2. Is something missing for this patch to be applied?

Best regards,
Alexander

> ---
>  arch/arm/boot/dts/imx6qdl-mba6a.dtsi | 2 ++
>  arch/arm/boot/dts/imx6qdl-mba6b.dtsi | 2 ++
>  2 files changed, 4 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi index c3f3a25133ca..3ca028c2dbe9
> 100644
> --- a/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-mba6a.dtsi
> @@ -15,6 +15,7 @@ &i2c1 {
>  	lm75: temperature-sensor@49 {
>  		compatible =3D "national,lm75";
>  		reg =3D <0x49>;
> +		vs-supply =3D <&reg_mba6_3p3v>;
>  	};
>=20
>  	m24c64_57: eeprom@57 {
> @@ -23,6 +24,7 @@ m24c64_57: eeprom@57 {
>  		pagesize =3D <32>;
>  		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
> +		vcc-supply =3D <&reg_mba6_3p3v>;
>=20
>  		mba_mac_address: mac-address@20 {
>  				reg =3D <0x20 0x6>;
> diff --git a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi index 85866cfed965..c97bd67462e7
> 100644
> --- a/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-mba6b.dtsi
> @@ -25,6 +25,7 @@ &i2c3 {
>  	lm75: temperature-sensor@49 {
>  		compatible =3D "national,lm75";
>  		reg =3D <0x49>;
> +		vs-supply =3D <&reg_mba6_3p3v>;
>  	};
>=20
>  	m24c64_57: eeprom@57 {
> @@ -33,6 +34,7 @@ m24c64_57: eeprom@57 {
>  		pagesize =3D <32>;
>  		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
> +		vcc-supply =3D <&reg_mba6_3p3v>;
>=20
>  		mba_mac_address: mac-address@20 {
>  				reg =3D <0x20 0x6>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


