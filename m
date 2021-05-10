Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D2D8377EE5
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 11:03:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbhEJJE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 05:04:56 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:35044 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbhEJJE4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 05:04:56 -0400
Received: from antares.kleine-koenig.org (localhost [127.0.0.1])
        by antares.kleine-koenig.org (Postfix) with ESMTP id 72373B91DFE;
        Mon, 10 May 2021 11:03:51 +0200 (CEST)
Received: from antares.kleine-koenig.org ([94.130.110.236])
        by antares.kleine-koenig.org (antares.kleine-koenig.org [94.130.110.236]) (amavisd-new, port 10024)
        with ESMTP id Uef7iDZUOYlq; Mon, 10 May 2021 11:03:50 +0200 (CEST)
Received: from taurus.defre.kleine-koenig.org (unknown [IPv6:2a02:8071:b5c8:7bfc:4a26:1cef:9af1:44f5])
        by antares.kleine-koenig.org (Postfix) with ESMTPSA;
        Mon, 10 May 2021 11:03:50 +0200 (CEST)
Subject: Re: [PATCH] arm64: dts: rockchip: Increase maximal SDIO voltage to
 3.3 V
From:   =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>
References: <20210510065449.942173-1-uwe@kleine-koenig.org>
Message-ID: <e6d15362-3804-4428-dd44-fa96c07e79a9@kleine-koenig.org>
Date:   Mon, 10 May 2021 11:03:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210510065449.942173-1-uwe@kleine-koenig.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lntBXDof10kDK44EA8MLiQRjhJqz16N5P"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--lntBXDof10kDK44EA8MLiQRjhJqz16N5P
Content-Type: multipart/mixed; boundary="cRjHEuwQeQ0D5FcYjiirw1vR57QrrRQVx";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>
Message-ID: <e6d15362-3804-4428-dd44-fa96c07e79a9@kleine-koenig.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Increase maximal SDIO voltage to
 3.3 V
References: <20210510065449.942173-1-uwe@kleine-koenig.org>
In-Reply-To: <20210510065449.942173-1-uwe@kleine-koenig.org>

--cRjHEuwQeQ0D5FcYjiirw1vR57QrrRQVx
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello,

On 5/10/21 8:54 AM, Uwe Kleine-K=C3=B6nig wrote:
> While comparing the vendor dts with the one added in v5.11-rc1 I notice=
d
> that the vendor dts specified 3.3 V which matches the SDIO specificatio=
n.
>=20
> So fix the sdio regulator to provide (up to) 3.3 V.
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>

hups, sorry, fat fingers. This patch is wrong, I planned to send out a=20
different patch. Please just discard this one.

Best regards
Uwe


--cRjHEuwQeQ0D5FcYjiirw1vR57QrrRQVx--

--lntBXDof10kDK44EA8MLiQRjhJqz16N5P
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmCY9vEACgkQwfwUeK3K
7AnqdggAjt4FD1aYWRqnGdQM6v81RWg1Va8eIkMjZ8gHiKrfxVgv/IuKvULnJqUN
kecg3kLS9l3z/ADQ2OuJ8w/ORTAuJRan7jXSjaCm6IlURaf7pl+zyIsPMlbCUiPm
2yh0OwkijqTukxfXMdtxJEzkyWGlXFa+VxU8AEEEKfZRse3GcHc2l4zHJzO+9Q4j
EPo6Sl4sKSbvu1GJMccdud2MQ3861v8C83NlQa9qpWpWKC702fLXO9B/vxQSSKgM
EQ9pmzz6iZXK+FqYzfN2lp7NYHBz7VYW6kCxaepJzBFH/YbnY48i2P+uvwXqbA2e
0APzfwrvsXogHFCAZ7O0c5DZicbOwg==
=VDIu
-----END PGP SIGNATURE-----

--lntBXDof10kDK44EA8MLiQRjhJqz16N5P--
