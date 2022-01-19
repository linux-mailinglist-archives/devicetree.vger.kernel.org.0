Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A694493E64
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 17:35:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356163AbiASQfi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 11:35:38 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:58778 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356159AbiASQfh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 11:35:37 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A84F4B81A63
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 16:35:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E20BC004E1;
        Wed, 19 Jan 2022 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1642610135;
        bh=3qn6GsGyxTmJ3n2Xx65TDxZxC2ttg+ILiRvTnFmYMJ8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t1JN86kFN7mnK4uJaUJ1d0LP8njFCR5ky7n1tSKCDwXIeb86sqYd06HLI5N7n7j5G
         AscgnOyBM4KoghzfSt5D8cDm3eluzR2rwIVYjX/niZr1cdPoetFWzqyvjSEuYgreXq
         heKiBeeiPlRHdyMO34KCQXpGwYUuZS9CtO0zNFPMHShIFM93PWKFD4UdkLg/ulE4GZ
         MfmCSoREheDZAEAlAzMi2iOnKQCDMesj8e6SgR0zk57t2fZyMSHY74R7+fVHyHZkPU
         LY66ftJhswFds/oL7bwJrO9qMYCXgRFvrSS4SGTlC5mS+hKYqz9Vg4JqiJKRvHIcr0
         fRH3l/BiA1+QQ==
Date:   Wed, 19 Jan 2022 16:35:30 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robin Gong <yibin.gong@nxp.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: regulators: Add missing regulator names
Message-ID: <Yeg90q8uZ79CFiO1@sirena.org.uk>
References: <20220119103747.58305-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Yh0RVSexzH8BLEhH"
Content-Disposition: inline
In-Reply-To: <20220119103747.58305-1-alexander.stein@ew.tq-group.com>
X-Cookie: This bag is recyclable.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Yh0RVSexzH8BLEhH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 19, 2022 at 11:37:47AM +0100, Alexander Stein wrote:
> The valid regulator names for the subnodes does not match the ones
> mentioned in the description.
> PFUZE3000 & PFUZE3001 uses 'v33', 'vccsd' and 'vldo[1-4]' as well, so
> add them to the allowed node names.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--Yh0RVSexzH8BLEhH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHoPdIACgkQJNaLcl1U
h9A5fwf9H3iXFzNgdywqvwDE1OJMcl4HNbIvg3sNF0rojYTS+DpflwQ1doc1N1bS
c1oehNIdvXfdUvf7aYum6C/+MCt9EUk3yCcEuQZaoHTN463jeupwTFdtzlcNQKz5
daIvAnhcsb0RHIhtU8R5Kfk4bwZN+etw1/FF7cEBgEJd/RE0d5InjvRM1hD0H3cf
VEh82e2F80+I+eizspQnyA5EZBXxnjG6hqPhXvHU57WI/l5bU0y9J6GpfYIK2Bkg
aG4pg4OGf7d/vlKsqzYTGY0EnjT6ATNoVRT1cqecgDuuhhgEi5f3LKSTRXZyQH0B
qog7LqqJaFbsNwMh3VrBEc74UpYmuw==
=PBsE
-----END PGP SIGNATURE-----

--Yh0RVSexzH8BLEhH--
