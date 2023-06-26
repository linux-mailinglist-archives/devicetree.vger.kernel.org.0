Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CDB473DD15
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 13:16:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbjFZLQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 07:16:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjFZLQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 07:16:26 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78F60B1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 04:16:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DFADA60DE5
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 11:16:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C12A7C433C8;
        Mon, 26 Jun 2023 11:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687778184;
        bh=9ayFCBj3MQtyKAKoLoTqh0KbhdeaXWiq1Cdbv5W5AVc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bwR9SI1mPvpmw1/mlLt3jvVOiaQj8T+wFQ0AP1YxHhtKdHbI5towmlwY58Olc4dLo
         RRFjgTsgxQcbry37GnCqXNV2ITSDzzzJ/g3Yq30LnEE8cV5Ph9HXR6thlWSLjXryDC
         61XZrChya6l80f6mjKvjNVXIM1qWtOSAJkOYHkjQu1/Bkrj5B2Th4e8/NXbB+axdfz
         dPxVJH/TGX3wZDJspn6ZPruIVqMk8w2IYQ+1UQgvqpNhq+RIE4ngDUteqzKjnSdNMK
         odgRPK5pnyqTxgXsXs9tihC6DkHd8DjTJWpMbmhgmqOW5ZL7/39BNsWx5e05wry/XY
         cIiCwZ1csxa9Q==
Date:   Mon, 26 Jun 2023 13:16:20 +0200
From:   Maxime Ripard <mripard@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH] dt-bindings: mtd: Fix nand-controller.yaml license
Message-ID: <5rup662p25xia6r2pdiaitqoubs66n4tyok4gklilk7aqebmvm@mw7ekpf5654w>
References: <20230622212415.3583886-1-miquel.raynal@bootlin.com>
 <20230623210508.GA1096125-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ayqqxbdxc6tslgyl"
Content-Disposition: inline
In-Reply-To: <20230623210508.GA1096125-robh@kernel.org>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ayqqxbdxc6tslgyl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 23, 2023 at 03:05:08PM -0600, Rob Herring wrote:
> On Thu, Jun 22, 2023 at 11:24:15PM +0200, Miquel Raynal wrote:
> > Binding files should be dual licensed, this file was writtent with the
> > idea in mind of following the rules, but the SPDX tag did not reflect
> > that correctly. Fix the tag so we are sure this file is licensed
> > correctly.
>=20
> Yes, we do want dual license, but things converted from txt bindings=20
> need those authors' permission as the txt bindings are all implicitly=20
> GPLv2. That didn't happen here, so we kept the default implicit license.=
=20
> Looks like this case is all Bootlin authors for significant parts of the=
=20
> original txt binding, so you should be good on that part (assuming your=
=20
> employer agrees). Maxime did the schema, so need his permission too.

I'm not sure how redundant it is with what Thomas just said, but for
that patch and any license change from GPL to GPL+BSD-2-Clause:

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--ayqqxbdxc6tslgyl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZJlzhAAKCRDj7w1vZxhR
xdPAAP9p8kRc0j7S1e3EdWoZuCXO69Xvcs5qDnmzkbkcC2TdfwEA4kJf6AoMzR7I
bxwxTtp7zkU0GlykL+Jd/TDnXL7uwwg=
=UziJ
-----END PGP SIGNATURE-----

--ayqqxbdxc6tslgyl--
