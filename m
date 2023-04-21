Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 433C26EB168
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 20:12:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbjDUSMQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 14:12:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjDUSMP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 14:12:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87C6AE6E
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 11:12:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1F6A161052
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 18:12:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26125C433EF;
        Fri, 21 Apr 2023 18:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1682100732;
        bh=lTEe8cO9U1J//1TZV+OYSxnLXbBOD0RvQ/wsDC6crgc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RZOX6NkwkiNAQZrE+/IDcBLXkoO4Fu+k3VUWe8GmxobXB3fxNiVvsfmuzMqfymHLV
         5c9SzfljFsbxqOoI2BUoy4w3mARnkw0WA6jWmgoVOiJ53ybSuKVlKCvZvyXCQZnyVI
         c+34TBwYNUSHf54rGrHu8nt+jSTXegYywGuN1qCP8cfjv6+aUFLtvq92XWdGVPayWy
         dv+Zkp9qHZ51pDyheCjwLkGYaV3otIY2mjJXjXTLIGFskAQLThkpdhGma/1HFpQvuc
         BovAiyrWpiBgK1IxucyLtCQQi/JUPR4jsEB56e6oh3H83X9nen0WPkBMuzrjBR3w6C
         vXiG2Em4OulJw==
Date:   Fri, 21 Apr 2023 19:12:08 +0100
From:   Conor Dooley <conor@kernel.org>
To:     palmer@dabbelt.com
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: riscv: add sv57 mmu-type
Message-ID: <20230421-foster-catchy-fc8f963f17d0@spud>
References: <20230421-voucher-ecology-7ddfdf801a71@spud>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Vznf88r/BQv9I0vu"
Content-Disposition: inline
In-Reply-To: <20230421-voucher-ecology-7ddfdf801a71@spud>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Vznf88r/BQv9I0vu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 21, 2023 at 07:07:50PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> Dumping the dtb from new versions of QEMU warns that sv57 is an
> undocumented mmu-type. The kernel has supported sv57 for about a year,
> so bring it into the fold.
>=20
Whoops, completely missed a \ in my send command and lost the dt folks..

I'll resend it at some point I suppose!

> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index 4c7ce4a37052..25d6e8dbffb8 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -66,6 +66,7 @@ properties:
>        - riscv,sv32
>        - riscv,sv39
>        - riscv,sv48
> +      - riscv,sv57
>        - riscv,none
> =20
>    riscv,cbom-block-size:
> --=20
> 2.39.2
>=20
>=20
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

--Vznf88r/BQv9I0vu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZELR+AAKCRB4tDGHoIJi
0pRJAQCVbVnVwVqP4i/HOELCYNrnJmhxKUKlSB2lTNgYdf9cfwD/eKQkB/K8Dg8+
scaWP7+jVoN5ZxFWSRfteCiZHjnH+gk=
=gYiL
-----END PGP SIGNATURE-----

--Vznf88r/BQv9I0vu--
