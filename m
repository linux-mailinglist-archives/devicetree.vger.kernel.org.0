Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 901FD47BFC4
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 13:34:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237583AbhLUMes (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 07:34:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234564AbhLUMes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 07:34:48 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE070C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 04:34:47 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id e5so26616419wrc.5
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 04:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version:content-transfer-encoding;
        bh=b/jmZSC412tUFfD3gmJLlzQzAIC3g+qciQB1Jm4blYY=;
        b=X+Wcqu2I6KAq2NJyZFiIgnq+xxdf2JqgSr7wUTrXB5gxn3XnaK2MMGNgFTNK3MRDJJ
         FRongtOunU0CS7YKW4E4xfzp/lSIWFmAM1TNk6L7Qr38oqAbcryfaGk4CFdcKeVz5LJJ
         rGrq7BVStd+lDkEbUnF2ruWKwbQ1/lVWhSuiyJiesnXg22YgJVoxevUm3dzxSFCYY6Ef
         Kb8nDQJIrIczSy4cDAXy6dlEQM/wpdtVMZXe4HV3YMuykjkvqIH0GGf8l7opbtd4DwpF
         vnXhEM15KkAuvBIeEQ0zIbFxY5/Y9Ivf66R4igy8mm25d80+z+NF6EGor3YfZlEqfS4J
         tpZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version:content-transfer-encoding;
        bh=b/jmZSC412tUFfD3gmJLlzQzAIC3g+qciQB1Jm4blYY=;
        b=JML8r953xlf2R3aunpP+p9/tKKeA33aoFw3pOUqF0ZJAftOeXUhOsMqgZOrK9qH4rk
         V+pvTogut/KKdjsc7yOV/H4VsIQiL5tj/82fIaZWKzxY7o1m9+dqQ7e7qYdp1Meoc4S2
         n0mNdIyUcVe3yWegd4fCr4djQTdmtx7pwSqcfAwx2wr73mHTOV1Sm+N7lbKBZGbxu+DB
         dbO6tvtyLqbSRcmjJfu2hS1ovHT/m/hZJ6HvclWApdppiKI7B7DU6eNchp7K9m3DT5A2
         0wyYm6eiK3yAqqy3rdh3ZnXDjDTwWY9YZxVBG4Gq2U6QgoUyqnj/LPI/2VnOvGM13cQe
         +iWg==
X-Gm-Message-State: AOAM531Tx1U+/6cGXE1P1GQPGootEGu/jIb22by1A9Eg7Ma6DKKkx+9N
        /KX3RaDdMYhsBkX/MzjLY23/eA==
X-Google-Smtp-Source: ABdhPJzi8cPliz8CplB/gBW7tP6LLsw9z9Wz+UL71hacW3s39wjzyJfjTY7WskcS4y4UjIVZK8okJA==
X-Received: by 2002:a5d:4144:: with SMTP id c4mr2509533wrq.702.1640090086285;
        Tue, 21 Dec 2021 04:34:46 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id bd8sm2128886wmb.44.2021.12.21.04.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 04:34:45 -0800 (PST)
References: <20211218142632.15293-1-alexander.stein@mailbox.org>
 <1j4k769ch7.fsf@starbuckisacylon.baylibre.com> <4534376.LvFx2qVVIh@kongar>
User-agent: mu4e 1.6.10; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: meson-g12b-odroid-n2: move assigned-clocks
Date:   Tue, 21 Dec 2021 11:54:07 +0100
In-reply-to: <4534376.LvFx2qVVIh@kongar>
Message-ID: <1j4k7287bv.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun 19 Dec 2021 at 10:56, Alexander Stein <alexander.stein@mailbox.org> =
wrote:

> Am Samstag, 18. Dezember 2021, 16:03:16 CET schrieb Jerome Brunet:
>>=20
>> On Sat 18 Dec 2021 at 15:26, Alexander Stein <alexander.stein@mailbox.or=
g> wrote:
>>=20
>> > dtschema expects a 'clocks' property if 'assigned-clocks' is used, but
>> > 'sound' node does not.
>> > So move the MPLL[0-2] clock settings &clkc_audio which actually use th=
em.
>>=20
>> No, this does not make sense.
>> The sound card needs the clocks set in such way - nothing else
>> The clock controller work just as well regarless of the clock rate
>>=20
>> Having a clock property or not does not change that

Also the documentation of assigned does not mandate that.

>
> Well, I checked what others did to fix this warning. So I did the same as=
 in [1].
> Despite that, IMHO if you split 'assigned-clocks' for the same clock =C2=
=B4all
> over users who is gonna win?

1. This is explicitly forbidden by the assigned-clock binding documentation
2. Like other interfaces, it is likely a last write wins

The fact the ID assigned by the card and the one claimed controller are
the same is merely a coincidence. The ID assigned could very well have
been internal to the audio controller.

> Because the sound card needs the clocks set
> his way it is set, it is done in the same file.

If I push this logic further, I may as well put everything at root of DT,
or anywhere else, as long as it is in the same file and there is a clock
property for the schema. We could put it with uart, that would work ;)
(just kidding)

The cards needs these rate because of rate family we choose to support,
and how we choose to support them. This is where the assignment makes
sense.

>
> Best regards,
> Alexander
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/co=
mmit/?id=3D4afb06afd76855932a2d19c983c013105f1cfb9a
>
>> > This fixes the dtschema warning:
>> > arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dt.yaml: sound: 'cloc=
ks' is a dependency of 'assigned-clocks'
>> >
>>=20
>> Then the schema needs fixing IMO
>>=20
>> > Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
>> > ---
>> >  .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi    | 15 +++++++--------
>> >  1 file changed, 7 insertions(+), 8 deletions(-)
>> >
>> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/a=
rch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
>> > index 9c05c83453f5..85257507206c 100644
>> > --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
>> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
>> > @@ -252,14 +252,6 @@ sound {
>> >  				"U19 INR", "ACODEC LORP",
>> >  				"Lineout", "U19 OUTL",
>> >  				"Lineout", "U19 OUTR";
>> > -
>> > -		assigned-clocks =3D <&clkc CLKID_MPLL2>,
>> > -				  <&clkc CLKID_MPLL0>,
>> > -				  <&clkc CLKID_MPLL1>;
>> > -		assigned-clock-parents =3D <0>, <0>, <0>;
>> > -		assigned-clock-rates =3D <294912000>,
>> > -				       <270950400>,
>> > -				       <393216000>;
>> >  		status =3D "okay";
>> >=20=20
>> >  		dai-link-0 {
>> > @@ -365,6 +357,13 @@ &cecb_AO {
>> >  };
>> >=20=20
>> >  &clkc_audio {
>> > +	assigned-clocks =3D <&clkc CLKID_MPLL2>,
>> > +				<&clkc CLKID_MPLL0>,
>> > +				<&clkc CLKID_MPLL1>;
>> > +	assigned-clock-parents =3D <0>, <0>, <0>;
>> > +	assigned-clock-rates =3D <294912000>,
>> > +					<270950400>,
>> > +					<393216000>;
>> >  	status =3D "okay";
>> >  };
>>=20
>>=20

