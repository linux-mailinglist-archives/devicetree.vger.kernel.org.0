Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 474965599EC
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 14:54:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231902AbiFXMyN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 08:54:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230053AbiFXMyN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 08:54:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A98B54F9E5
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 05:54:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F1DA561B0E
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 12:54:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6FD5C34114;
        Fri, 24 Jun 2022 12:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656075251;
        bh=Blt4WEdyJt5CXJdrRZBIXF6qj7NFonfG6LIluE7tSFg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MeASBDJAVnnuFDoHp7vJDt3TTspKDX0bPowRJJaWEP5hxDiiMxmbukGld+7XWuOAd
         xRO/lZ7LERdtjIYOHD5carhu49TJhppBxWfLeF9mhi1SPyItJEbNVKnda8F5T6ErGk
         roC0rR6TLY5rGF18Houl2Ra6LT/vNCQ+xbTxdmTWlcPii8gsveKwAX24EGnHOyFKM1
         MXH8Uj2+YbK+IQb1tOMDNuaYhvClGRKz6LLyZ+79wAyx7agfKZLwGfkHYoG+91VR33
         CRoIyMDF9JLTEeK26oeZJoMrRb2TPsGQVCGsStkhK01uXopAMT+ls5+U5a0fyEJhTY
         o6X1BvLeH2neA==
Date:   Fri, 24 Jun 2022 13:54:06 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     ryan.lee.analog@gmail.com, robh+dt@kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 8/8] ASoC: max98396: Fix TDM mode BSEL settings
Message-ID: <YrWz7lNdI63xT0R/@sirena.org.uk>
References: <20220624104712.1934484-1-daniel@zonque.org>
 <20220624104712.1934484-9-daniel@zonque.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ueqfVGDcT7oSKScO"
Content-Disposition: inline
In-Reply-To: <20220624104712.1934484-9-daniel@zonque.org>
X-Cookie: Help!  I'm trapped in a PDP 11/70!
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ueqfVGDcT7oSKScO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 24, 2022 at 12:47:12PM +0200, Daniel Mack wrote:
> In TDM mode, the BSEL register value must be set according to table 5 in the
> datasheet. This patch adds a lookup function and uses it in
> max98396_dai_tdm_slot().

Similar issue here with fixes.

--ueqfVGDcT7oSKScO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmK1s+0ACgkQJNaLcl1U
h9Bkfgf/aPjvZgbz6nuHlsuAtJ0UyrQwbMImuGt8tVBiB4YyxPeA0+5feSk4jFO5
OgDyrBUukAMqaKkXys8Bvm5Jm49j99WhsnPCuYDg1K1i1+i7m3PkgfT0pxS6oYdx
W+iUYSWb/BI0cA8lyI5f+AlzzQ1EflJAF8q11BzPGBUC61pC9uxOQbUmKYHx6G2R
2++nnsB50uOI9nfNs8Ji41grG3ZKrjsOBJnbrEUUjmUnWjDeFsnY8e050HZsxgsQ
YXWH1hzG+am3myAJ8JvkeWvc2LbXIS3ASKQl/Z5/uJucFE9PnEagK3Meq/Q4Hjx5
9jCmMj8ESeIjetIE1b0/RcoOOy1nrg==
=jFL6
-----END PGP SIGNATURE-----

--ueqfVGDcT7oSKScO--
