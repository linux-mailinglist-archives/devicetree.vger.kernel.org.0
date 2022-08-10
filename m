Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EF2C58F147
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 19:12:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233278AbiHJRL6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 13:11:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233372AbiHJRL5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 13:11:57 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F28779EEA
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 10:11:56 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1oLpEt-0002uN-6E; Wed, 10 Aug 2022 19:11:27 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1oLpEp-002wXp-BR; Wed, 10 Aug 2022 19:11:25 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1oLpEq-00App4-9v; Wed, 10 Aug 2022 19:11:24 +0200
Date:   Wed, 10 Aug 2022 19:11:24 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     soc@kernel.org, Daire McNamara <daire.mcnamara@microchip.com>,
        Mark Brown <broonie@kernel.org>, Wolfram Sang <wsa@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org,
        Marc Kleine-Budde <mkl@pengutronix.de>
Subject: Re: [RESEND PATCH 1/2] MAINTAINERS: add PolarFire SoC dt bindings
Message-ID: <20220810171124.74ew3yz5dtkz6v2s@pengutronix.de>
References: <20220810140243.2685416-1-conor.dooley@microchip.com>
 <20220810140243.2685416-2-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="uuxnv4wk5vpd2vuv"
Content-Disposition: inline
In-Reply-To: <20220810140243.2685416-2-conor.dooley@microchip.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--uuxnv4wk5vpd2vuv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 10, 2022 at 03:02:43PM +0100, Conor Dooley wrote:
> So far when I added bindings for the platform I never added them to
> our MAINTAINERS entry. No time like the present to improve the coverage.
>=20
> CC: Mark Brown <broonie@kernel.org>
> CC: Wolfram Sang <wsa@kernel.org>
> CC: Thierry Reding <thierry.reding@gmail.com>
> CC: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

> CC: Jassi Brar <jassisinghbrar@gmail.com>
> CC: Linus Walleij <linus.walleij@linaro.org>
> CC: Bartosz Golaszewski <brgl@bgdev.pl>
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CC: Arnd Bergmann <arnd@arndb.de>
> CC: Olof Johansson <olof@lixom.net>
> CC: Michael Turquette <mturquette@baylibre.com>
> CC: Stephen Boyd <sboyd@kernel.org>
> Suggested-by: Mark Brown <broonie@kernel.org>
> Acked-by: Marc Kleine-Budde <mkl@pengutronix.de> # for can
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  MAINTAINERS | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 868bbf31603d..fd0f10a110e7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17512,6 +17512,15 @@ M:	Conor Dooley <conor.dooley@microchip.com>
>  M:	Daire McNamara <daire.mcnamara@microchip.com>
>  L:	linux-riscv@lists.infradead.org
>  S:	Supported
> +F:	Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
> +F:	Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
> +F:	Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
> +F:	Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
> +F:	Documentation/devicetree/bindings/net/can/microchip,mpfs-can.yaml
> +F:	Documentation/devicetree/bindings/pwm/microchip,corepwm.yaml
> +F:	Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-co=
ntroller.yaml
> +F:	Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
> +F:	Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml
>  F:	arch/riscv/boot/dts/microchip/
>  F:	drivers/char/hw_random/mpfs-rng.c
>  F:	drivers/clk/microchip/clk-mpfs.c
> --=20
> 2.36.1
>=20
>=20

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--uuxnv4wk5vpd2vuv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLz5rkACgkQwfwUeK3K
7Anm1Qf8DzbSGq4tgk2Wj0ATtAx3MSlHam7uMAjWg9q4xDdgxD2/B/JW+Vy3U8TA
w4rcMeohX+4I8OwmOJMKAwXkGT6HgYQq3/sayYo0MvSj56xBa73SdgyEGHRiBqL2
KWyeeUT/WB0Pa3ZWf3k7L7QGHO+iTNgyowxiPAaUk/LsVUUdB09aCVAV65Lenyvk
vM1XaPgGPvFmTScxkRdjhiUCIUDrdCaBqsSuhHRgDMsmy7AVYqo/e4M+qpMvrslY
A0pNE6cDXTrOXnc8vmWbuYFSnlVnCzNAQWkLLlwiDXpk8LlEYAF8HVUiDlJOzaR2
SfPbaTU1BStvodgp79hj+KlzrDyR5A==
=kGXF
-----END PGP SIGNATURE-----

--uuxnv4wk5vpd2vuv--
