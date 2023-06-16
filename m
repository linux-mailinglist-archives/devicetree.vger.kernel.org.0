Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C695A73313D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 14:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234267AbjFPMap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 08:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbjFPMao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 08:30:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BA4B30DE
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:30:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 971FA618FE
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 12:30:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2587FC433C8;
        Fri, 16 Jun 2023 12:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686918642;
        bh=Cj+Wk0BwYW8r8EUY/TzZICqsApqGJ5k+uKM7KjKEwUI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qQPl7pv8SnN6vVdFbJ0RBIjxiGIjUQmSY1sgv5lLTp4jjTcJP3OoK5HvqI6bP/Ypu
         5kpPJ2BwVQ7qwaO1o8T4KnmMsx2ZZqHX2Y21c8a9oVOxCLWAVM35bN9qRKvNaiJw2n
         GK0qUhd180e++VIBOtSWbGQ6b9kHGnPg6Dk1sYcR+LMltWGv3e6xgdvQlf5SutvEu9
         LqSXTjkFDAvO2nBUwJUQ0h9vfuIJo24iBoTqcycTGSQYCUT5B8RFelk4uEuIMZFCaM
         Up7G8vBCXrKy4qsAXOSwaNJPjOTDbVxKU9zTr18dv+tvtFUFqI8Lp9ebv7lgEyMZ6N
         nBWYS7DZxzghQ==
Date:   Fri, 16 Jun 2023 13:30:37 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT
 schema format
Message-ID: <993767ab-d7eb-440a-9f13-026821fd1f61@sirena.org.uk>
References: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com>
 <4930994.QJadu78ljV@steina-w>
 <3ddb3d09-2a9b-4a25-8108-a79ea83a9dd5@sirena.org.uk>
 <24617723.6Emhk5qWAg@steina-w>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="HTPZ85NJJ/wNaNFk"
Content-Disposition: inline
In-Reply-To: <24617723.6Emhk5qWAg@steina-w>
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


--HTPZ85NJJ/wNaNFk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 16, 2023 at 02:24:17PM +0200, Alexander Stein wrote:
> Am Freitag, 16. Juni 2023, 14:21:29 CEST schrieb Mark Brown:

> > That'll be the issue, yes.

> Ok, there is nothing I can do, right?

You could check for dependencies and tell me about them.  For example in
this case it turns out the issue is that there's a fix to add supply
names that went in which is only on my fixes branch.

--HTPZ85NJJ/wNaNFk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmSMVewACgkQJNaLcl1U
h9CYJwf/YE21gNPFb/6PxnNe3XkUBbbIUIS7j43aaipTwoIvtSBe5Mk2EplxjCHO
y/MgVq56mF4rQ4pSD301IsCW2Ls9yspsIVOnnx94uxkcsjpZ2UAjgTAbVkdWdbCq
rp8f5WpVBBqB78HmvRqyvlKfxQa6dRNQby7Q6WiqPp8RuiwAOFQz8rI47FVLU81n
y7QgwrJBNW4baqcGRbWrf/foTOxYJTsEnT1jYA4sLuEcTvrAa3/svDs1y8+EHPaa
3WJG9CALR9paLEJF+DRSjiifN95qekn14fP/Yn+MHACZM5VC/MnSjT8Wo9Ad7eXG
YA9i2qtt2w85GOELYTo5k0mnqQsf7g==
=C+td
-----END PGP SIGNATURE-----

--HTPZ85NJJ/wNaNFk--
