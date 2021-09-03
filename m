Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F383E3FFF47
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:36:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235188AbhICLhp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:37:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:46200 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1348763AbhICLhp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 3 Sep 2021 07:37:45 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id BE24D60EE3;
        Fri,  3 Sep 2021 11:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630669005;
        bh=OEDmR4negKnOGDPQ+EoysnEMdMzaAmjeJI6XSFGbwP0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YS5C1hEBeTDQA27HAXjWaLnON3yXeEr99CMJk0e8zarkJUmUO2ebTBKqDBVGz8B3j
         HuABTAp4+j0yOenl+57f51Kb5HKTs138UVjqMWJoSJtx1OZh3Pmw9WdokNkOSLkDIU
         +m1STXVNgEcbODXKFnaYS7KNWFBkeVTsGl4U9czYjPvquJFNV6WpKkWUaxDcZ0WcrN
         RtmQ7GZ0ykpxTxdjxyTdmMcAcS74hN+1ORXGvyPNN8orxJk3aFywVfzDLimAHnTpqR
         KxQdct9hz4co7bt0FXEPe9/Bpb3t4vGbUChX171cz0YmOzpoptVZkKRr1TMwBPxPYa
         KvNqKC1eXppXA==
Date:   Fri, 3 Sep 2021 12:36:11 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        patches@opensource.cirrus.com, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 01/52] ASoC: dt-bindings: Add WM8978 Binding
Message-ID: <20210903113611.GG4932@sirena.org.uk>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-2-maxime@cerno.tech>
 <20210901143950.GE5976@sirena.org.uk>
 <20210903103706.jhyn4ancyfr6bjcy@gilmour>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cyV/sMl4KAhiehtf"
Content-Disposition: inline
In-Reply-To: <20210903103706.jhyn4ancyfr6bjcy@gilmour>
X-Cookie: Darth Vader sleeps with a Teddywookie.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--cyV/sMl4KAhiehtf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 03, 2021 at 12:37:06PM +0200, Maxime Ripard wrote:
> On Wed, Sep 01, 2021 at 03:39:50PM +0100, Mark Brown wrote:

> > What's the story with dependencies here?  I don't have a cover letter or
> > anything and there seem to be a bunch of tangentially related patches in
> > a series here.

> There's no dependency, you can pick the ASoC patches safely

Oh, OK.  In cases like this it's generally better to not combine random
unrelated stuff into one series - as well as making it look like there
are dependencies it can also cause problems for tooling (eg, b4 is going
to want to fetch the whole series and my personal tooling doesn't like
the same series going to more than one of the subsystems I maintain.

--cyV/sMl4KAhiehtf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEyCKsACgkQJNaLcl1U
h9Cc1wf/d0cuKA+rHU2WN8WYQh5LbPAz4e8P7acnfuh7oKCRIH9V9jRNgUILevrE
uCq+Qv9/8rDBmCvtGEgqh+OZurQg+Eo3RVsXxha9DeSJjwGFb3EpRK3srD3poRLh
FHqHch5BL7h+hbSS719H/ouC2mNEvblu33X7WGRd/nBnDpV0v4sPH15XeBgK23o5
rCHb+jwW22Zv0bMvKF9FHsP14D6vaqlTGmfdDSnF0yDVJhJvviG6sfhqFcqjsYO2
gYrAmdhyAaAici2yc0yn5XjSk1Xc/DTrn5JE1uuTd8jroEECaEjA9RfMo7/GJoK1
wooyvMcGHchu1wQ6s3welkbtahdTFg==
=rh7W
-----END PGP SIGNATURE-----

--cyV/sMl4KAhiehtf--
