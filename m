Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64B9D5807EF
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 01:04:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231873AbiGYXEl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 19:04:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237150AbiGYXEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 19:04:40 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA1525E8D
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:04:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E7A64B80E01
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 23:04:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 251D8C341C6;
        Mon, 25 Jul 2022 23:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658790276;
        bh=KuI6jPXE59juMwF7FrWJhN68iFyhxdb2/mZjvCRQlL8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bsjEemcFnWQyMl2nerduGS4f89mA/1pwAQTXLi8ZK2J8eo9GL+Ua5c1t+kGRNh3u0
         s1ellHpQnsirjFDF42o/hQZHaGtq2Zq2UyqPdA1/Py7weV8/zj7uf0VKgVfIXINcI1
         QW6JmIB4hCP4z8/W2F8Q3/t/o9ZHJQQqjqGGm1B2hSlJ5Y47iS+IVTVQiSFpRBYpV5
         ws+oEQrqWMkAd21qZGBvp3hEDx4S7UlLIFTrurIs8kMsotR1riMArUC4Zst38KUdlf
         V/jtvVKP+wzDmxQytR1s2gQZBA1n93c+eWWTXNWN2zrlDiB0cE0In2EjmnbC3a0809
         y/S6vfjJ8vCsQ==
Date:   Tue, 26 Jul 2022 00:04:31 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Raphael-Xu <13691752556@139.com>, alsa-devel@alsa-project.org,
        raphael-xu@ti.com, shenghao-ding@ti.com,
        devicetree@vger.kernel.org, kevin-lu@ti.com
Subject: Re: [PATCH v7] ASoc: dt-bindings: tas2780: remove tas2780 and will
 merge it to tas27xx
Message-ID: <Yt8hf7IqSgKK2VhX@sirena.org.uk>
References: <20220722105345.175-1-13691752556@139.com>
 <20220725224919.GA2887013-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wxpYfeOoU1p11bZe"
Content-Disposition: inline
In-Reply-To: <20220725224919.GA2887013-robh@kernel.org>
X-Cookie: If you're happy, you're successful.
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wxpYfeOoU1p11bZe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 25, 2022 at 04:49:19PM -0600, Rob Herring wrote:
> On Fri, Jul 22, 2022 at 06:53:45PM +0800, Raphael-Xu wrote:
> > remove tas2780
>=20
> Your commit message needs to answer 'why'? Write complete sentences.
>=20
> Though as this was just added, you should do 'git revert' and send that=
=20
> patch.

But please write a proper subject and commit description with signoff
and so on, it's still a patch even if you generate the initial content
with revert.

--wxpYfeOoU1p11bZe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLfIX4ACgkQJNaLcl1U
h9DjDgf/fNoI9c9iDz0cpsaGfZ30y1qwKiCQfjH/aEuFhC82cIuzakvcUsFU5Zrq
n9w3dk1Hwrzuu+dsqBCl2iNkjkUk2SE0zSLqRaThDpamDIbsFsKtWyZnBffapT92
wdvh2f4R6N6TzFOPN1KhvPLtqhSCEzXSjQvKl1I9aN9UIcIrDZ1asO+qTS5BlLBo
8G5PRDRSZM7LGN+ExX9qWfDQnuPGNDxJN7ww5NdWOh5FZAFIBMi7HxsMHyQXyKn+
t3uo4OU3WbJCAYV24QF0apo3gXEr+teZ/xB+7d4AFpU4JjTnmwDrdlox3mSE0jJF
NWogzLkyAb+iwv5s5HdXpICprJpMUg==
=jhQf
-----END PGP SIGNATURE-----

--wxpYfeOoU1p11bZe--
