Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76B923CB2EC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 09:03:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235110AbhGPHGg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 03:06:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235006AbhGPHGf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 03:06:35 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25D51C06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 00:03:41 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mkl@pengutronix.de>)
        id 1m4Hsk-0004iG-5F; Fri, 16 Jul 2021 09:03:34 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:df95:c0e5:d620:3bac])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (Client did not present a certificate)
        (Authenticated sender: mkl-all@blackshift.org)
        by smtp.blackshift.org (Postfix) with ESMTPSA id 84FE4650776;
        Fri, 16 Jul 2021 07:03:32 +0000 (UTC)
Date:   Fri, 16 Jul 2021 09:03:31 +0200
From:   Marc Kleine-Budde <mkl@pengutronix.de>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
Message-ID: <20210716070331.tqkqmxl6jqz2mxnj@pengutronix.de>
References: <20210715114953.24393-1-qiangqing.zhang@nxp.com>
 <CAOMZO5Dz1J01Auv5MXc+WajT4AaxHWKStw6RxX3_+LY+9wiimg@mail.gmail.com>
 <20210715121516.pjhbjhf6htds6n65@pengutronix.de>
 <DB8PR04MB679527BB056BC918FE6D2E53E6119@DB8PR04MB6795.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5ccb4n3zhmp4w52e"
Content-Disposition: inline
In-Reply-To: <DB8PR04MB679527BB056BC918FE6D2E53E6119@DB8PR04MB6795.eurprd04.prod.outlook.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--5ccb4n3zhmp4w52e
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 16.07.2021 02:03:44, Joakim Zhang wrote:
>>> "With "fsl,imx6q-flexcan" compatible string, i.MX8MP FlexCAN would
>>> not work"
>>
>> Why?

> I could explain more if I remember correctly, i.MX8MP with ECC added
> and default is enabled, without FLEXCAN_QUIRK_DISABLE_MECR quirk,
> FlexCAN doesn't work, it will put device in freeze mode. However, as
> Mac described, i.MX6Q doesn't need it.

The bits that are used in the FLEXCAN_QUIRK_DISABLE_MECR are marked as
reserved on the imx6's flexcan IP core.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--5ccb4n3zhmp4w52e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmDxLz8ACgkQqclaivrt
76mNDQf+M0GyyDRyIavcEXKQdyqWcThvoV1bgiGFCqD8BWfEmQ+12C5P3UxLbm9g
JwZRcQkgqQsTwZsrqLL35APMsc3TbM5oWbts8JpPzwq0dxM+H6t+oAvFe/pEZHJZ
INjftbf2DBMeyKhxxn2KI8bH9/qsU4UtJvAcLtqUeRQO0RJmTBxfYbJedD8wniVT
R2/BqPb6EyRFurmI7Kqcc81dYjP3Kzen4PC1HlcaB8+h2nsFbhM6t0GkC502P3bA
kR0JN50pZ46QO2uSOsKMG9dPjezwwrYRCQMMo0eOb/odr7DtHL2a1+6L2tGAaqau
7Qpl6q/8JUJglLg+u4H4eg53yeLqpA==
=wQ8R
-----END PGP SIGNATURE-----

--5ccb4n3zhmp4w52e--
