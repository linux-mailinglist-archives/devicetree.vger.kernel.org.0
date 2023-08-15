Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6357877CDD7
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 16:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237353AbjHOOKT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 10:10:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237511AbjHOOJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 10:09:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49899199D
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 07:09:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D1ECC64D97
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 14:09:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB40DC433C8;
        Tue, 15 Aug 2023 14:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692108589;
        bh=wqiob8hbCVfoUUCW6H8v+vZQDmdkuYesFibBgBXMqkQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=K2ejAzF/CmS41sghJ9VH/4c9aI5AGHlS9SuywSUk7D1OAqayREKWrVQKu2zDW+Gr9
         eJm9801LnkMWa6GZyoO2/3ml2TRXfpcQBH+yIYV4GH1007frIqF2/ieqeWW9znIcCK
         e2ZLFGGbJVPR7h5gXwVM9zNJd2j+oC5u+XP98tFwdoDMePsmUfLsTvI7DU5sAZtYDC
         vciUBqRPcerkFn0FQEbSPi915Nahx6Et7SM/WTeGdyAojyNGPeodq+Qep26FnEWMJp
         egmbtu9yG9d+3IsO+j//ANLXMSnGl0W/qSbnTOFXipyNWS2WuzAYL+F2GhMLyYmbY0
         si+9R1MS0MnFA==
Date:   Tue, 15 Aug 2023 15:09:44 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Binbin Zhou <zhoubinbin@loongson.cn>
Cc:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v2 4/7] LoongArch: dts: DeviceTree for Loongson-2K0500
Message-ID: <20230815-renounce-reminder-a6728ebefb5f@spud>
References: <cover.1692088166.git.zhoubinbin@loongson.cn>
 <f869b30d119a56abaa67ac78cd981fc0c2f0d28b.1692088166.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="OyS4IZAK5/TiUZ4a"
Content-Disposition: inline
In-Reply-To: <f869b30d119a56abaa67ac78cd981fc0c2f0d28b.1692088166.git.zhoubinbin@loongson.cn>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--OyS4IZAK5/TiUZ4a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 15, 2023 at 04:51:10PM +0800, Binbin Zhou wrote:
> Add DeviceTree file for Loongson-2K0500 processor, which integrates one
> 64-bit dual emission superscalar LA264 processor core.
>=20
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  arch/loongarch/boot/dts/Makefile              |   2 +
>  .../boot/dts/loongson-2k0500-ref.dts          | 115 +++++++++
>  arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 244 ++++++++++++++++++
>  3 files changed, 361 insertions(+)
>  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500-ref.dts
>  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500.dtsi
>=20
> diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/M=
akefile
> index 1e24cdb5180a..aa0b21d73d4e 100644
> --- a/arch/loongarch/boot/dts/Makefile
> +++ b/arch/loongarch/boot/dts/Makefile
> @@ -1,3 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> =20
> +dtb-$(CONFIG_MACH_LOONGSON64)	=3D loongson-2k0500-ref.dtb
> +
>  obj-$(CONFIG_BUILTIN_DTB)	+=3D $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_=
NAME))
> diff --git a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts b/arch/loong=
arch/boot/dts/loongson-2k0500-ref.dts
> new file mode 100644
> index 000000000000..c89662e5a296
> --- /dev/null
> +++ b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> @@ -0,0 +1,115 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 Loongson Technology Corporation Limited
> + */
> +
> +/dts-v1/;
> +
> +#include "loongson-2k0500.dtsi"
> +
> +/ {
> +	compatible =3D "loongson,ls2k0500-ref", "loongson,ls2k0500";
> +	model =3D "Loongson-2K0500 Reference Board";
> +
> +	aliases {
> +		ethernet0 =3D &gmac0;
> +		ethernet1 =3D &gmac1;
> +		serial0 =3D &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +		bootargs =3D "earlycon";
> +	};
> +
> +	cpu_clk: cpu-clk {
> +		#clock-cells =3D <0>;
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <500000000>;
> +	};
> +
> +	cpus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu =3D <&cpu0>;
> +				};
> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			compatible =3D "loongson,la264";
> +			device_type =3D "cpu";
> +			reg =3D <0x0>;
> +			clocks =3D <&cpu_clk>;
> +		};
> +	};

I've not read this whole patch, but from a glance - why is the cpu node
in the board file, not the soc one?

--OyS4IZAK5/TiUZ4a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZNuHKAAKCRB4tDGHoIJi
0shSAP9wAbCAX+SsfdfyfaUCfbJb+J4j6UUv7uVPydkk4Mh1jgD+JN9KXzRyOAzx
M90REjmMhH7O58yJSXS0sA/JjXYA6As=
=N03o
-----END PGP SIGNATURE-----

--OyS4IZAK5/TiUZ4a--
