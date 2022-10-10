Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D58E5F9FA0
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 15:50:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbiJJNuY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 09:50:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbiJJNuY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 09:50:24 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 839503A145
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 06:50:23 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mkl@pengutronix.de>)
        id 1ohtAP-0004I7-F0; Mon, 10 Oct 2022 15:50:01 +0200
Received: from pengutronix.de (unknown [IPv6:2a01:4f8:1c1c:29e9:22:41ff:fe00:1400])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (Client did not present a certificate)
        (Authenticated sender: mkl-all@blackshift.org)
        by smtp.blackshift.org (Postfix) with ESMTPSA id 70A32F9464;
        Mon, 10 Oct 2022 13:49:55 +0000 (UTC)
Date:   Mon, 10 Oct 2022 15:49:54 +0200
From:   Marc Kleine-Budde <mkl@pengutronix.de>
To:     Daniel Scally <dan.scally@ideasonboard.com>
Cc:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, linux-imx@nxp.com, kernel@pengutronix.de,
        festevam@gmail.com, laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH v2 0/3] Debix Model A board devicetree
Message-ID: <20221010134954.la2xqekhxhkw7kvb@pengutronix.de>
References: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hhtj5ytpoxafphzt"
Content-Disposition: inline
In-Reply-To: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
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


--hhtj5ytpoxafphzt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Daniel,

On 10.10.2022 14:31:43, Daniel Scally wrote:
> This series adds a .dts file for the Polyhex Debix Model A board [1]
> A binding for the vendor is also added.

A bit off-topic, how cooperative is Polyhex when it comes to the
datasheets of the board and the expansion boards?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--hhtj5ytpoxafphzt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEBsvAIBsPu6mG7thcrX5LkNig010FAmNEIwAACgkQrX5LkNig
010WZAf6AqZf2PoBj8q8ygcQZHaFSph2AYMqvW/hDd9XqOMiaLH/fpND295G/EUo
rn3QbrtqpggrMg9diUokUDQa3D4Icb9Gsyl+hZhgh4I/8nywb37AATnwaMlrpGof
aASFCI2Azr61iZunYm/G7lkLcoU4O0Df0IofvExx35UUkk/N5lJLywBhl1AGFlMC
7TmHbuTN16RVC7QttnWarWjUazTvOT4fNr8Z6UK3sJbN6aedfXcvj3nDpj4ik1xU
IufV70IOuGz+ayPlbCX94Gdbe/A6YizzAVUMFD6z+TAQFoWnHBwhLVBQhxixAzeL
4gvbVnMseV00cR1VAOvtMRBBRezBYw==
=LwBu
-----END PGP SIGNATURE-----

--hhtj5ytpoxafphzt--
