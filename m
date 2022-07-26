Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD6D58162F
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 17:14:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234155AbiGZPOn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 11:14:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbiGZPOl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 11:14:41 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BA7C2F021
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 08:14:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 1DE91CE0C2F
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 15:14:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2C2DC433C1;
        Tue, 26 Jul 2022 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658848475;
        bh=sMJjpFtvcZ1d3JoM3fkgHxvGrOlTVUanuXCpaM9lMig=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BHuo20fVr3c0KIG7xsekmyhlfM7mW+kKUUDmdJbK7uMxwdr7O2d8yosVs1gZZPuVb
         lgAzcuh04tpFIcio8KVAssblan2boJCuLVLeDtZSELhc5qk/yABPxpIpBQIuTzWaax
         sXD+T6NUvZqvRftFjX8gV629iNqvv8KwY0PJ5MRDclXTg7e14FbL/RJ9QVVYaoYV0k
         idtMJDyuBXzHSHkX8oMh7+2ubZ+V+4fe4Sr+Hp1GGzNZti1a4EBSLH/wRWPNRxZjZB
         Bib0YTwY03lNznwHnj0HH0SXeFlhb4dE58zax1GWQdqLfpB2ndJo6BYDhEbljVOEDH
         yT7R26mMfj+mw==
Date:   Tue, 26 Jul 2022 16:14:30 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Raphael-Xu <13691752556@139.com>
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org, raphael-xu@ti.com,
        shenghao-ding@ti.com, devicetree@vger.kernel.org, kevin-lu@ti.com
Subject: Re: [PATCH v7] ASoc: dt-bindings: tas2780: remove tas2780 and will
 merge it to tas27xx
Message-ID: <YuAE1vDHE4NzSu+w@sirena.org.uk>
References: <20220722105345.175-1-13691752556@139.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Dp0z/n5tZgqICNdS"
Content-Disposition: inline
In-Reply-To: <20220722105345.175-1-13691752556@139.com>
X-Cookie: All rights reserved.
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Dp0z/n5tZgqICNdS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 22, 2022 at 06:53:45PM +0800, Raphael-Xu wrote:
> remove tas2780
>=20
> Signed-off-by: Raphael-Xu <13691752556@139.com>
> ---
>  .../devicetree/bindings/sound/tas2780.yaml    | 75 -------------------
>  1 file changed, 75 deletions(-)

The file upstream is 72 lines long...  I fixed things up this time but
in general please make sure you're submitting patches that can be
applied to the tree you want them applying to.

--Dp0z/n5tZgqICNdS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLgBNUACgkQJNaLcl1U
h9DZcwgAg35cOeqRgyKQ4zu3voVpk5g2RNHF1H+vN55Hgth6hel29SswQnl2Djz8
k2HJ6GnGU6k1Ly5xICm4/CyBzfVEP2Ks4sXSclsbjJx1oz5JulekGvHsn8KIm5HT
KCH0ahdp9okfqCB1/H9ddUyu0xsMzHyBgzVGuVtO7cAmBH36axVpfJ5dsY1J6h0Z
wpCN2MIYwCKInzvRLnGrBI+XZIAr6KeWqIIhmJqgAokFl1RYJoBjm3C7yecg+5bb
QVkEa3by/bI3LAiZDiF2KYsiaWgsEhLivMuK6KNEbeDZK33J70+JxgVkAddSn/GG
8/zpvCz4QlgmDi8xGMazOzPdV6K+Qw==
=RrqS
-----END PGP SIGNATURE-----

--Dp0z/n5tZgqICNdS--
