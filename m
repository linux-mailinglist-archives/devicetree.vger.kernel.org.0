Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5B9B705953
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 23:14:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbjEPVO3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 17:14:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjEPVO3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 17:14:29 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 944A9121
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 14:14:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2F0416348D
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 21:14:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1835FC433EF;
        Tue, 16 May 2023 21:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684271667;
        bh=y+rreP5sHr2YNg/6jHqP3cZxDuJomyg0Ljp/B6vy2c0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Fh3tJkcFmYX8eKMNsO2rr9g9bfH1UAfc224Vpk+1usIlIWZfpWIzsZq020oBoR5LD
         MZk+63ZXtFcTKi6m9ssDy7MAowK3OK/k9bjGxx7k1Ls7dET+lSL3MySqL9t04JAUV1
         92ekH95HH5lqkD8+SALfYScMTC2h235y7CsX/0SV3HcsoYTvVE7NK11sTSq2r2CLLG
         6C/LS2EtLKX/QXxKX7vgBmo3l/HQ1iPHHe4xTBeRfw6zdraZU6D2zEnlrF9br8UVi2
         mrqHa+OGTrM3JCBjl9mqFb+IDMQbiySepseuw2hOEnYwTzBlQk4ANa9rW9lf/Pu+8x
         VzMsZsnQBDuSg==
Date:   Tue, 16 May 2023 22:14:23 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Add Edgeble Neural
 Compute Module 6B
Message-ID: <20230516-frostbite-demystify-8634264693e3@spud>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="98xwV+p72ipvBnbv"
Content-Disposition: inline
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--98xwV+p72ipvBnbv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 16, 2023 at 10:04:51PM +0530, Jagan Teki wrote:
> Neural Compute Module 6B(Neu6B) is a 96boards SoM-CB compute module
> based on Rockchip RK3588J from Edgeble AI.
>=20
> Edgeble Neural Compute Module 6B(Neu6B) IO board is an industrial
> form factor evaluation board from Edgeble AI.
>=20
> Neu6B needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 6B(Neu6B) IO platform.
>=20
> This patch add dt-bindings for Edgeble Neu6 Model B SoM based IO board.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--98xwV+p72ipvBnbv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGPyLwAKCRB4tDGHoIJi
0pnaAQDZ3cu8KV6KuLy7sKcu+MTeHXDdnLgIm6dSJIVhCgh0FAD+IlJhrxNG1Y7n
l39cirgNe117K2ElBTOnxP0/6Dfssww=
=lQrB
-----END PGP SIGNATURE-----

--98xwV+p72ipvBnbv--
