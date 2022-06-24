Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3C3A5599C2
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 14:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231392AbiFXMmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 08:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229862AbiFXMmg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 08:42:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 974744ECD5
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 05:42:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 39C9A61B0E
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 12:42:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F871C34114;
        Fri, 24 Jun 2022 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656074554;
        bh=zXEEiTB5hNROKtS+7IsmV4DDkSH6bCRmdd4a6UQfT4M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mopz3ih5CivdhvvWtgzuYMrYJFlzxH4EqLMz6R3GTukGm8Spsc98V5M4pkueKF0Ou
         0UHwYhZIhpjMIr2bATJuYriA2+ItYdtA1rB7ui/kfDasnZOI/s6fBYqCCg5NtogRkj
         sXiCxRrN5Ji/QRLL/3kmRP2Q1v2RkonnDEkfUejEkEEpWfIa43PwBjgPd4OvgNy7aw
         KJaP1zgCjmDiWAVtZ9xoDDIoUQZ+4wm4KIevD1F0R9vj2xIcxc4gvJc6JNlF6nrpwh
         o5OzPfVwS/Zm/Quaa0eK/0InJFAlbYiIAjmssEzuUN1aV5/2/E/rktJsbX49ZzbRr1
         qBPuU4YkqEWxA==
Date:   Fri, 24 Jun 2022 13:42:30 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     ryan.lee.analog@gmail.com, robh+dt@kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/8] ASoC: dt-bindings: max98396: Document
 adi,bypass-slot-no
Message-ID: <YrWxNk8NMVw7Ecfn@sirena.org.uk>
References: <20220624104712.1934484-1-daniel@zonque.org>
 <20220624104712.1934484-4-daniel@zonque.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="DoLimtTxHasAn9Ka"
Content-Disposition: inline
In-Reply-To: <20220624104712.1934484-4-daniel@zonque.org>
X-Cookie: Help!  I'm trapped in a PDP 11/70!
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--DoLimtTxHasAn9Ka
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 24, 2022 at 12:47:07PM +0200, Daniel Mack wrote:
> This property allows to select the PCM data input channel that is
> routed to the speaker audio processing bypass path.
>=20
> The driver already implements this property.

This really should be runtime sleectable but oh well :(

--DoLimtTxHasAn9Ka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmK1sTUACgkQJNaLcl1U
h9CIewf/X6Lwb7FsmzRAUspCb+zpAb5EvRWRzmkFmbrYzHhlQOax/6yxeI93Rclc
o+vjv9NCeStvFP0MTpwYO4kDFiNa4l427+X9L0vSlsR8A20PTBJtLUIUDMG5aw/G
QqEbEwKmdnJpQWL55YxLlm6k58EJ9af5mf02hogfYTvtSzzoFqaSYXOZ0xsoy1PZ
a0J3P64B+sCXUN+g6nLV5vn7pKCFKJ4sw28Etfxdrpn6Yl3HEKUNeSM0B+klBNUU
/IMjV0SlTLjLJMt4+ooRpomPFdmgLhhTvrvggblnZ8Avgml88bv2FYPhfCmBI6uA
O7JdbkI0kwF8HiBMGAcsRSmOuxp+wQ==
=1e8K
-----END PGP SIGNATURE-----

--DoLimtTxHasAn9Ka--
