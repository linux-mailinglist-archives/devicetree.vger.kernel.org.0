Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35239750BB7
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 17:04:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232420AbjGLPEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 11:04:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232135AbjGLPE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 11:04:29 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14B49BB
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 08:04:29 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 99C94617DE
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 15:04:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35D7FC433C8;
        Wed, 12 Jul 2023 15:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689174268;
        bh=cPZS4lpGF39/+6fc8hJLnEFDpn06rPvyjR7zxfkgJgo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bqNdVlqiX4VkCYKNJtfvJFQcFUSkHFnUNB4s3ev/IXmgBbnS6GjL/+EXk7R6J/NXG
         eYr2EWMhxxW6r4/i1DotW6DhwuKQu0MohXiZYbxm9r+zsJFIqun66k0NMLXpUyqbtl
         8T3Bq1Rgq8rzChC337pLPnahCNoxZiuAkA75Raz/BPBrWpmBueLOBtTJoj6EJW13/s
         czdQKBQo/JrJi1Sy57f+cuBdxQ4L3HRdMUa0fwoKxPkLGXr2l+xWIjhf5k8amweNa7
         JhYmg289Qjl5VhIYyjMCbjs+D+CIXvhWsBHhbGuc7rA1TRJvCvVhQCqxelnLIwYMUg
         d9lfVv0mgrPiA==
Date:   Wed, 12 Jul 2023 16:04:24 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Palmer Dabbelt <palmer@rivosinc.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: RISC-V: Re-word the I extension binding
Message-ID: <20230712-dumpling-submerge-af53ed9ce484@spud>
References: <20230711225212.11542-1-palmer@rivosinc.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pIztD/2xnckBt6EN"
Content-Disposition: inline
In-Reply-To: <20230711225212.11542-1-palmer@rivosinc.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--pIztD/2xnckBt6EN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 11, 2023 at 03:52:12PM -0700, Palmer Dabbelt wrote:
> I'd argue this changes the definition of the I binding, as there was
> more than just the counters that got split out (CSRs and fence.i at
> least).  We haven't released these bindings yet, so IIUC it's OK to
> change the definition still.
>=20
> I think this matches the original intent, or at least what the
> implementation does.

Depends on what you consider "original". My intent with these new
bindings was to deliberately exclude from `i` things that are already in
extensions at the time of writing, so that when an platform shows up
that decided not to implement them, it does not need a special case
added.
I'm fine with doing it this way though, if that is what you want, but
what do you mean by "the implementation does"? To align the
implementation with the meaning in the current binding, would we need
to refuse harts in riscv_early_of_processor_hartid() in Linux?

>=20
> Fixes: aeb71e42caae ("dt-bindings: riscv: deprecate riscv,isa")
> Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
> ---
>  .../devicetree/bindings/riscv/extensions.yaml        | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index cc1f546fdbdc..31ec244bd32f 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -67,13 +67,11 @@ properties:
>        anyOf:
>          # single letter extensions, in canonical order
>          - const: i
> -          description: |
> -            The base integer instruction set, as ratified in the 20191213
> -            version of the unprivileged ISA specification.
> -
> -            This does not include Chapter 10, "Counters", which was move=
d into
> -            the Zicntr and Zihpm extensions after the ratification of the
> -            20191213 version of the unprivileged specification.
> +          description:
> +            The base integer instruction set, as specified by the 2.2
> +            version of the unprivileged ISA specification, formally know=
n as
> +            the user-level ISA.  This definition of I includes various
> +            extensions that were later split out.
> =20
>          - const: m
>            description:
> --=20
> 2.40.1
>=20

--pIztD/2xnckBt6EN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZK7A+AAKCRB4tDGHoIJi
0pJUAP42p8ReR3ES/r6GTNH0AONZ7RhnwfW5UMgq3e5t3Dh4OgD/XDuPrVldeEPm
f74q9aqqIrMMeMIuX+jSlmf8LOsr5g8=
=2tHU
-----END PGP SIGNATURE-----

--pIztD/2xnckBt6EN--
