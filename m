Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC75A47A01B
	for <lists+devicetree@lfdr.de>; Sun, 19 Dec 2021 10:56:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235539AbhLSJ4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Dec 2021 04:56:17 -0500
Received: from mout-p-201.mailbox.org ([80.241.56.171]:8788 "EHLO
        mout-p-201.mailbox.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbhLSJ4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Dec 2021 04:56:17 -0500
Received: from smtp102.mailbox.org (smtp102.mailbox.org [80.241.60.233])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4JGym003HBzQjkC;
        Sun, 19 Dec 2021 10:56:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639907773;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=IqNonhnZ7va7CG4xM/AGGpFbwPX8GSn4tg3EfD8HA5c=;
        b=TqmHdHnJy+RlFc3gYwkc7BwG1sbIEM3bJKFNta78h4sCa4XvGUghkjP2bqZrzAN4A7jraA
        dBpcJG+AesTBrYei+AIL1bOcMsMeyMzU+bMpXUi//+k7gEwp3V74J5Gz3ZY3Zmnrm+D28L
        ThxqCZI5DuOLFlMXj0jrXbiUNhpquJ16GdlNeXdUBec5ohBoEntHk9Yt0FZxSlBwVL2rpy
        p1zo0wB1r7Ht3M+eBPq+RntwWs0L77hNYRgfaDu9QJeYYfi/jSD4Q2ps+ImaF3AP/63GXY
        lfw9+7nnXY+6sKCHE0ikEXhOb/WonHAbjOQ9uXOw7xGiNwvHNTlB2fRLaBPqlA==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: meson-g12b-odroid-n2: move assigned-clocks
Date:   Sun, 19 Dec 2021 10:56:11 +0100
Message-ID: <4534376.LvFx2qVVIh@kongar>
In-Reply-To: <1j4k769ch7.fsf@starbuckisacylon.baylibre.com>
References: <20211218142632.15293-1-alexander.stein@mailbox.org> <1j4k769ch7.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 18. Dezember 2021, 16:03:16 CET schrieb Jerome Brunet:
>=20
> On Sat 18 Dec 2021 at 15:26, Alexander Stein <alexander.stein@mailbox.org=
> wrote:
>=20
> > dtschema expects a 'clocks' property if 'assigned-clocks' is used, but
> > 'sound' node does not.
> > So move the MPLL[0-2] clock settings &clkc_audio which actually use the=
m.
>=20
> No, this does not make sense.
> The sound card needs the clocks set in such way - nothing else
> The clock controller work just as well regarless of the clock rate
>=20
> Having a clock property or not does not change that

Well, I checked what others did to fix this warning. So I did the same as i=
n [1].
Despite that, IMHO if you split 'assigned-clocks' for the same clock =B4all
over users who is gonna win? Because the sound card needs the clocks set
his way it is set, it is done in the same file.

Best regards,
Alexander

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D4afb06afd76855932a2d19c983c013105f1cfb9a

> > This fixes the dtschema warning:
> > arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dt.yaml: sound: 'clock=
s' is a dependency of 'assigned-clocks'
> >
>=20
> Then the schema needs fixing IMO
>=20
> > Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> > ---
> >  .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi    | 15 +++++++--------
> >  1 file changed, 7 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/ar=
ch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> > index 9c05c83453f5..85257507206c 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> > @@ -252,14 +252,6 @@ sound {
> >  				"U19 INR", "ACODEC LORP",
> >  				"Lineout", "U19 OUTL",
> >  				"Lineout", "U19 OUTR";
> > -
> > -		assigned-clocks =3D <&clkc CLKID_MPLL2>,
> > -				  <&clkc CLKID_MPLL0>,
> > -				  <&clkc CLKID_MPLL1>;
> > -		assigned-clock-parents =3D <0>, <0>, <0>;
> > -		assigned-clock-rates =3D <294912000>,
> > -				       <270950400>,
> > -				       <393216000>;
> >  		status =3D "okay";
> > =20
> >  		dai-link-0 {
> > @@ -365,6 +357,13 @@ &cecb_AO {
> >  };
> > =20
> >  &clkc_audio {
> > +	assigned-clocks =3D <&clkc CLKID_MPLL2>,
> > +				<&clkc CLKID_MPLL0>,
> > +				<&clkc CLKID_MPLL1>;
> > +	assigned-clock-parents =3D <0>, <0>, <0>;
> > +	assigned-clock-rates =3D <294912000>,
> > +					<270950400>,
> > +					<393216000>;
> >  	status =3D "okay";
> >  };
>=20
>=20




