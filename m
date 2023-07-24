Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 726D075FC08
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 18:27:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231482AbjGXQ1W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 12:27:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231483AbjGXQ1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 12:27:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A24821713
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 09:27:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 339406126D
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 16:27:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3ABA8C433C7;
        Mon, 24 Jul 2023 16:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690216033;
        bh=9aa3PmiCd+sptTxJkg15gaoL4dmn6mDQ1zVXOb2LYjo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UVG4bEqd7lEHk/ejkE8ansdxj+lL4isqXXoQ2eDRL4PPFlav4u4JPP/ZAI2OAnP+c
         DgnYbRZfjwYAWKzb5WuoAWF177QNvsJmKWStlWUAV14lcO901wnvHES3g3cPDgE9kW
         ycuDDqRPSRbXThN12Jh+ytagRYkEwyKaae1c8nnjY6XS7IwzRrBoDsrP+hArd4Ptc0
         7Le/Rr2OrZ2dyoHwKLZ0mxUaud5juFemZdatFlxCD7WWc3RMBPNUEQ7nW/dpnOVUrK
         9v6SooVHPKPS3yGveJcGcUkD6MORGNv+0i+RCaFkcJO32TAzLHEkukKIRD/C1Qtxna
         lu00UN2JBRj6Q==
Date:   Mon, 24 Jul 2023 17:27:08 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Mayuresh Chitale <mchitale@ventanamicro.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/7] dt-bindings: riscv: Add smstateen entry
Message-ID: <20230724-skeletal-magnify-dd76ad7aeacb@spud>
References: <20230724142033.306538-1-mchitale@ventanamicro.com>
 <20230724142033.306538-3-mchitale@ventanamicro.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="LfipDMf8aZ4B9Q+O"
Content-Disposition: inline
In-Reply-To: <20230724142033.306538-3-mchitale@ventanamicro.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--LfipDMf8aZ4B9Q+O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 24, 2023 at 07:50:28PM +0530, Mayuresh Chitale wrote:
> Add an entry for the Smstateen extension to the riscv,isa-extensions
> property.
>=20
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index cc1f546fdbdc..36ff6749fbba 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -128,6 +128,12 @@ properties:
>              changes to interrupts as frozen at commit ccbddab ("Merge pu=
ll
>              request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
> =20
> +        - const: smstateen
> +          description: |
> +            The standard Smstateen extension for controlling access to C=
SRs
> +            added by other RISC-V extensions in H/S/VS/U/VU modes and as
> +            ratified at commit a28bfae (Ratified (#7)) of riscv-state-en=
able.
> +
>          - const: ssaia
>            description: |
>              The standard Ssaia supervisor-level extension for the advanc=
ed
> --=20
> 2.34.1
>=20

--LfipDMf8aZ4B9Q+O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZL6mXAAKCRB4tDGHoIJi
0ucUAPwMTNY5v7t7Ugeg/KFRggTzn8Oqe3iZi8xFlCkTVyRFWwD/UJj8/RVhkbiu
L04HEJ/dKFXxKVfVLOuD3n9lAoyJJww=
=c+k+
-----END PGP SIGNATURE-----

--LfipDMf8aZ4B9Q+O--
