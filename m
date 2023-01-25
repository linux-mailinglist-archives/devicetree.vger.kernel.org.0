Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 394B167B44A
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 15:25:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235440AbjAYOZE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 09:25:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235664AbjAYOYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 09:24:24 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FEB84ED2F
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 06:23:56 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 65BAEB819A2
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 14:23:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90727C433EF;
        Wed, 25 Jan 2023 14:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674656623;
        bh=jWLazPvj3pnZUFvAR8usCtdgM2mJnO+ZF5Qh2FhGkjM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=V/NqdcjwmFo8Pii2c8k80jWwIlPZPCk+/BEiiXTtYSzjqJlWG1Oj0kCmANCmOQuWT
         nxuw86sxfj8zdCyM8sRxDOiqTvF60zOJDLtMdARLCMe4r8g2PebBUISuzt/BoZ2/BE
         9kk2N22Ih81NIaNIw4P5NaakV5zPag+bs5VI3LStXCSkiVKLusRqx4aOn8LS+KozaX
         t58R5gViQYLE3NmeLPzr4dMCR7w9dpHTd6cgyhyvPXvMlwaFOmWezuwMJsW4Sw+n0e
         3CjnfbhPTin3JUh04SCj+Joxf9dpGsB6jZ/PvEueCHvMp21yHmuXYcWvTWipJRrn7f
         A2UVi//YZ9dCA==
Date:   Wed, 25 Jan 2023 14:23:39 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Alexandru Ardelean <alex@shruggie.ro>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        lgirdwood@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com, steffen.aschbacher@stihl.de
Subject: Re: [PATCH 2/4] ASoC: codecs: tas5720: add support for TAS5720A-Q1
 (automotive) variant
Message-ID: <Y9E7a/erXV/xd3lz@sirena.org.uk>
References: <20230115193347.24190-1-alex@shruggie.ro>
 <20230115193347.24190-2-alex@shruggie.ro>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="IN+g6atGAzM+/NVn"
Content-Disposition: inline
In-Reply-To: <20230115193347.24190-2-alex@shruggie.ro>
X-Cookie: Nice guys get sick.
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--IN+g6atGAzM+/NVn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 15, 2023 at 09:33:45PM +0200, Alexandru Ardelean wrote:

>  static int tas5720_mute_soc_component(struct snd_soc_component *componen=
t, int mute)
>  {
> +	unsigned int reg, mask, val;
>  	int ret;
> =20
> -	ret =3D snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL2_=
REG,
> -				  TAS5720_MUTE, mute ? TAS5720_MUTE : 0);
> +	switch (tas5720->devtype) {
> +	case TAS5720A_Q1:

This doesn't build:

/build/stage/linux/sound/soc/codecs/tas5720.c:217:17: error: =E2=80=98tas57=
20=E2=80=99 undeclare
d (first use in this function); did you mean =E2=80=98TAS5720=E2=80=99?
  217 |         switch (tas5720->devtype) {
      |                 ^~~~~~~
      |                 TAS5720
/build/stage/linux/sound/soc/codecs/tas5720.c:217:17: note: each undeclared=
 iden
tifier is reported only once for each function it appears in
/build/stage/linux/sound/soc/codecs/tas5720.c:214:33: error: unused variabl=
e =E2=80=98va
l=E2=80=99 [-Werror=3Dunused-variable]
  214 |         unsigned int reg, mask, val;
      |                                 ^~~
cc1: all warnings being treated as errors

--IN+g6atGAzM+/NVn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmPRO2sACgkQJNaLcl1U
h9CqZwf/XynyDp8ChZbxx3Q8y/3ooG8nSiuib+KNMcHqdZF/3KOnx3eW1vOXJ0IV
WhmoFWOoW5qZ4naXyFiN04HKt9CYitZX9+dcKa1CjUfJPs1Sr9Z7VmxKU7evpR/y
IacUhb1qU+EJrBGONg6erVrffgWD3quJw+DVripimsAi2MFAWdUCHw24GmgmG6ay
F8RFX5TgH+6673YiM+LDsie/RER3QVlcbdVp7oHM99RCqIYpLL7XHeoaRNbumIWs
b6wBlYm7cuaa83jRgflM/ka1Ac6J1yjlaFUfhu5n7MpxnTep5Hjfds5fwMh5SJHk
qjmewk5RCT+4V0GsoxfEJalpsxTuMw==
=4cCs
-----END PGP SIGNATURE-----

--IN+g6atGAzM+/NVn--
