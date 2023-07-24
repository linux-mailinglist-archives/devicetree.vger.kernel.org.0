Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C80FD75F905
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 15:56:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231176AbjGXN4Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 09:56:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230091AbjGXN4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 09:56:09 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32DB7172A
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 06:55:20 -0700 (PDT)
Received: from [IPv6:2a00:23c8:b70a:ae01:4b55:7e48:2f02:9031] (unknown [IPv6:2a00:23c8:b70a:ae01:4b55:7e48:2f02:9031])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: obbardc)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 7D8936606FC0;
        Mon, 24 Jul 2023 14:55:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1690206918;
        bh=DSzJCzVVgXMsqwyT46G89VxBUT73qzTsbI2ZywZO8tw=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=F+wUx/CLkMjwKoTa2YarTGJoszgngcyx4h+pSC3+2jUO4DNZQorwLZCDSIR/G4jo1
         SOdD5tYUcsLKlmGFrXBzmdBGmcOhxObJUBQV5rXJ+5QoNDfp2k8M+q9dwansG11zgf
         IIh8LOdeAEJIKFx5Z/jckVxqDGcyy7nsIA32xewYkfdx6LUeuU1s96SveAQhXPVS3y
         9SZkfOGmcVrd5RjuDZsFyCzALtDHXn1SFaa/DhOGZ9xfyVuU/rcZp3zTgejDUFVk12
         jSDK4zUiyCM6RwC2g+3Wc80IWcCdMyuzYDljk7J/S6bAgzCFmOCJwazpEsv6tNgj2d
         Ya3YAY3dNAkrg==
Message-ID: <51af40e5fa8e22411b654bbb894bb0fee19be8f9.camel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
From:   Christopher Obbard <chris.obbard@collabora.com>
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        kernel <kernel@collabora.com>
Date:   Mon, 24 Jul 2023 14:55:16 +0100
In-Reply-To: <20230719122123.3702588-1-jagan@amarulasolutions.com>
References: <20230719122123.3702588-1-jagan@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2023-07-19 at 17:51 +0530, Jagan Teki wrote:
> The power supply circuit in ROC-RK3399-PC is
>=20
> Power Supply (or PPS) =3D> FUSB =3D> MP8859
>=20
> VUBS pin of FUSB and IN pin of MP8859 is supplied via TYPEC_IN.
>=20
> The MP8859 operated with 2.8V to 22V supply voltage and typical
> applications this supply can be 12V.
>=20
> This patch is trying to support the PD by changing the FUSB VBUS supply
> to 12V and tune the I2C7 timings from downstream kernel.
>=20
> Tested with PD3.0 PPS with supply voltages of 12V/3A and 20V/5A.

Hi Jagan,

This series works fine with a "dumb" (no PD negotiation) 5.1V Raspberry Pi =
PSU.

It also works fine with a Dell 45W USB-C Laptop Power Supply (model AA45NM1=
70) which provides 5V@3A,9V@3A,15V@3A,20V@2.25A, where Linux master fails a=
nd just tells the USB-PD PSU to power-off.

It doesn't work with a Lenovo 65W PSU (model ADLX65YLC3D) which provides 5V=
@2A,9V@2A,15V@3A,20V@3.25A, after negotiation the driver turns the PD PSU o=
ff and on again, resetting the board.
So it'd be great to get this fixed, but it seems like the sink-pdos should =
already support this PSU ?


