Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AAB973324E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 15:37:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230238AbjFPNht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 09:37:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbjFPNhr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 09:37:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50F3E30C7
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 06:37:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D6A3F61DFF
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 13:37:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65E38C433C0;
        Fri, 16 Jun 2023 13:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686922665;
        bh=O1ifdy022EVw+vwO8oSlZpF3cK8EflT4CGr0Za53OGc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ECHKOp2BSSH4OYhCd0pF7QtPWZr41/SRmfNXe/YJEZ2dzoJjdJQQQ3lEc2vnJYLwF
         xyQfcn/oD4zaGFA45o/By11ddZf8O5/TD6lLOkDI3jAtxOcWDm3eDfRQMJItgOB8GF
         h5EMXr8wek/BVBpX3njKbZpZghcsGT9qwu979/DxHKoW9SKRgftEbb14QCqt8ImMw+
         IIv4eHV/lVEDk301n/wYLDqtR8FheoVzaYfnPeaRjfD01ed8qpXLWpG607YA8pWAGG
         zb5HeBaaPCf8ob1LRaJRXmclOcYUb5hE1IlKIr+dfk5SLzRXZb834NNp3X5rmgQgFf
         3b84JqEaHkjbg==
Date:   Fri, 16 Jun 2023 14:37:40 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT
 schema format
Message-ID: <20741da3-3ab8-4366-a8fb-a628b5ab06e7@sirena.org.uk>
References: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com>
 <24617723.6Emhk5qWAg@steina-w>
 <993767ab-d7eb-440a-9f13-026821fd1f61@sirena.org.uk>
 <3660939.Mh6RI2rZIc@steina-w>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="y/gSOOxEdAelgMkM"
Content-Disposition: inline
In-Reply-To: <3660939.Mh6RI2rZIc@steina-w>
X-Cookie: P-K4
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--y/gSOOxEdAelgMkM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 16, 2023 at 03:22:31PM +0200, Alexander Stein wrote:
> Am Freitag, 16. Juni 2023, 14:30:37 CEST schrieb Mark Brown:

> > You could check for dependencies and tell me about them.  For example in
> > this case it turns out the issue is that there's a fix to add supply
> > names that went in which is only on my fixes branch.

> You are referring to [1]? That's part of next-branch since next-20230523.=
 So=20
> this patch should apply on top without conflicts., e.g. today's https://
> git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next.

So, I actually apply on for-6.x branches (which change regularly so I
tend to just tell people to use for-next as it works most of the time).
In this case you've got a dependency on something which is only in the
fixes branch, that'd be what'd be good to surface.

--y/gSOOxEdAelgMkM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmSMZaMACgkQJNaLcl1U
h9ARdQf+N4HMQwWzDNP8eb7vyHHegMUXwi7h8g9wsbIx93rQOH4ohWgd/BiUsIBR
E8plZFStBCkA/IGq6Tjh8gredl6LcbsH6102ExhGAnK1IRkOtgfwgBDInYtIe6m8
34lV3ZZuTNnZvVbWR5/rFnCqY7e2FdT/S2Gbt1RE0XL2pHVG3rn8XfSb0ZtDZ0Df
6sYDkwfkH2dSi9GWf5PgvTSboA0Eo2O+xeiRqVSSIi8Ha23SUvwxeX6nliEgKYrk
u07c9E3AxZx/WHtdmH8WrFO4y2Cok+kTUNsGlW2a3983Xhnr/MFf/n9wWqcAS0B5
spFaI9YjyjqHcnXPGcLxZnXZRSsb/g==
=e5v4
-----END PGP SIGNATURE-----

--y/gSOOxEdAelgMkM--
