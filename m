Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F160E58ECA4
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 15:02:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232347AbiHJNBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 09:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232496AbiHJNBI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 09:01:08 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CC7D66A44
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:01:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 360386142C
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 13:01:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6453C433D6;
        Wed, 10 Aug 2022 13:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1660136464;
        bh=seQEyWy+c6mv05+V8++n+CWhbwAc677sfa/vT4UF+f4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uKYE0kFG7aqHbhU8C95U752HrbDLQ0bksXKUre5xrlOHOx/myR7KfosnDfIKUzDCA
         OJKSVKE57vNDjyae/tIEuBv9JN6Yze+cqLrxorwjeUjppKc4qy08uf/Xr3V7fBEovE
         iFf/S3xT/5vVq1WmGTN6m0QK+jTZQK+/cefgpCLkxHkuuldkvO90ie5nayRt5joe5F
         FOfjah14Icu6oI2oYpQhQnhEWgBXflB/KBXfFNogt/RnGLdcW11cRJvxw5k03RZ3e5
         oMo3Xj6xgpR4zUzvIdCLU3bDFqhBytsXsMFByUrdT2dLJICMs0dAFXUNRGFOGhi0Q9
         5zGgRELrwQfbA==
Date:   Wed, 10 Aug 2022 14:01:00 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Matt Flax <flatmax@flatmax.com>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH] ASoC: codecs: dt bind. doc for the new TI SRC4392 codec
Message-ID: <YvOsDNtJnkqmnp4M@sirena.org.uk>
References: <20220810013502.1544961-1-flatmax@flatmax.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="RrAR3/9AgkZITPpP"
Content-Disposition: inline
In-Reply-To: <20220810013502.1544961-1-flatmax@flatmax.com>
X-Cookie: First pull up, then pull down.
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--RrAR3/9AgkZITPpP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 10, 2022 at 11:35:02AM +1000, Matt Flax wrote:

> +maintainers:
> +  - Mark Brown <broonie@kernel.org>

Please don't add me as a maintainer for device specific bindings that
I'm not working on, the expectation is that people listed will know
something about the device.  If the schema requires an address and you
don't want to take it on I guess alsa-devel would work?

--RrAR3/9AgkZITPpP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLzrAsACgkQJNaLcl1U
h9ARgggAgqL1nVTUqvoAyjFcBg+A9/XhKxdf3Nx6tyLpDKjJIMEpUNVRtM0i9XgH
EkVz2pStxn1hrFI74fUZXVt/Hr0ciZY6zCjw1SHCRHbU8izUAjVyv3ixU41anEhH
T9oSatEzmWYnD7wbYpFI783GpVg60m2/X7c03Z1QSo2Fe22kgS53CjmniMnxwI8B
yUCfEEwAkkSD0yevGn47uYIGpeimQKUKbuYURm379Vg2+56t/pekLN9QqAqxVNK9
Jf6lc6ADWuNg2lS/GxnN8MKhJtRvnOsQ1hBNbN8ZUIxKguKVKEwx/w3n+Ayx206i
xKT8fYSumvRVR3wmQ7zZhUZKzcmeFg==
=qPCk
-----END PGP SIGNATURE-----

--RrAR3/9AgkZITPpP--
