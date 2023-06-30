Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A51AE7436D3
	for <lists+devicetree@lfdr.de>; Fri, 30 Jun 2023 10:16:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231455AbjF3IQl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jun 2023 04:16:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230158AbjF3IQk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jun 2023 04:16:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9890A1997
        for <devicetree@vger.kernel.org>; Fri, 30 Jun 2023 01:16:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 36393616F6
        for <devicetree@vger.kernel.org>; Fri, 30 Jun 2023 08:16:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DAC9C433C0;
        Fri, 30 Jun 2023 08:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688112998;
        bh=L2Bqk5OUv7P0DhnUUbcJYDUftg6MpFkMggFdEpg+EzU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XXRoZUQRBdRQdC+1o4Zyj3zdT0lIF0YvjfCYDcxog46SYsl5GcJ62rwu0f5LidZf6
         wx9T0eP95Q+X51JvDYYB0deO2jp5f7v+m+8UUT4bYB0piNN6FTR/Bs1n/Ns0BTz8MN
         oFOlUiqaPnMWusZQ6qwTv1LfBMfYdbkquG7L6OGj5fFXYunvGjX/UQEM11THTFw7qx
         tRkkK1Mi+FWHLBl+K9FOWTV/2sqSn5wMAp6WSyaIS2b1/YksxMxKItQstOGoY2IZGs
         idZuHzmmlW0EDJwo5Clv9TpMKADjbIil1mvdUorRYH0LyRDu9PeGtAHCob+fYJqY80
         Bdypri/GyJX7w==
Date:   Fri, 30 Jun 2023 10:16:35 +0200
From:   Maxime Ripard <mripard@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chris Morgan <macromorgan@hotmail.com>,
        Chris Morgan <macroalpha82@gmail.com>,
        linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        uwu@icenowy.me, samuel@sholland.org, jernej.skrabec@gmail.com,
        wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 3/3] ARM: dts: sunxi: add support for Anbernic RG-Nano
Message-ID: <ytgchgmhgegjdqe44yamcgh6ovk6yxbpj2oxgrtslqle5tskvl@np2oxx4l6a5w>
References: <20230620200022.295674-1-macroalpha82@gmail.com>
 <20230620200022.295674-4-macroalpha82@gmail.com>
 <20230621105228.41ca9fcf@donnerap.cambridge.arm.com>
 <SN6PR06MB53426B6D9456C68AAE8C51B0A527A@SN6PR06MB5342.namprd06.prod.outlook.com>
 <20230629203410.660eb9a4@slackpad.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="aubmr3hyym4b2f3n"
Content-Disposition: inline
In-Reply-To: <20230629203410.660eb9a4@slackpad.lan>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--aubmr3hyym4b2f3n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 29, 2023 at 08:34:10PM +0100, Andre Przywara wrote:
> > > > +&usbphy {
> > > > +	usb0_id_det-gpios =3D <&pio 5 6 GPIO_ACTIVE_HIGH>;
>=20
> Where is this pin connected to, in the USB-C connector? One of the CC
> pins?
>=20
> > > > +	status =3D "okay"; =20
> > >=20
> > > So in the commit message you say "USB-C for power", but this here
> > > describes a full featured USB port. So does that work? Can you use it=
 as a
> > > gadget, but also as a host? =20
> >=20
> > Yes, it's an OTG port with the ID pin pulled to ground.
>=20
> Do you mean both CC pins? IIRC this means it's hardwired as a
> peripheral (UFP).
>=20
> If I ignore the ID pin above, this looks like on the OrangePi Zero2 or
> the MangoPi MQ-R. In those cases we put peripheral in the DT, as this
> is what this connection seems to indicate. That *can* be used a host as
> well, with the "right" cable, but it's not really a well supported
> configuration, so we leave this up to people to change this locally,
> should they really desire so.

The ID pin above is exactly what makes "the right cable" works:
depending on the state of the ID pin the controller will act either as a
peripheral or a host. Dual-mode works just fine, so if the hardware
supports it there's no reason not to enable it.

Maxime

--aubmr3hyym4b2f3n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZJ6PYwAKCRDj7w1vZxhR
xVsdAP9wv8TWgxBbhFEUlsThGRD3a2rj2pLnq8AfD7HXTRqAUAD/SIbSPIGFx7Ml
w6Rdb0aUFBhit7AHd0spORfjFBlruAA=
=aiyU
-----END PGP SIGNATURE-----

--aubmr3hyym4b2f3n--
