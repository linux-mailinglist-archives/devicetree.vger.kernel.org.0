Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A917760C90
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 10:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231616AbjGYICb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 04:02:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232163AbjGYIC1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 04:02:27 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9C42120
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 01:02:25 -0700 (PDT)
Received: from [IPv6:2a00:23c8:b70a:ae01:40e7:5206:308c:f3ed] (unknown [IPv6:2a00:23c8:b70a:ae01:40e7:5206:308c:f3ed])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: obbardc)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 173C66607106;
        Tue, 25 Jul 2023 09:02:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1690272144;
        bh=0BGaOZ6JDV587wQupiasiVA/bWm/Xv4uJScil2vAHyM=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=D8bhEbiI6WI8TOi1a2biKDFeXHayQ+B7/G045bb3C8JxLr1F6PKldVGJPR8v0sKts
         ZRF/6mwJqVPLPqCBySH0GmwWAnlVjnnEh6CehToKMYdTQJ8Y6KHlIIETyM5v7IKzy1
         8WHBqZHKIbGYgumeIjChOTH7lSuOivBt1XMO5lJ4Sw+CwC6J8ITyjWBgdyVST4mQt1
         9SQze/XIuhBoHhfY4MWRajnyiqi9EyKQzwnNFw3mXC1rs+ic/6nlxoeYLJF+jTiKr3
         3wGSGogj2NsyqAhCJ5sRsLKDbypjHGpMSVfpCgIxwD+2YbWcH9Tk5lTaZo2sOx9nPv
         ESFBpHfsG8X7g==
Message-ID: <8ec1c4bb97ba0857275a540590fb302929436ba4.camel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
From:   Christopher Obbard <chris.obbard@collabora.com>
To:     Da Xue <da@lessconfused.com>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        kernel <kernel@collabora.com>
Date:   Tue, 25 Jul 2023 09:02:21 +0100
In-Reply-To: <CACdvmAia49_YiKpVvT=yeLWF+YGm+2vFK3rdwRB9XOAH5mm=-w@mail.gmail.com>
References: <20230719122123.3702588-1-jagan@amarulasolutions.com>
         <51af40e5fa8e22411b654bbb894bb0fee19be8f9.camel@collabora.com>
         <CACdvmAia49_YiKpVvT=yeLWF+YGm+2vFK3rdwRB9XOAH5mm=-w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Da, Jagan,

On Tue, 2023-07-25 at 03:39 -0400, Da Xue wrote:
> On Mon, Jul 24, 2023 at 9:55=E2=80=AFAM Christopher Obbard
> <chris.obbard@collabora.com> wrote:
> >=20
> > On Wed, 2023-07-19 at 17:51 +0530, Jagan Teki wrote:
> > > The power supply circuit in ROC-RK3399-PC is
> > >=20
> > > Power Supply (or PPS) =3D> FUSB =3D> MP8859
> > >=20
> > > VUBS pin of FUSB and IN pin of MP8859 is supplied via TYPEC_IN.
> > >=20
> > > The MP8859 operated with 2.8V to 22V supply voltage and typical
> > > applications this supply can be 12V.
> > >=20
> > > This patch is trying to support the PD by changing the FUSB VBUS supp=
ly
> > > to 12V and tune the I2C7 timings from downstream kernel.
> > >=20
> > > Tested with PD3.0 PPS with supply voltages of 12V/3A and 20V/5A.
> >=20
> > Hi Jagan,
> >=20
> > This series works fine with a "dumb" (no PD negotiation) 5.1V Raspberry=
 Pi PSU.
> >=20
> > It also works fine with a Dell 45W USB-C Laptop Power Supply (model AA4=
5NM170) which provides 5V@3A,9V@3A,15V@3A,20V@2.25A, where Linux master fai=
ls and just tells the USB-PD PSU to power-off.
>=20
> I think this depends on the recent Rockchip TCPM changes. FUSB302 has
> been a pain in the USB or else this platform would have launched a lot
> longer ago.