As a side note for full transparency, another issue is that with Linux mast=
er or with this patch applied, applying power to the DC_12V header without =
a USB-C PSU connected (e.g. powering from the POE
expansion shield), boot hangs and dumps to an initramfs shell with:

  [    7.411798] random: crng init done
  [   12.568138] platform fe3a0000.usb: deferred probe pending
  [   12.568673] platform sdio-pwrseq: deferred probe pending
  [   12.569162] platform fe3e0000.usb: deferred probe pending
  [   12.569658] platform adc-keys: deferred probe pending
  [   12.570123] i2c 7-0022: deferred probe pending
  [   12.570533] i2c 4-0022: deferred probe pending
  [   12.570944] platform ff940000.hdmi: deferred probe pending
  [   12.571448] platform vcc3v0-sd: deferred probe pending
  [   12.572000] platform vcc1v8-s3: deferred probe pending
  [   12.572475] platform sys-12v: deferred probe pending
  [   12.572933] platform vcc3v3-sys: deferred probe pending
  [   12.573412] platform fe320000.mmc: deferred probe pending
  [   12.573907] platform vcca-0v9: deferred probe pending
  [   12.574371] platform vcc5v0-host-regulator: deferred probe pending
  [   12.574935] platform ff770000.syscon:usb2phy@e450: deferred probe pend=
ing
  [   12.575552] platform vcc-vbus-typec1: deferred probe pending
  [   12.576090] platform fe300000.ethernet: deferred probe pending
  [   12.576623] platform vcc-sys: deferred probe pending
  [   12.577080] platform ff770000.syscon:usb2phy@e460: deferred probe pend=
ing
  [   12.577697] platform ff320000.syscon:io-domains: deferred probe pendin=
g
  [   12.578298] platform ff770000.syscon:io-domains: deferred probe pendin=
g
  [   12.578901] platform fe800000.usb: deferred probe pending
  [   12.579395] platform fe900000.usb: deferred probe pending
  [   12.579904] platform vdd-log: deferred probe pending
  [   12.580362] i2c 0-001b: deferred probe pending
  [   12.580772] i2c 0-0040: deferred probe pending
  [   12.581182] platform cpufreq-dt: deferred probe pending
  [   12.581663] i2c 0-0041: deferred probe pending



Thanks,

Chris

>=20
> Cc: Corentin Labbe <clabbe@baylibre.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> =C2=A0.../boot/dts/rockchip/rk3399-roc-pc.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | 19 ++++++++++++++++---
> =C2=A01 file changed, 16 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64=
/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index c32913df93c3..8963b3858eae 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -6,6 +6,7 @@
> =C2=A0/dts-v1/;
> =C2=A0#include <dt-bindings/input/linux-event-codes.h>
> =C2=A0#include <dt-bindings/pwm/pwm.h>
> +#include "dt-bindings/usb/pd.h"
> =C2=A0#include "rk3399.dtsi"
> =C2=A0#include "rk3399-opp.dtsi"
> =C2=A0
> @@ -524,8 +525,9 @@ &i2c3 {
> =C2=A0};
> =C2=A0
> =C2=A0&i2c4 {
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i2c-scl-rising-time-ns =3D <60=
0>;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i2c-scl-falling-time-ns =3D <2=
0>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0clock-frequency =3D <400000>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i2c-scl-rising-time-ns =3D <34=
5>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i2c-scl-falling-time-ns =3D <1=
1>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fusb1: usb-typec@22 {
> @@ -552,8 +554,19 @@ fusb0: usb-typec@22 {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0interrupts =3D <2 IRQ_TYPE_LEVEL_LOW>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0pinctrl-names =3D "default";
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0pinctrl-0 =3D <&fusb0_int>;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0vbus-supply =3D <&vcc_vbus_typec0>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0vbus-supply =3D <&dc_12v>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0connector {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0compatibl=
e =3D "usb-c-connector";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0data-role=
 =3D "dual";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0label =3D=
 "USB-C";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0power-rol=
e =3D "sink";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0try-power=
-role =3D "sink";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0op-sink-m=
icrowatt =3D <10000000>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sink-pdos=
 =3D <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PDO_VAR(500=
0, 20000, 5000)>;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0};
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mp8859: regulator@66 {

--=20
Christopher Obbard BEng (Hons) MIET
Senior Engineer

Collabora Ltd
Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
Registered in England & Wales no 5513718.
This message is intended for the use of only the person(s) ("intended
recipient") to whom it is addressed.=20
It may contain information that is privileged and confidential.
Accordingly, any dissemination, distribution, copying or other use of
this message or any of its content by any person other than the
intended recipient may constitute a breach of civil or criminal law and
is strictly prohibited.

