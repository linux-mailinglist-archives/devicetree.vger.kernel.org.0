Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FBC7709FD6
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 21:23:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbjESTXO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 15:23:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230156AbjESTXN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 15:23:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBE5B114
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 12:23:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 500D561483
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 19:23:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE305C433EF;
        Fri, 19 May 2023 19:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684524191;
        bh=XKR3xyaU1+tHsPS36TWlbr7Iq5cficwi1Icba9z+XPg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mSAXGOW4riJ4YkxTII0V7yq8x9AkxcPMT4IFtfMcel6yY1a49j7j++24/H4LtfE7U
         w2cw9pqV3N/CRed6vAdVSkM+WOuThY1QfX3FxjpXZ4On91UgBVOnxWA2sICUQKvJ2G
         G/eO+OImDV5Qu8tCNfbc7+3V8mG32Hx+buZlgqvBpQaPgi/aMJLlFSzp9bNrn9IDOP
         N2KXLD58PPvUhk6ls68j8zKVUKouN9E17imQgKYAbJ4Uaqiy5jEFOeXBe2a34Tnjrr
         a+0glE/rTjGtE3/jJIo+bRQriPbsjtT807J3Negb5YbrmEX+lpRe2XHcjFnxErfnG4
         ncVNGz8Cfy99w==
Date:   Fri, 19 May 2023 20:23:07 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v4 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Message-ID: <20230519-floral-diagram-894858b940c1@spud>
References: <20230519125236.352050-1-festevam@gmail.com>
 <20230519125236.352050-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="YiZE99mUmGcayt1S"
Content-Disposition: inline
In-Reply-To: <20230519125236.352050-2-festevam@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--YiZE99mUmGcayt1S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Fabio,

On Fri, May 19, 2023 at 09:52:34AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The i.MX6SX General Purpose Registers is a set of register that serves
> various different purposes and in particular, IOMUXC_GPR_GPR6, at
> offset 0x18, can be used to configure the LDB block.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> +  bridge@18:
> +    type: object
> +    $ref: /schemas/display/bridge/fsl,ldb.yaml#
> +    unevaluatedProperties: false

How come you need to upgrade the additionaProperties: false, and the
"plain old" $ref is not sufficient?

> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx6sx-clock.h>
> +
> +    iomuxc-gpr@20e4000 {

syscon@ please.

Thanks,
Conor.

--YiZE99mUmGcayt1S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGfMmwAKCRB4tDGHoIJi
0ph2AP0XLrCNqGMmM+E7aLxmP4PcgPkwN8K+y3Yj2lS1yX1KXwEAuV2mHPjQxH1E
5H0fbBWR9ls8StqGIsmxrHc1+/F/5AY=
=oeVR
-----END PGP SIGNATURE-----

--YiZE99mUmGcayt1S--
