Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF21546A074
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 17:03:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376539AbhLFQEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 11:04:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388085AbhLFP7C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 10:59:02 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7004DC08EB3F
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 07:42:31 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F0AB16123D
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 15:42:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EA3BC34900;
        Mon,  6 Dec 2021 15:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638805350;
        bh=vxHt8yQIACfo+eg5a/K8OTetZFiZUvKMMODqrLzrgaU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sNzZx7N3eoc9v2maBGqKAhMPJ/JAJkHwn4BKNeIfoKU2X3w7IvA/O9d4fR7Rq60La
         outLYWYMm8mieQnTsaeLFNGRPYj0bw3+Y5XUq9j8VGOHr0aDiGJmZ+HookUW/2IwTU
         HaONiPVx+9hLYMi+X10cw1oF/7ak2ERDf0OpNzolGO20mCCGlY4CdMxcjW7U/yftXD
         MTwCf4x2KopFm2l96ZVLOZvCtKbXJkaYjLkuz0x3i7WfTzXjsdFiLsWpHdXq0cnNvo
         zaP3EpPsIMdZdGRuQ8Qd9qgTFDak8G/XwzB8IV6jDNGmEwv8CJLuvW3UlVH+DqbeKh
         RyV7/3lqz5amA==
Date:   Mon, 6 Dec 2021 15:42:26 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: regulator: maxim,max8973: Document
 interrupts property
Message-ID: <Ya4vYjGSUeJFiRa3@sirena.org.uk>
References: <20211206153432.226963-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="SD6ZSew+sVN9TsAj"
Content-Disposition: inline
In-Reply-To: <20211206153432.226963-1-thierry.reding@gmail.com>
X-Cookie: You will soon forget this.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--SD6ZSew+sVN9TsAj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 06, 2021 at 04:34:32PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> One of the examples in the bindings has an interrupts property and the
> Linux kernel driver has support for requesting an interrupt as well. It
> looks like the absence from the bindings was just an oversight. Add the
> property to make sure the examples can be validated.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--SD6ZSew+sVN9TsAj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmGuL2EACgkQJNaLcl1U
h9BSjgf8C0QwS53uOk4sK8klELOF3npr8KNvkshFu4YI/dHhmwcG7sccrb9lSMQD
cqkDJ84tw64laBbyCZQkdIzvr9ZP4GZs+UMTecvOJ6ge0X+Rdkxu3JW8VZ79GGT1
74K6M+VTOyhfnku8Lmu8QwgId5pje85gnc5NiAx8m8KM9URNwjpnfUQOP/BElqjD
rvfKJ8dlGQUTbGfg5xmSJ3bN6Bc4WcpXAg5ZPqDaTuL+MLG9Io9aLaeXxlM3U0di
2M6qXl+dUZpykrdyaKaph1V00NBR8ClciEMfzZU7WRqTAx5UZkVxMQTU+NPCEPT0
tAgiRal8ZmGil8J0HxavoCEFhgnAuw==
=1HW7
-----END PGP SIGNATURE-----

--SD6ZSew+sVN9TsAj--
