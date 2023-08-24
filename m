Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4152F7873FE
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 17:23:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233485AbjHXPWz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 11:22:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241295AbjHXPW0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 11:22:26 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E7D019B0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 08:22:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D8E3667120
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 15:22:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84BDCC433C8;
        Thu, 24 Aug 2023 15:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692890544;
        bh=7JhRfbopQaOogreIPejQDXFlXIIj835fOjpo1rdhrvg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=n3NuT2Sbufm+uP2yyu+PPTDUn34OSdOVe8nkOHpirnCm6/0YbnURhuhRLmOt2Gt+j
         ycLCBMdw5pDc6LV79meDuu3xh4ZJT5A5UnSXBTamhD3xIt+ZOhRjhinu9Pqk5KbsfN
         RftNgaypVKIbi2YMaP0ZP7bfyz+M4dGlZZ0DeLLcuL0ToeDrIyqQsI2h2NMj0aDuWO
         s4fBq1WLpK96X+Y007SJXDNIjc0DzcTeZKMIzuKSlv2O0Eaa+38paaaOgbZI0AUQan
         yL+QVCbYKB2iZh/jTVHTwxAWAwkcq/fH76vh5Poafc4BCdDlePj80kdWjRcEdt77nY
         LQO0QWhKZxpJQ==
Date:   Thu, 24 Aug 2023 16:22:18 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        mripard@kernel.org, jagan@edgeble.ai, heiko@sntech.de,
        uwu@icenowy.me, andre.przywara@arm.com, daniel@ffwll.ch,
        airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
        noralf@tronnes.org, samuel@sholland.org, jernej.skrabec@gmail.com,
        wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 2/8] dt-bindings: display: panel: mipi-dbi-spi: add
 Saef SF-TC154B
Message-ID: <20230824-science-praising-2ca38dba9af0@spud>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
 <20230823212554.378403-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hkp6JIsJttgpt6Su"
Content-Disposition: inline
In-Reply-To: <20230823212554.378403-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--hkp6JIsJttgpt6Su
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 23, 2023 at 04:25:48PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> The Saef SF-TC154B is a 1.54 inch 240x240 square panel with a MIPI DBI
> compatible interface. The panel is used on the Anbernic RG-Nano
> handheld gaming device.
>=20
> The initialization of the panel requires a firmware binary which can
> be made with the mipi-dbi-cmd[1] tool. The command sequence needed
> can be found in both source[2] and binary form[3].
>=20
> [1]: https://github.com/notro/panel-mipi-dbi
> [2]: https://github.com/macromorgan/panel-mipi-dbi-firmware/raw/main/saef=
%2Csftc154b.txt
> [3]: https://github.com/macromorgan/panel-mipi-dbi-firmware/raw/main/saef=
%2Csftc154b.bin
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml    | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-d=
bi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-db=
i-spi.yaml
> index 2f0238b770eb..04cc5bfce051 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.=
yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.=
yaml
> @@ -66,6 +66,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - saef,sftc154b
>            - sainsmart18
>            - shineworld,lh133k
>        - const: panel-mipi-dbi-spi
> --=20
> 2.34.1
>=20

--hkp6JIsJttgpt6Su
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZOd1qgAKCRB4tDGHoIJi
0onQAQD0bPdGB277UvE6qnuZ1eoDAZM5HYcYryvPZvD0E9gR0wEAzyZZRS6I7sdi
1XjrHct/ffNuU8lGxuFOam88vyQjBAI=
=I1BL
-----END PGP SIGNATURE-----

--hkp6JIsJttgpt6Su--
