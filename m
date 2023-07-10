Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B85F574C92E
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 02:16:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbjGJAQD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 20:16:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjGJAQC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 20:16:02 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4400114
        for <devicetree@vger.kernel.org>; Sun,  9 Jul 2023 17:16:01 -0700 (PDT)
Received: from mercury (unknown [185.209.196.239])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 855726606FE4;
        Mon, 10 Jul 2023 01:15:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1688948159;
        bh=ccVN9T84ce+zYNfODdiQOZQHR7lJzp79ZRT0rxmid60=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QYAYpCJ6UyajZAOs3w5ZelwFBY2+vv5Nx6tN/e5BdjWfH2sLrOehS3EWoHVwrVw/R
         yhybRM+o3a2cU+G/QzFsOvGhQ0PmzV4o+4iaxGwIhxNFFAB+ELdcnS+aeM23/WaDQY
         ZhBWtsFwwZsRLugaANsjJiOWaKEy5qjTZ3fZsCm37fLZ0EiFurOGjMm9+upqgpBOso
         bb70ECdF4UC6N2dgqISgJYwgEIC2drFrYE190FTvYP0/2CWFIqg+g4oRBKPfjT0Zoo
         QPPTc3vamz7nHuqOJ3tx9fWh52XvLnqiYOchFJd8WS4kZQq99Sj8gCBjR/uzisRCFu
         Q/gSBpvcS2F2w==
Received: by mercury (Postfix, from userid 1000)
        id 79881106715D; Mon, 10 Jul 2023 02:15:56 +0200 (CEST)
Date:   Mon, 10 Jul 2023 02:15:56 +0200
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Ivan Babrou <ivan@cloudflare.com>
Cc:     devicetree@vger.kernel.org, kernel-team@cloudflare.com,
        Lee Jones <lee@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] mfd: rk808: turn MFD_RK8XX into a tristate
Message-ID: <20230710001556.whhq3knqg4w2fqig@mercury.elektranox.org>
References: <20230709232507.55096-1-ivan@cloudflare.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="y7wacp5hmawv5j55"
Content-Disposition: inline
In-Reply-To: <20230709232507.55096-1-ivan@cloudflare.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--y7wacp5hmawv5j55
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Jul 09, 2023 at 04:25:07PM -0700, Ivan Babrou wrote:
> Prior to commit c20e8c5b1203 ("mfd: rk808: Split into core and i2c")
> it was possible to build rk808 as a module and have CONFIG_MFD_CORE=3Dm t=
oo.
> After that the intermediary CONFIG_MFD_RK8XX was added as a boolean,
> forcing mfd_core to be compiled in whenever rk808 was enabled,
> even if it was still built as a module.
>=20
> Signed-off-by: Ivan Babrou <ivan@cloudflare.com>
> Fixes: c20e8c5b1203 ("mfd: rk808: Split into core and i2c")
> ---

The same fix has already been send by Geert some days ago:

https://lore.kernel.org/all/d132363fc9228473e9e652b70a3761b94de32d70.168847=
5844.git.geert+renesas@glider.be/

-- Sebastian

>  drivers/mfd/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 6f5b259a6d6a..f6b519eaaa71 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -1197,7 +1197,7 @@ config MFD_RC5T583
>  	  different functionality of the device.
> =20
>  config MFD_RK8XX
> -	bool
> +	tristate
>  	select MFD_CORE
> =20
>  config MFD_RK8XX_I2C
> --=20
> 2.41.0
>=20

--y7wacp5hmawv5j55
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSrTbgACgkQ2O7X88g7
+ppEQw/3WLjggTi5sdds4Q43E8C8MZa5+B6oIZlzfIEBFSlMI6LkUMV6Ehzb3pZO
DmWd+dTJFY11HFMqnO6Kj6KylyKzXelvigxLfYzBhOcxmZD7uR5WNB8SZ9QIZy4o
YQ9WxjfvtSBzpFBei0uvQ5xz8D5ASs8XTU2Lfq3MMA7C2eAbHURU1JZfSvtyxsEh
cVOdtZ8zqRYfYiFuU3GwFjD8dTATDJ51j5ltaDzsMHlY1keQMR7ZpE0X8G/WhXQ6
9BIYMd1Px3N4tH2mC86DOL7t9pw0bxmCEP2VqdSP/ePBclHnSipvZLHP6PgSAMf9
RxQlsTKd1eTB9yzPB1rq8IcrXOe0EHD2xZI/1vtvUGwfXOC/DZLlYsNORR/DA52Z
lnElmsQszk6MsTsgRuS1QY+IgOZhsDvHDlhibJUIr5SkuIDHhKQVEjFdd1Udrhw3
BrbDHBAzSJTYzK6D1RBD2QLmQ236wKR0EvyrKIh4sxn3tNOxvMQE2QZgavPCAzUE
8MtAPRVtnIXJe3cJxycMGvKVB7uTuH3imSC3ieYsYHhTxjPl0fLBpS0g3wMbDYre
bzV+KXKveR/Lg5poyORHIj7maJguK3Y4ogDezI/WPH6BfQuWlBxzRDtq0cAmVPah
3jBK+0SooAJBfeN+BvZH+3VJcSRmKitLqRjcil/fcLlSMwSWrw==
=OcFY
-----END PGP SIGNATURE-----

--y7wacp5hmawv5j55--