Sorry, I was testing this patch on top of next-20230724 which includes=C2=
=A0https://patchwork.kernel.org/project/linux-rockchip/list/?series=3D75775=
2:

 8be558dcffe69b078b34b1fa93b82acaf4ce4957 ("usb: typec: tcpm: add get max p=
ower support")
 1e35f074399dece73d5df11847d4a0d7a6f49434 ("usb: typec: tcpm: fix cc role a=
t port reset")

Can you check if I am missing any other patches ?


Thank you

>=20
> >=20
> > It doesn't work with a Lenovo 65W PSU (model ADLX65YLC3D) which provide=
s 5V@2A,9V@2A,15V@3A,20V@3.25A, after negotiation the driver turns the PD P=
SU off and on again, resetting the board.
> > So it'd be great to get this fixed, but it seems like the sink-pdos sho=
uld already support this PSU ?
>=20
> Something to note about USB PD that I read in the TI PD 2.0 paper and
> re-spewing based on memory: during transitions, the sink should
> self-limit to 500mA. If that is the case, the transition behavior is
> up to the source.
>=20
> >=20
> >=20
> > As a side note for full transparency, another issue is that with Linux =
master or with this patch applied, applying power to the DC_12V header with=
out a USB-C PSU connected (e.g. powering from the
> > POE
> > expansion shield), boot hangs and dumps to an initramfs shell with:
> >=20
> > =C2=A0 [=C2=A0=C2=A0=C2=A0 7.411798] random: crng init done
> > =C2=A0 [=C2=A0=C2=A0 12.568138] platform fe3a0000.usb: deferred probe p=
ending
> > =C2=A0 [=C2=A0=C2=A0 12.568673] platform sdio-pwrseq: deferred probe pe=
nding
> > =C2=A0 [=C2=A0=C2=A0 12.569162] platform fe3e0000.usb: deferred probe p=
ending
> > =C2=A0 [=C2=A0=C2=A0 12.569658] platform adc-keys: deferred probe pendi=
ng
> > =C2=A0 [=C2=A0=C2=A0 12.570123] i2c 7-0022: deferred probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.570533] i2c 4-0022: deferred probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.570944] platform ff940000.hdmi: deferred probe =
pending
> > =C2=A0 [=C2=A0=C2=A0 12.571448] platform vcc3v0-sd: deferred probe pend=
ing
> > =C2=A0 [=C2=A0=C2=A0 12.572000] platform vcc1v8-s3: deferred probe pend=
ing
> > =C2=A0 [=C2=A0=C2=A0 12.572475] platform sys-12v: deferred probe pendin=
g
> > =C2=A0 [=C2=A0=C2=A0 12.572933] platform vcc3v3-sys: deferred probe pen=
ding
> > =C2=A0 [=C2=A0=C2=A0 12.573412] platform fe320000.mmc: deferred probe p=
ending
> > =C2=A0 [=C2=A0=C2=A0 12.573907] platform vcca-0v9: deferred probe pendi=
ng
> > =C2=A0 [=C2=A0=C2=A0 12.574371] platform vcc5v0-host-regulator: deferre=
d probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.574935] platform ff770000.syscon:usb2phy@e450: =
deferred probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.575552] platform vcc-vbus-typec1: deferred prob=
e pending
> > =C2=A0 [=C2=A0=C2=A0 12.576090] platform fe300000.ethernet: deferred pr=
obe pending
> > =C2=A0 [=C2=A0=C2=A0 12.576623] platform vcc-sys: deferred probe pendin=
g
> > =C2=A0 [=C2=A0=C2=A0 12.577080] platform ff770000.syscon:usb2phy@e460: =
deferred probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.577697] platform ff320000.syscon:io-domains: de=
ferred probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.578298] platform ff770000.syscon:io-domains: de=
ferred probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.578901] platform fe800000.usb: deferred probe p=
ending
> > =C2=A0 [=C2=A0=C2=A0 12.579395] platform fe900000.usb: deferred probe p=
ending
> > =C2=A0 [=C2=A0=C2=A0 12.579904] platform vdd-log: deferred probe pendin=
g
> > =C2=A0 [=C2=A0=C2=A0 12.580362] i2c 0-001b: deferred probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.580772] i2c 0-0040: deferred probe pending
> > =C2=A0 [=C2=A0=C2=A0 12.581182] platform cpufreq-dt: deferred probe pen=
ding
> > =C2=A0 [=C2=A0=C2=A0 12.581663] i2c 0-0041: deferred probe pending
> >=20
> >=20
> >=20
> > Thanks,
> >=20
> > Chris
> >=20
> > >=20
> > > Cc: Corentin Labbe <clabbe@baylibre.com>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > > =C2=A0.../boot/dts/rockchip/rk3399-roc-pc.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 19 ++++++++++++++++---
> > > =C2=A01 file changed, 16 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/a=
rm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > > index c32913df93c3..8963b3858eae 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > > @@ -6,6 +6,7 @@
> > > =C2=A0/dts-v1/;
> > > =C2=A0#include <dt-bindings/input/linux-event-codes.h>
> > > =C2=A0#include <dt-bindings/pwm/pwm.h>
> > > +#include "dt-bindings/usb/pd.h"
> > > =C2=A0#include "rk3399.dtsi"
> > > =C2=A0#include "rk3399-opp.dtsi"
> > >=20
> > > @@ -524,8 +525,9 @@ &i2c3 {
> > > =C2=A0};
> > >=20
> > > =C2=A0&i2c4 {
> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i2c-scl-rising-time-ns =3D <600=
>;
> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i2c-scl-falling-time-ns =3D <20=
>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock-frequency =3D <400000>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i2c-scl-rising-time-ns =3D <345=
>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i2c-scl-falling-time-ns =3D <11=
>;
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 status =3D "okay";
> > >=20
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fusb1: usb-typec@22 {
> > > @@ -552,8 +554,19 @@ fusb0: usb-typec@22 {
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 interrupts =3D <2 IRQ_TYPE_LEVEL_LOW>;
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 pinctrl-names =3D "default";
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 pinctrl-0 =3D <&fusb0_int>;
> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 vbus-supply =3D <&vcc_vbus_typec0>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 vbus-supply =3D <&dc_12v>;
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 status =3D "okay";
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 connector {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatib=
le =3D "usb-c-connector";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 data-rol=
e =3D "dual";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 label =
=3D "USB-C";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 power-ro=
le =3D "sink";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try-powe=
r-role =3D "sink";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 op-sink-=
microwatt =3D <10000000>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sink-pdo=
s =3D <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PDO_V=
AR(5000, 20000, 5000)>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 };
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
> > >=20
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mp8859: regulator@66 {
> >=20
> > --
> > Christopher Obbard BEng (Hons) MIET
> > Senior Engineer
> >=20
> > Collabora Ltd
> > Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
> > Registered in England & Wales no 5513718.
> > This message is intended for the use of only the person(s) ("intended
> > recipient") to whom it is addressed.
> > It may contain information that is privileged and confidential.
> > Accordingly, any dissemination, distribution, copying or other use of
> > this message or any of its content by any person other than the
> > intended recipient may constitute a breach of civil or criminal law and
> > is strictly prohibited.
> >=20
> >=20
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
>=20
