Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 484D25FACFC
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 08:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbiJKGno (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 02:43:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbiJKGnn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 02:43:43 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61ACA89967
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 23:43:42 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mkl@pengutronix.de>)
        id 1oi8z5-0000Ds-Hm; Tue, 11 Oct 2022 08:43:23 +0200
Received: from pengutronix.de (unknown [IPv6:2a01:4f8:1c1c:29e9:22:41ff:fe00:1400])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (Client did not present a certificate)
        (Authenticated sender: mkl-all@blackshift.org)
        by smtp.blackshift.org (Postfix) with ESMTPSA id 712B1F9BF0;
        Tue, 11 Oct 2022 06:43:19 +0000 (UTC)
Date:   Tue, 11 Oct 2022 08:43:16 +0200
From:   Marc Kleine-Budde <mkl@pengutronix.de>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Daniel Scally <dan.scally@ideasonboard.com>,
        krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, linux-imx@nxp.com, kernel@pengutronix.de,
        festevam@gmail.com
Subject: Re: [PATCH v2 0/3] Debix Model A board devicetree
Message-ID: <20221011064316.dv6ulnmdginr7p3y@pengutronix.de>
References: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
 <20221010134954.la2xqekhxhkw7kvb@pengutronix.de>
 <Y0Qk0fFd+zvs/qaP@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="uniugp62zbemphkl"
Content-Disposition: inline
In-Reply-To: <Y0Qk0fFd+zvs/qaP@pendragon.ideasonboard.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--uniugp62zbemphkl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 10.10.2022 16:57:37, Laurent Pinchart wrote:
> > > This series adds a .dts file for the Polyhex Debix Model A board [1]
> > > A binding for the vendor is also added.
> >=20
> > A bit off-topic, how cooperative is Polyhex when it comes to the
> > datasheets of the board and the expansion boards?
>=20
> There is public documentation, including reduced schematics that provide
> just the pinout of the connectors. When it comes to availability of
> non-public documentation to selected upstream developers, I'll let
> Polyhex answer that question. More detailed schematics would certainly
> be useful to develop and review the upstream device tree integration for
> the board.

Thanks, I've found the "reduced" schematics. Do you have a direct
contact to ask for more detailed schematics (e.g. for the IO board)?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--uniugp62zbemphkl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEBsvAIBsPu6mG7thcrX5LkNig010FAmNFEIEACgkQrX5LkNig
0128aAf9HJikfsPTpMEeoBM7EwO5UF8DLEJveO85EhcLRS8SMuHVkXo/0FY2pmz0
KatsCOh0dXwB2HhinPgnvth/ZMS1B4daZITkuQpaT0QGC7njfH98Y3b3b+aFXBMx
itJxHiUMnmdDY7AsuH5purvdnZ7OSwwJsF6dkzYt0fJoZiqS4+gLNbhVrtJPkXpS
D4mV+Q972QPN3ikSKAZZKauWtcHCPlTCijRQ94B8svPe83IXLfrNkf7hafCRf25L
AKe/uP7iEttzYnOzUtW4ySRQCkzOI9fEeWoyds7L38Dojhspk6GgR8BTfTz34TAR
cRtEyBixuBh9bEN8HLdokDaYpv51vw==
=DNOq
-----END PGP SIGNATURE-----

--uniugp62zbemphkl--
