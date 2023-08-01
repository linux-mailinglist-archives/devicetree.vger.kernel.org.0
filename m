Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E6C976BEF5
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 23:07:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbjHAVHm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 17:07:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230426AbjHAVHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 17:07:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79242129
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 14:07:29 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1725C6170B
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 21:07:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17414C433C8;
        Tue,  1 Aug 2023 21:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690924048;
        bh=K0rsCfWkpm4/DZighE9w0PX9rgV/Bm9df7670wIl4FI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TgouPXXIzW0OROEdXovJXLRxq5PEsymVh6oJhJR0SpjVfvYJawFd4TNgXvJY5HaQ8
         sq6xjOvapf4D+xf6vXlFcv8hEkhn/8tGlxDq0rdbgHAenJF5GwJURcJiaWgtQjLY/L
         0Y0eJ/1uYzXUj/lwbjffZ6S9CqS7kmXg/wMM9naTX21Tja6KQCPycu+2hx00IaTJ8w
         42bO/zujh5psu9kDxa3oOx1te1j5nokNZqh0j+OD0GX+/SWoSqUGFUS2xYRbWJdNKD
         3LgZsAKykdIEkTIano3ByN1OlhQivydK4Tp7T9oc4Yu61jKBKRmG0t+ZrqUUSuqrpE
         GdgW19uV1k1kw==
Date:   Tue, 1 Aug 2023 22:07:23 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sandy Huang <hjc@rock-chips.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 05/14] dt-bindings: display: rockchip-vop: Document
 rv1126 vop
Message-ID: <20230801-residue-tractor-5c63e4447f2c@spud>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-6-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ndrRpp+GVoLa+YWP"
Content-Disposition: inline
In-Reply-To: <20230731110012.2913742-6-jagan@edgeble.ai>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ndrRpp+GVoLa+YWP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 04:30:03PM +0530, Jagan Teki wrote:
> Document the VOP for Rockchip RV1126.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

There's no commentary here about compatibility with other, existing,
devices nor did you CC me on the rest of the series. How am I supposed
to know if appending to enum is the right thing to do?

Ditto the other binding.

Thanks,
Conor.

> ---
> Cc: dri-devel@lists.freedesktop.org
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
>=20
>  .../devicetree/bindings/display/rockchip/rockchip-vop.yaml       | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-=
vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.=
yaml
> index df61cb5f5c54..b339b7e708c6 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> @@ -31,6 +31,7 @@ properties:
>        - rockchip,rk3368-vop
>        - rockchip,rk3399-vop-big
>        - rockchip,rk3399-vop-lit
> +      - rockchip,rv1126-vop
> =20
>    reg:
>      minItems: 1
> --=20
> 2.25.1
>=20

--ndrRpp+GVoLa+YWP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMl0CwAKCRB4tDGHoIJi
0sMRAP94AAcG2k+QdviKRNxL+Z2cWoicgNyRkc73TT92zzHevAEAju+k5rogAoDj
aGIjmgDauCja1IFZGjTf7DzL03fFXAE=
=mxOH
-----END PGP SIGNATURE-----

--ndrRpp+GVoLa+YWP--
