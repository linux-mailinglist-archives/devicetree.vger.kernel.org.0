Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C57F74DD54
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 20:28:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbjGJS2N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 14:28:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjGJS2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 14:28:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AF2C180
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 11:28:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DB1176118A
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 18:28:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E5C7C433C7;
        Mon, 10 Jul 2023 18:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689013690;
        bh=3cEI8jFkOTOGNVblYnm1wjEjkydkAdSYYTHa2XVe8Wo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JTIuZKQ0i0CbTrehTO/hSAjxqwZ3XRhJ8CA6d0KpZYOHPHXRx3FY8YN7CSleZoGp9
         EkbA7WDC7RFPfvJ4jdunfb/iG7H4x3UOWoWQneljSv5d9UxKJgndk7ROTXhv7EHn/4
         LqOyGC2u/M2q687yk0vgYpfeY3yc2maJ2mWYeQrWYVeeh/SnjfNON9ebPDjUtK2wSm
         mjSYptWK9yxolE0/hGM94B7AaBwn+m9dAygDoMB5zKT4mI+Cvv/Z8m2XwLUy3oB7QX
         98Wb/4Y4bzzdFh2Md1BYu8fSGib9rZuQSLKE+KOpA0M+rTQ8F6b6xZojpnMyXixF5Y
         H2dvKg1IbG5/Q==
Date:   Mon, 10 Jul 2023 19:28:06 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Felix Moessbauer <felix.moessbauer@siemens.com>,
        Walker Chen <walker.chen@starfivetech.com>
Cc:     Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] riscv: dts: Enable device-tree overlay support for
 starfive devices
Message-ID: <20230710-villain-dainty-d1a90ce57a27@spud>
References: <20230627080620.329873-1-felix.moessbauer@siemens.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="MTGoKLMunEpeFoDx"
Content-Disposition: inline
In-Reply-To: <20230627080620.329873-1-felix.moessbauer@siemens.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--MTGoKLMunEpeFoDx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Emil, Walker,

On Tue, Jun 27, 2023 at 04:06:20PM +0800, Felix Moessbauer wrote:
> Add the '-@' DTC option for the starfive devices. This option
> populates the '__symbols__' node that contains all the necessary symbols
> for supporting device-tree overlays (for instance from the firmware or
> the bootloader) on these devices.
>=20
> The starfive devices allow various modules to be connected and this
> enables users to create out-of-tree device-tree overlays for these module=
s.
>=20
> Please note that this change does increase the size of the resulting DTB
> by ~20%. For example, with v6.4 increase in size is as follows:

Whatcha think?

> jh7100-beaglev-starlight.dtb 6192 -> 7339
> jh7100-starfive-visionfive-v1.dtb 6281 -> 7428
> jh7110-starfive-visionfive-2-v1.2a.dtb 11101 -> 13447
> jh7110-starfive-visionfive-2-v1.3b.dtb 11101 -> 13447
>=20
> Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
> ---
>  arch/riscv/boot/dts/starfive/Makefile | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/=
starfive/Makefile
> index 170956846d49..0141504c0f5c 100644
> --- a/arch/riscv/boot/dts/starfive/Makefile
> +++ b/arch/riscv/boot/dts/starfive/Makefile
> @@ -1,4 +1,10 @@
>  # SPDX-License-Identifier: GPL-2.0
> +# Enables support for device-tree overlays
> +DTC_FLAGS_jh7100-beaglev-starlight :=3D -@
> +DTC_FLAGS_jh7100-starfive-visionfive-v1 :=3D -@
> +DTC_FLAGS_jh7110-starfive-visionfive-2-v1.2a :=3D -@
> +DTC_FLAGS_jh7110-starfive-visionfive-2-v1.3b :=3D -@
> +
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7100-beaglev-starlight.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7100-starfive-visionfive-v1.dtb
> =20
> --=20
> 2.39.2
>=20

--MTGoKLMunEpeFoDx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZKxNtgAKCRB4tDGHoIJi
0l9xAQCftFaO6Lwn6sxOnIF0Vd1kVEIz5wi5s9sxgRd8EYtkoQEAxJt7CLfD3oNi
SRAhiqUnDeuBQpFLNILY+tXRQVKE4A0=
=GH7D
-----END PGP SIGNATURE-----

--MTGoKLMunEpeFoDx--
