Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D04370FF37
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 22:30:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbjEXUaN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 16:30:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjEXUaM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 16:30:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC7D180
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 13:30:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 52F5264089
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 20:30:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73A08C433EF;
        Wed, 24 May 2023 20:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684960209;
        bh=Re1wX3W69i3ZIaz/pAHTYuHqgqHaZa0o99T50sYnC2o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Mg4kwL3o57bXoA1rQ6/zA/RBTwv5ThG2jMwI463FUwVvKyBs091tMNv4sMhxeJY1u
         gHphGhu0tmAB5HNCImzeX/QjK/QwDQUBX1uiVwGgvGBtmoRuBi8hpF4QymkFEMjbLN
         vRuBLhHE1DDMsxM84S8Tc42oc5OHmAJ1rxSKGTlKUmSbniVaUuxw2VN8t96jS2+AsB
         9Dt+Uo4O/ihAA9+EkCUIA4gFbMhPopJrMGHVfmTxvLqQciciTWlVoXjVc+xeJ9+POS
         62p4oiXW+4rd0YJjyW91Oay1ixSDJNcIBhuof97KLE7Av1Vsyc27aGzg4/mMCS35G5
         XOVCyPevoI5rQ==
Date:   Wed, 24 May 2023 21:30:03 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, zyw@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, broonie@kernel.org, perex@perex.cz,
        tiwai@suse.com, lgirdwood@gmail.com, heiko@sntech.de,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: vendor-prefixes: add Indiedroid
Message-ID: <20230524-extrovert-unhidden-35e289c28bc4@spud>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="JhSCHFoVTqpyyaDA"
Content-Disposition: inline
In-Reply-To: <20230523213825.120077-5-macroalpha82@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--JhSCHFoVTqpyyaDA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 23, 2023 at 04:38:23PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Indiedroid is a sub-brand of Ameridroid for their line of single board
> computers.
> https://indiedroid.us/
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 82d39ab0231b..632662be6e65 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -655,6 +655,8 @@ patternProperties:
>      description: Iron Device Corporation
>    "^isee,.*":
>      description: ISEE 2007 S.L.
> +  "^indiedroid,.*":
> +    description: Indiedroid

Can you add this in alphabetical order please?

Thanks,
Conor.

>    "^isil,.*":
>      description: Intersil
>    "^issi,.*":
> --=20
> 2.34.1
>=20

--JhSCHFoVTqpyyaDA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG5zywAKCRB4tDGHoIJi
0rCyAQC6g1aHwj9B2sWQaarQoBN801M7WnTwLfkYIxU09ubawgD9Ff4oypI/ENYj
QNlwt1Ep76ScIy+5QNgO5eQo4By9kww=
=CwXw
-----END PGP SIGNATURE-----

--JhSCHFoVTqpyyaDA--
