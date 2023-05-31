Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6205718765
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 18:32:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbjEaQcq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 12:32:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbjEaQcp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 12:32:45 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E7EA12B
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:32:43 -0700 (PDT)
Received: from mercury (dyndsl-091-248-214-208.ewe-ip-backbone.de [91.248.214.208])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 8F7206606EB5;
        Wed, 31 May 2023 17:32:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1685550761;
        bh=iGVlFFWrXlHprpv4RXq3dpJKVALQai2pERiadBlBG7w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HyoKutGysF/etl5J5nl3c891hWPGPMW7npbBGAB8c91HlZXs14c2889HHEn7Hgm/y
         D60QydZT9+cQUlAKIqv1e6rXbI6Z1xoBSYwpjKcIRXlpHGhbJnp11TA4w3jgbtu07V
         VnIWCjZjnPzdbUFeUglwzholxfQ3zcnAdRqaKsxiVA0sve0ZIEdqz+G5+HnFBv62nP
         I7fO8jtw9zft0W3fU29Xb2tDBcmnLB2Acs4n41Jq5ER1hlAzv14l5UcG6iagvPagrX
         nIHVqX5bUVFNAnEvy9gjagUOBD1fSNO2dBwNNUMBu+ktvpR3aqZ7hA/nmm+Zj+6yh1
         RQ4Ng61nrClpA==
Received: by mercury (Postfix, from userid 1000)
        id BA25010607D5; Wed, 31 May 2023 18:32:38 +0200 (CEST)
Date:   Wed, 31 May 2023 18:32:38 +0200
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        lucas.tanure@collabora.com, kever.yang@rock-chips.com,
        yifeng.zhao@rock-chips.com, andyshrk@163.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 2/5] arm64: dts: rockchip: Add sdio node to rk3588
Message-ID: <20230531163238.blpv77h5j7ymdhyp@mercury.elektranox.org>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
 <20230531161220.280744-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7hwyf2s256c2xbfz"
Content-Disposition: inline
In-Reply-To: <20230531161220.280744-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7hwyf2s256c2xbfz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 31, 2023 at 11:12:17AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add SDIO node for rk3588/rk3588s.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 571cdec24a66..6335d5648bc3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1176,6 +1176,21 @@ sdmmc: mmc@fe2c0000 {
>  		status =3D "disabled";
>  	};
> =20
> +	sdio: mmc@fe2d0000 {
> +		compatible =3D "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg =3D <0x00 0xfe2d0000 0x00 0x4000>;
> +		interrupts =3D <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks =3D <&cru HCLK_SDIO>, <&cru CCLK_SRC_SDIO>,
> +			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
> +		clock-names =3D "biu", "ciu", "ciu-drive", "ciu-sample";
> +		fifo-depth =3D <0x100>;
> +		max-frequency =3D <200000000>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&sdiom1_pins>;
> +		power-domains =3D <&power RK3588_PD_SDIO>;
> +		status =3D "disabled";
> +	};
> +
>  	sdhci: mmc@fe2e0000 {
>  		compatible =3D "rockchip,rk3588-dwcmshc";
>  		reg =3D <0x0 0xfe2e0000 0x0 0x10000>;
> --=20
> 2.34.1
>=20

--7hwyf2s256c2xbfz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmR3dqYACgkQ2O7X88g7
+ppttg//f6n//QEiTEixajOWkoTYJt2pfRrGFyFz67UTeEP3N9tcB7H3i9IalSGD
wV1YtDfFvYi06qRJ1TCZSDjGJf8ZF/GP+GzqAxY2v0jaWskpAkEyhocjJR/6g4Ex
U+8FW9wuZrvVFzStoZdsJ5hxTK2ZHx6SHE7QdHkzZRbnZGrqfKHCVjnO5gCnzPkG
pvKDtuB92OH6+t67fslXYEph7j5lV6KZ/TTqEo1+Gx8G3l1Y5iz0Hma3cXKwnsRZ
kk4r/RN5vIHg0bl01XK8Y4ZysbBjbJIZ+yM2T7ON6DuDprQYbTurhGoDCY9DVkBs
ajaH5CgjQWOzGAzjZZh4A502+8YN9IodYf5V6W03SuZhVethdpO5OAT6RZJ9Opth
dX1a6xrzt39U9NR8aEAZ2c2K5Z7dsZZ9vPMZ9L98bFay9aALANFlcL9PsowuQc+H
qOGc8fTiBptEYphMHwTF3RpB4watWvhvi6hEmwg45YtRDvFr9ix2Zt1FUZpoEVks
TDD8mPAZMqMh4wLq+7mN+sFFx8svpVPrS+0APqWdUQ9GRncrn/HUHBgg6kiIudUP
4/d3ZZdKLlM/FWAh/vIsW7fGqECrs/wfOAN/18En0Nl295/8w1mifDYItmii50Kx
Sx0knuGYS8CgRwE0ABfzqaSwMCbpPr/ml0LBZVRntXXgr+1S5pI=
=r1hM
-----END PGP SIGNATURE-----

--7hwyf2s256c2xbfz--
