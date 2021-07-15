Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E82103C9EAF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 14:34:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237331AbhGOMg5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 08:36:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237339AbhGOMg4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 08:36:56 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE7BFC06175F
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 05:34:03 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mkl@pengutronix.de>)
        id 1m40Yu-0003MP-Ux; Thu, 15 Jul 2021 14:33:57 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:968e:ea40:4726:28f1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (Client did not present a certificate)
        (Authenticated sender: mkl-all@blackshift.org)
        by smtp.blackshift.org (Postfix) with ESMTPSA id 7900864FF4D;
        Thu, 15 Jul 2021 12:15:17 +0000 (UTC)
Date:   Thu, 15 Jul 2021 14:15:16 +0200
From:   Marc Kleine-Budde <mkl@pengutronix.de>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Joakim Zhang <qiangqing.zhang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
Message-ID: <20210715121516.pjhbjhf6htds6n65@pengutronix.de>
References: <20210715114953.24393-1-qiangqing.zhang@nxp.com>
 <CAOMZO5Dz1J01Auv5MXc+WajT4AaxHWKStw6RxX3_+LY+9wiimg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2peattqck7qmbrsx"
Content-Disposition: inline
In-Reply-To: <CAOMZO5Dz1J01Auv5MXc+WajT4AaxHWKStw6RxX3_+LY+9wiimg@mail.gmail.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--2peattqck7qmbrsx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 15.07.2021 09:03:55, Fabio Estevam wrote:
> Hi Joakim,
>=20
> On Thu, Jul 15, 2021 at 8:49 AM Joakim Zhang <qiangqing.zhang@nxp.com> wr=
ote:
> >
> > FlexCAN on i.MX8MP is not derived from i.MX6Q, instead resues from
> > i.MX8QM with extra ECC added. With "fsl,imx6q-flexcan" compatible strin=
g,
> > i.MX8MP FlexCAN would not work, so remove this fallback compatible stri=
ng.
>=20
> I agree with the removal of "fsl,imx6q-flexcan", but I don't
> understand your comment
> saying that:
>=20
> "With "fsl,imx6q-flexcan" compatible string, i.MX8MP FlexCAN would not wo=
rk"
>=20
> Why?

Don't remember exactly why It doesn't work. I think it was a missing
quirk that the imx6 doesn't need.

> "fsl,imx8mp-flexcan" is passed as the more specific compatible string
> and it should match against it first.

ACK - but why specify the imx6 in the compatible list if the flexcan IP
core isn't compatible with the one of the imx6?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--2peattqck7qmbrsx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmDwJtIACgkQqclaivrt
76npTAf/R45USqfrbKP+MtC5ztyrEHFdkW2C/S+TmV44xQm07eJ5E3wrrChmXMtR
kQAyYua70bJitoJ9U5PaeNr7VKu0s+/VuYTv0de+ZcAsSME3pkvW3kTpZYw1oYdE
jyjNNfnKLiqYRaykAKd6WoI3NCw5nlzZX8AwgDXMX3SezsHK6iwyVWWGCEQNA9Lz
jVQD1JRiJizqRwAZLBHyeAGHOJsWWCSuMgx+YTqIgYE6Io5om2SbIIAX0/4wnbNu
+cWmjt7x1Gi/kvqZQmJUrkzZJSZJsWK2lfqOIG8ZnUXf9v26G5XqjpJNSbXqilz7
pF9nIsIE0F4q938gj9WyOqn/ZhJTPw==
=hZ+U
-----END PGP SIGNATURE-----

--2peattqck7qmbrsx--
