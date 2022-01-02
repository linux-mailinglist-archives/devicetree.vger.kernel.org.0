Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6052F48291C
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 05:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230322AbiABEdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Jan 2022 23:33:31 -0500
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:54729 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230316AbiABEda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Jan 2022 23:33:30 -0500
Received: (Authenticated sender: cyril@debamax.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 6607D1C0002;
        Sun,  2 Jan 2022 04:33:23 +0000 (UTC)
Date:   Sun, 2 Jan 2022 05:33:22 +0100
From:   Cyril Brulebois <cyril@debamax.com>
To:     Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
Message-ID: <20220102043322.zv4r255yha5pvsp4@debamax.com>
Organization: DEBAMAX
References: <20211231115109.94626-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wkth3ac3myg2fh5p"
Content-Disposition: inline
In-Reply-To: <20211231115109.94626-1-uwe@kleine-koenig.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wkth3ac3myg2fh5p
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org> (2021-12-31):
> The cm4-io board comes with an PCF85063. Add it to the device tree to make
> it usable. The i2c0 bus can use two different pinmux settings to use
> different pins. To keep the bus appearing on the usual pin pair (gpio0 +
> gpio1) use a pinctrl-muxed setting as the vendor dts does.
>=20
> Note that if you modified the dts before to add devices to the i2c bus
> appearing on pins gpio0 + gpio1 (either directly in the dts or using an
> overlay), you have to put these into the i2c@0 node introduced here now.
>=20
> Reviewed-by: Maxime Ripard <maxime@cerno.tech>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>

Tested-by: Cyril Brulebois <cyril@debamax.com>


Test hardware:
 - 1 Compute Module 4 IO Board;
 - 1 GPIO Extension Board, plugged onto the 40-pin header (mainly used
   for its labels, to ensure I'm using the correct pins);
 - 1 Pimoroni 5x5 RGB LED matrix, plugged onto SDA0/SCL0 as exposed by
   the GPIO Extension Board (plus 3.3V/GND of course);
 - Debian 11 userspace.

With the updated DTB, and provided the right kernel modules have been
enabled (CONFIG_RTC_DRV_PCF85063, CONFIG_I2C_MUX_PINCTRL), the RTC comes
up automatically; I'm also able to use the relevant library to display a
rotating rainbow on the LED matrix while being able to read from / write
to the RTC:
  https://github.com/pimoroni/rgbmatrix5x5-python

In passing, I'm seeing the RTC exclusively on (userspace) i2c-2 while
I'm seeing the LED matrix on both (userspace) i2c-2 and i2c-3:

    # i2cdetect -y 2
         0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
    00:                         -- -- -- -- 0c -- -- --=20
    10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 2f=20
    30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    50: -- UU -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    70: -- -- -- -- -- -- -- --                        =20
   =20
    # i2cdetect -y 3
         0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
    00:                         -- -- -- -- -- -- -- --=20
    10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --=20
    70: -- -- -- -- 74 -- -- --                        =20

Tweaking the library to use either of those makes the rotation rainbow
display successfully (via python3-smbus):

    self.i2c =3D smbus.SMBus(2)
    self.i2c =3D smbus.SMBus(3)


Cheers,
--=20
Cyril Brulebois -- Debian Consultant @ DEBAMAX -- https://debamax.com/

--wkth3ac3myg2fh5p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEHoutkuoaze1Qayc7lZpsmSeGm2EFAmHRKwkACgkQlZpsmSeG
m2HiFQ//e8HA+ACMTxEAqc8aVbq5H9bYWgELq7LSwMjpCSdITN5rH27jx08gRdKU
3kB+XzYXwNXG0mBUdx995O0mGl+p+qXCow3EJTH4CWRTWz58l80tPDrOLz3Q4iuG
rfIWr9Eb0u6htL2L+bzJNLEig6BnrgiUL5PYR9JhWn/q6si49s0ZNl6xKwtK3N3c
INhDyOhvbUH/mPw9diNDMAVF4uma2ZOE7mJKx+yNGOoMl1+7iKLcr489+yX6v2BP
M17VtjsBB80g9yH4hM/YJI+J7jvazqH+5mPGdRYJIkOYamS/UDda8rBArGsbKB0+
+YcGwu5B9jrBu0A5t36Mjt/ouwQu5ILC3ODDj5lvlGxsHmFfdAHW35tYKUkS1oe+
/zWjvDwPNpRujshY0Vd6y9zrF+9+RKGCGYignuKFHq/jrg85/WoIegJB1D6esL5Z
ic15DPO4x+IQ+ZTfJJUXQqMEyv+/94iIX9pY1w8G3WrAupH2mxFopePrdFVlXxRL
cRAwPUJCSgmwLdrxIF+f0omUNqrnSli0h+t+dnzPuUj+INbXtbSTVHzYF/w4kvHr
seGBXx0aJSVgJS/biy3daR+bR1pFKlrqrcXuZYoOnNLjnQmR1FNq6CeOaOTn5XcJ
SxlEbgfZPdGJSyxlDSlFSalBRacmz1JagaQPmlJP02ZE8iltAM0=
=1hOs
-----END PGP SIGNATURE-----

--wkth3ac3myg2fh5p--
