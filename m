Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A1B6467D21
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 19:19:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234843AbhLCSWe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 13:22:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382539AbhLCSW1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 13:22:27 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F20DC0611F7
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 10:19:03 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 56F93B828E6
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 18:19:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDA8DC53FCD;
        Fri,  3 Dec 2021 18:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638555541;
        bh=bizp3GnqOs0gWC/NPy0Dkcpf3ylx73M0Vz/4mF0bfD8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IJ4EgcUUX0NedFpknB05mXARkhmt4yFlkE3FsE+7s93cAJwq2avGNPJqsGk9bIfrP
         N/SvvcV+3f21QvsLhbMvArPmF4GKnE/bZ5oWP04Lu0XFEitXfwEC9X1UyOhneqLeXM
         Gj0jyIsGgxHo8tJkQ/188ggLZML/M4bTaARiKDoOp1HcgRCVUYbRRuZDeEwULA+llN
         Y7p816Cqf3QjTf0ai3PGHYcUehjz6UVfeT74x1BPYBRHTT2mOv/FOkFb0cijzce9Eb
         2i7xxGSe2wkW2mWPQbj6R+MkW2dWJJK71qXjHS7wRK69zOObcAj3atPopVEJsGA6qJ
         X0pLCs0U5uXrg==
Date:   Fri, 3 Dec 2021 18:18:56 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, p.yadav@ti.com
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document
 "cdns,qspi-nor-ver-00-10"
Message-ID: <YapfkGNetHhA0Bws@sirena.org.uk>
References: <20211203181714.3138611-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="mUpoYu0o0AWhQx9v"
Content-Disposition: inline
In-Reply-To: <20211203181714.3138611-1-dinguyen@kernel.org>
X-Cookie: Don't get mad, get interest.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--mUpoYu0o0AWhQx9v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 03, 2021 at 12:17:12PM -0600, Dinh Nguyen wrote:
> The QSPI controller on Intel's SoCFPGA platform does not implement the
> CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> results in a crash.

This is the third copy of this you've sent today with no differences
I've spotted between them - what's the story here?

--mUpoYu0o0AWhQx9v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmGqX5AACgkQJNaLcl1U
h9CBcgf/Tu1uk6bu5PWl3dCIUwoibNSmUqOxjw8y1i+ny7afoDK4jfN7HctpWONR
32o3tN7fwCQXTqOapTBYKS8x1GFZ1bezf4TW0O+JYNg8U+DuUCJv5YxYUZ2cPQp1
jNv7aDeni0uV+8JmBa2CDfIwTOX6BeWIl7O04JeOUpB/sYlIRJSLDdUCR609VlV4
i10Mk54mUkk/y6oyzfdZ3aWjPZARHJ7me1nfVdyQ2Eao1lRdkM1kG0bO9LWXiXkZ
/HOkqxilyc6atKEUjV80TS9NG98ZbxqNEfBG/2vX5/q6cDzSGbb/BsyEuQNvVnZV
WIq6WxVVEI8sB1yRIAuNti7ll4EJcQ==
=6JBm
-----END PGP SIGNATURE-----

--mUpoYu0o0AWhQx9v--
