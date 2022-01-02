Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4577482A46
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:34:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231358AbiABGeY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:34:24 -0500
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:52433 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230374AbiABGeY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:34:24 -0500
Received: (Authenticated sender: cyril@debamax.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id B0E93E0003;
        Sun,  2 Jan 2022 06:34:19 +0000 (UTC)
Date:   Sun, 2 Jan 2022 07:34:18 +0100
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
Message-ID: <20220102063418.acneigxran2a6cpr@debamax.com>
Organization: DEBAMAX
References: <20211231115109.94626-1-uwe@kleine-koenig.org>
 <20220102043322.zv4r255yha5pvsp4@debamax.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vgmkr7wylo5c3ubn"
Content-Disposition: inline
In-Reply-To: <20220102043322.zv4r255yha5pvsp4@debamax.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--vgmkr7wylo5c3ubn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Cyril Brulebois <cyril@debamax.com> (2022-01-02):
> In passing, I'm seeing the RTC exclusively on (userspace) i2c-2 while
> I'm seeing the LED matrix on both (userspace) i2c-2 and i2c-3: [=E2=80=A6]

After a few more tests/reboots, checking the output of `i2cdetect -l`
gives the appropriate information, so that one can pick the right i2c-N
device, by looking at the *-mux entries and their channel IDs:

    =E2=80=A6
    i2c-2	i2c       	bcm2835 (i2c@7e205000)          	I2C adapter
    =E2=80=A6
    i2c-4	i2c       	i2c-2-mux (chan_id 0)           	I2C adapter
    i2c-5	i2c       	i2c-2-mux (chan_id 1)           	I2C adapter

And indeed, those channel IDs match what's been defined in the DTB, with
#0 set to i2c0_gpio0 (e.g. LED matrix on 40-pin header) and #1 set to
i2c0_gpio44 (e.g. RTC, fan control, etc.), which seem quite consistent
this time:

 - `i2cdetect -y 4` reports only 74 (the LED matrix);
 - `i2cdetect -y 5` reports 0c, 2f, and 51 as UU (the RTC).


Cheers,
--=20
Cyril Brulebois -- Debian Consultant @ DEBAMAX -- https://debamax.com/

--vgmkr7wylo5c3ubn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEHoutkuoaze1Qayc7lZpsmSeGm2EFAmHRR2YACgkQlZpsmSeG
m2HdFRAAsfQfb8qbA+M4+ZArZSV1sl3Ee7aFQ8e0DmehGt5tbULy11YbqnGP6xRh
cmhZuSvj8VsEfs4AtTAufPYJpNPAoucAJ+gEDdnS3ug2yjbf2WG7ZsoH063Uagt/
ypl2u5QZUF/WrUbiZnAL/Ym5PCq5zsZ6PYFXj7wC8uMs86IKcxHD5kO5rrgfCTgT
8qhKHzCQ4SjfApQvYLuSTYBUw6K3BvMb/K9mR5kxnPS0Q9ufysxXkcyCXe1mr9rU
J9cQOIBbe6LNLemqIpyF0w/+MpjWa7HCaaaps7dWklYF4Xf4SGbfsjSc8t6XgLo6
Jpn+O2FhAYaNeDj8EFMvBqWhtfLTPXMA1rS7mKECHMQIa/5VT5M1bs1xzSfbuH/O
voaylQC0cETdOa6dhlrno+n4z6/oG9syJkTh7BlAfD3iHLx8WNaQIYfBouNNz8/V
kmPXAzPWJrrVDvnpZ16Y8T3Zl83r3/E4MSeWPflxzsT31kwmVydzXNhWkT0nzgqP
yepbB1qfTPo4qafc612Dv0mZLkFYO2eMmvy4YwAd7Xqc/jfP8bHTp2MvWUaSO17+
H9/RKaBnVKfUKEPAkkkRgovYPi8y45nfQKFcGIceCMjB87XnA3+YjmAH6olkSCN5
C5MbsVeNw5cwT2xlZYPjzpqvgIZ3ZTlub2ZuhRv+7+UsgxlZFeU=
=pXDU
-----END PGP SIGNATURE-----

--vgmkr7wylo5c3ubn--
