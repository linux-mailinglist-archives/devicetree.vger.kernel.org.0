Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 404A370E806
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 23:52:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238735AbjEWVwL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 17:52:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238509AbjEWVwK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 17:52:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0B26184
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:52:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 32F5E636C2
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 21:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 524C3C433EF;
        Tue, 23 May 2023 21:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684878725;
        bh=Q7Cfr0P4JrgFbeW6Lss/x27KCWc3NQnkwpmV1bMsJko=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BhgpD96fUG6XX5nLgvCkOJqbrtkEXkh9ZWfhRo6SaGPraqQ4um5v/iQJ9cigo9D71
         LMFq1CH09FvTqUpbRdjWer1gOveDipuZ+KciU7Se9VKTCyw3MwmoV2xkhqKIpKLsVv
         3NJa0sZ7Ra0CiJMsg6C2i2RUNWKVRsuxPHwXwWZXgJOH+tTvvnAFAVIyw8MKZCKg8d
         nl74Q+CFewYespiRJyLQfJJvxT8879v/zogt9/N5juU2gRlemaDSx+zERHT1g+2MCh
         azlcDBLIVAbucxT9skYHlqDiVOlGRbHK4Iwm3zpDKzxe17dZO2ZaHxEm+zKYwLIkfI
         yQ2KOXJvwmUDQ==
Date:   Tue, 23 May 2023 22:51:59 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, zyw@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, perex@perex.cz, tiwai@suse.com,
        lgirdwood@gmail.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
Message-ID: <b64c91e0-1dab-4ae1-8fcc-512da08856bc@sirena.org.uk>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="MEioEb2XHIcEnWAi"
Content-Disposition: inline
In-Reply-To: <20230523213825.120077-2-macroalpha82@gmail.com>
X-Cookie: Beware of low-flying butterflies.
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--MEioEb2XHIcEnWAi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 23, 2023 at 04:38:20PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Enable support for 12Mhz sysclk on es8328. This sysclk value is used on
> the Indiedroid Nova rk3588s based single board computer.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>

If you're sending the patch your signoff should be last in the list.

--MEioEb2XHIcEnWAi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRtNX4ACgkQJNaLcl1U
h9DKXAf+PmCPuedgkWKSejXYwuSyAr/YT9+cJ/FMkwbGhCdYTQkQGbX//jFXuj4r
fajuP100UTTCcpLlkb0QiIaIC0rNeLTvxgxKErj0W/PN3GGnzQXWCiOmADPhUwqS
pgmOnVv7DDojIAHgC2eWC3dItIl8tDDhhHunyoTJhQU46ghg8X6ewltUfwwwaJER
J+kESa5vrYFY+1FMHSARmoIiT1iXNC4b0zX3Ahtmf1i2u8dgI3pJHC+R7r41Ohpx
J+XydzeMne5mle8InUeIR3VIyY8sjxwyuA8sNekXtzsEj8YUix0PEbGb4ScxroT3
QIx0zUt71BJZhow4qXkmRS0jnKSA0Q==
=zOUN
-----END PGP SIGNATURE-----

--MEioEb2XHIcEnWAi--
