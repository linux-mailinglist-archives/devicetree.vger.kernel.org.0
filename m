Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89D3A3820AB
	for <lists+devicetree@lfdr.de>; Sun, 16 May 2021 21:39:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232853AbhEPTk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 May 2021 15:40:28 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:48006 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232322AbhEPTk1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 May 2021 15:40:27 -0400
Received: from antares.kleine-koenig.org (localhost [127.0.0.1])
        by antares.kleine-koenig.org (Postfix) with ESMTP id A9A86B9CFB6;
        Sun, 16 May 2021 21:39:10 +0200 (CEST)
Received: from antares.kleine-koenig.org ([94.130.110.236])
        by antares.kleine-koenig.org (antares.kleine-koenig.org [94.130.110.236]) (amavisd-new, port 10024)
        with ESMTP id 0RN9mhaQgUHe; Sun, 16 May 2021 21:39:09 +0200 (CEST)
Received: from taurus.defre.kleine-koenig.org (unknown [IPv6:2a02:8071:b5c8:7bfc:d65f:b030:4f16:836c])
        by antares.kleine-koenig.org (Postfix) with ESMTPSA;
        Sun, 16 May 2021 21:39:09 +0200 (CEST)
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: Add support for two PWM
 fans
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>,
        Rob Herring <robh+dt@kernel.org>
References: <20210510090607.970145-1-uwe@kleine-koenig.org>
 <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>
From:   =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
Message-ID: <ebe574a9-5831-6c6d-bbb7-995afa6eb277@kleine-koenig.org>
Date:   Sun, 16 May 2021 21:39:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="uz8oQWuihi4QVrR2zOgjaJ2sFqPmGin9G"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--uz8oQWuihi4QVrR2zOgjaJ2sFqPmGin9G
Content-Type: multipart/mixed; boundary="Sc8PLjnSA6IWTdq7dj4nUtzmQSDDYFERh";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Aditya Prayoga <aditya@kobol.io>, Rob Herring <robh+dt@kernel.org>
Message-ID: <ebe574a9-5831-6c6d-bbb7-995afa6eb277@kleine-koenig.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: Add support for two PWM
 fans
References: <20210510090607.970145-1-uwe@kleine-koenig.org>
 <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>
In-Reply-To: <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>

--Sc8PLjnSA6IWTdq7dj4nUtzmQSDDYFERh
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 5/14/21 2:20 PM, Heiko Stuebner wrote:
> On Mon, 10 May 2021 11:06:07 +0200, Uwe Kleine-K=C3=B6nig wrote:
>> On the helios64 board the two connectors P6 and P7 are supposed to
>> power two fans. Add the corresponding pwm-fan devices.
>=20
> Applied, thanks!
>=20
> [1/1] arm64: dts: rockchip: helios64: Add support for two PWM fans
>        commit: 271b66414df0b172c936b3cfd1894b7939f84165
>=20
> Adapted the ordering "fan*" above "led*".

Oh indeed. Thanks

Best regards
Uwe


--Sc8PLjnSA6IWTdq7dj4nUtzmQSDDYFERh--

--uz8oQWuihi4QVrR2zOgjaJ2sFqPmGin9G
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmChdNgACgkQwfwUeK3K
7AmQfAf/Q7SlIh4/6sviI7ef/0a2x9qNbD6us3y2O4BpMNVWabUjrDHuyTQmbkty
fP3lENjZgMu4aOyreeNVtv/6zpQRm/82bI7PXgI8iWzkoUG9F5lvYlnmIpexbuDb
pjVXINxguJ+zDecBcjIRc0rHhdQ8Wuz82gQO11tO22Nj7j9BIZcY9X3d+oPouW0G
j01T4w/gLFIwbW6asrXLYaWBNgDej416MSbDDKdtlfAkuBNKKczwQrTJgEwgIGAV
QVIoE6DngQZbaKyKiRdfeSjCdqHEc2T1b/ZcvDuCScpp9ZNkDjSVezPTfvMAyS8z
BqcnIcdqWM+QnF940FXYYWvGLpBciA==
=E/Kk
-----END PGP SIGNATURE-----

--uz8oQWuihi4QVrR2zOgjaJ2sFqPmGin9G--
