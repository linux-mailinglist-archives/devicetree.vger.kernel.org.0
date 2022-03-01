Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EFDF4C8BF3
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 13:47:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232206AbiCAMsA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 07:48:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231386AbiCAMr7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 07:47:59 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9817F8D6AC
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 04:47:17 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 515A2B81869
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 12:47:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44CACC340F0;
        Tue,  1 Mar 2022 12:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646138834;
        bh=jtAoclxF4W/Rcwo81tZhYTW4wbtw+ru4YHsFmRKBcEc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pY0WCCeh/y8ZxcIBE5Cj3AwQMf8oLjnZ4vsTNt6WxuMn1c2ZCX7aRDLnxAHNacz0G
         tmpyKtokLrBcZaZbClSUp0PKsPlLyUSXqdPzVLvNHQmrEn3JsbiWNQRlUzssXWsX0H
         nBXhcPvi26LmPdbPxC07JDepjNyBRwlxSlqVLy+PN5Pam/5WpyH02/O5Lg4F3RWKi/
         4RMOH7VLuUMdgJprNB2OB496stVURY7LeiiC32EkV23wWwnIejK8lbJNNMAGiStFXe
         GcC3CGVALvjS0mQ+BEH2eucPtirJrBcyNB/LwduVkV4Gv4yqcWsZzsBkqs8XMm9CGp
         N/4sa79SnCyrQ==
Date:   Tue, 1 Mar 2022 12:47:10 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 2/2] ASoC: codecs: Add Awinic AW8738 audio amplifier
 driver
Message-ID: <Yh4VziYJ2M2aenjz@sirena.org.uk>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-3-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vdzBDqxFknfIm3vF"
Content-Disposition: inline
In-Reply-To: <20220301123742.72146-3-stephan@gerhold.net>
X-Cookie: You have a message from the operator.
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--vdzBDqxFknfIm3vF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 01, 2022 at 01:37:42PM +0100, Stephan Gerhold wrote:
> From: Jonathan Albrieux <jonathan.albrieux@gmail.com>
>=20
> The Awinic AW8738 is a simple audio amplifier using an enable GPIO.
> The main difference to simple-amplifier is that there is a "one-wire
> pulse control" that allows configuring the amplifier to one of a few
> pre-defined modes.

I only have this patch, nothing else from the rest of the series.
What's the story with dependencies?

--vdzBDqxFknfIm3vF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIeFc0ACgkQJNaLcl1U
h9DsEQf9HySKDU6ivk0FFYXHeW+y8mmyj8tRuL4dn5rY2t8YIEynWOSgRcvTyyY5
qdCo9U0iluUhzZMbHMnpnZ1opW2POXTamH/snEN9qREMi3pKGff2CBLASSDX7dXy
5hutMMXL7mCRZA4tnTJ/KYg0mgyhH5Qt3Ua+tY+rHbBWX2hycoESRVPM1gJ+t5g9
0VeOGX2EZ+Zc8GuW3ETaAS/QnyBS88A6zYcnHK+MXSJev3b/CjK0jrfjJHl7lXna
sPGZoEWrmfiLowAvrvI2YZrBdEQPg2x+yFlPeh7cYJZBupmiplQ2VmrGe9hHgPE4
zkeqEVTieGxNobRCqJNxQ/plk9zg/Q==
=N/L7
-----END PGP SIGNATURE-----

--vdzBDqxFknfIm3vF--
