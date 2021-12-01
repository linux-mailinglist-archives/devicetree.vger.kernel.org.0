Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF6FD465163
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 16:21:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238407AbhLAPYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 10:24:42 -0500
Received: from sin.source.kernel.org ([145.40.73.55]:58194 "EHLO
        sin.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234164AbhLAPYl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 10:24:41 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id ABDC8CE1F8C
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 15:21:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40DA4C53FCC;
        Wed,  1 Dec 2021 15:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638372077;
        bh=D58/6QGqnnVxmXKUhpKUqCmH6MS+vp6LBDiBbA6uGo4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kl3KRwASmPVgL/nH9VPiSPynx1Xer46raq4kVVmFWUlE0gT/0QQjnOyHu6W6OwJoa
         8Tj2wjSwFC20fS9vckRQpGCL1LF9layRWja7gSg/JgiuPSPOPOucN7RJ7T5vnFbMU8
         UxEUcQ5wPTNfGJ3ZTloSPE9qlV9OQIQvDmWiKCoe/AEtnb61KcdImhEQL/U4WhBiDP
         ePld6PO1bkNQPehzLrWfT7hHkOIa8/3wUtH84JvmLwDpHlVVELgNvSmFMaSWQUBsTo
         tJbN2C6zRcW5o80SpqMd2LzS2wD3JHsy7ybHOh3RvUUKGRhVr4Q9ElD0gsMpDiEyjF
         AlX4qUeFreRBQ==
Date:   Wed, 1 Dec 2021 15:21:13 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Ricard Wanderlof <ricardw@axis.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        alsa-devel <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [RESEND, PATCH v6 1/2] dt-bindings: sound: tlv320adc3xxx: New
 codec driver
Message-ID: <YaeS6WqKNRpX2IGs@sirena.org.uk>
References: <alpine.DEB.2.21.2112011603080.30606@lnxricardw1.se.axis.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="E+YjiY8Ir+JvjXPZ"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2112011603080.30606@lnxricardw1.se.axis.com>
X-Cookie: All true wisdom is found on T-shirts.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--E+YjiY8Ir+JvjXPZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 01, 2021 at 04:09:17PM +0100, Ricard Wanderlof wrote:
>=20
> DT bindings for tlv320adc3xxx driver, currently supporting
> Texas Instruments TLV320ADC3001 and TLV320ADC3101 audio ADCs.

I realise that the threading is broken on all your patch serieses (it
would be good to fix this) but please don't send isolated patches from a
series separately in the middle of pending review for the series, it
just makes things even harder to follow since now there's two different
groups of patches and they're not even grouped by sending date.

--E+YjiY8Ir+JvjXPZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmGnkugACgkQJNaLcl1U
h9CoPAf9GtGPHt7BObhWyxMnKRZn9j9gDytFFXLfrfAokadiEtMvEz4mkmLht4lD
mmb18xtiFJayuJHfZF+ExMIKPtDq1jzJx4KKKrhDUUSy+lVQp6VHnEcWbtfsVWVz
4wxxDgx5cGQtKEBTe1WQOA3Sk0gyEmKf+E5fbeoqf1R+Us0727zovObWBXwtvSuj
FL8DMSnUCPyby895QzH2eRK0O7wisLZRN97wU4kiIUEwihrGx8vu8d0p38fwg62U
IHt9lsq79dosqWjcK56dhNdRHPe6y43AlmYHzItJJ/kI7bHKR+OCm7Wxj86pRRvv
u0X+ImSUACqr48IccSWVwkg2/1KIMg==
=du47
-----END PGP SIGNATURE-----

--E+YjiY8Ir+JvjXPZ--
