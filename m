Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC86CF9984
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2019 20:16:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726936AbfKLTQP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Nov 2019 14:16:15 -0500
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:43506 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725997AbfKLTQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Nov 2019 14:16:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=Q4hg0aeHUc/0HiChQjA/soQcPBC23fuMapDnEBYN4vI=; b=MU9UB8ho0AZy5V0fVGYID74Rp
        mt/dF7+kV4HTIZEX9MU68YQcePXE+9Zh1PEuof3W0eYT6/8A3svQSN+Q+ujICa/Hd50U+209rScmT
        9n395Qjzc0DSQxilKTLTB7eeoreUzq+ZFQsgoWcU3ULjPbc6E7y2rbpw0z5qEgJmq9e4I=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iUbe7-0000Bm-8y; Tue, 12 Nov 2019 19:16:11 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id C5BDD274299F; Tue, 12 Nov 2019 19:16:10 +0000 (GMT)
Date:   Tue, 12 Nov 2019 19:16:10 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add 'fsi[ab]' to the list
 of non-vendor prefixes
Message-ID: <20191112191610.GL5195@sirena.co.uk>
References: <20191108153538.11970-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="aYrjF+tKt+ApYAdb"
Content-Disposition: inline
In-Reply-To: <20191108153538.11970-1-robh@kernel.org>
X-Cookie: As famous as the unknown soldier.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--aYrjF+tKt+ApYAdb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 08, 2019 at 09:35:38AM -0600, Rob Herring wrote:
> 'fsia' and 'fsib' property prefixes were added as schema in commit
> 2f52475bac7e ("ASoC: fsi: switch to yaml base Documentation").
> Unfortunately to do checks on actual vendor prefixes, we have to track
> the handful of prefixes which are not vendors like 'fsia' and 'fsib'.

Nobody's complained so I'll go ahead with this.

--aYrjF+tKt+ApYAdb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3LBPkACgkQJNaLcl1U
h9BBCQf5AZbQ47BYpfn5IuGPdkZUTcnZn0uF1mMVQognzK3a+pVbGhSpYUtn5/Ag
KGfJZSjwfYQWUDS123xHNtjk7bY9g5FLJV4oZOJ/Fi1nKtzXabeLxRDOB/+xIV85
DMquZvoXuEFgm2PsYLjgW8/iYf/2G3GaXey7RKzU6dXTtKIKW8yy06RYReVYQntY
iMuj0VqMyU1lpwLzBJhtM2YkL2TPbiZmbHmMPrHFmIuWMdP8o732SQflkCpkmQl6
oC7Pou4LGWtQtqIjCb8xi/k853FHJUDvZEVDqoVsqBHiS+JFRWvcuTTd0KY+E+ME
I0qR8vDbsxZgrA8R59M4GfuSglZZ4A==
=WTXi
-----END PGP SIGNATURE-----

--aYrjF+tKt+ApYAdb--
