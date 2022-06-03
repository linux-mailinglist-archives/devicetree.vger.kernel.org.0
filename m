Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B784353CCAA
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 17:53:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245749AbiFCPxS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 11:53:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245748AbiFCPxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 11:53:18 -0400
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 873D21B78B
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 08:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=k1; bh=gTxr78nfX1vGkC/Q/hYH9BH8EFvP
        hdI7CbV3iwbBq/8=; b=u+F8WPewBMlCJ5QJQZHyg7fgfTmcUh5FDcu29XpO4KmR
        W69LazUJ9XKRPe3zpu1SDC58/FKWg/wSr1dfhAidFwXkL5/kMXOa7zOM1LEW7EZ/
        y40fe2jfgivC9XpgAJVHA2Shq06rTMobeXwp2zNk2GP26Alr6KyKJPvOoaUTzK0=
Received: (qmail 995391 invoked from network); 3 Jun 2022 17:53:12 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 3 Jun 2022 17:53:12 +0200
X-UD-Smtp-Session: l3s3148p1@9+hVHo3gHtpZzJlT
Date:   Fri, 3 Jun 2022 17:53:06 +0200
From:   Wolfram Sang <wsa+renesas@sang-engineering.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: Re: [dtschema PATCH] schemas: i2c: Add missing properties and
 descriptions
Message-ID: <YpouYnc6ctdHx3Vk@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        devicetree-spec@vger.kernel.org,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Matt Johnston <matt@codeconstruct.com.au>
References: <20220427175956.362987-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="bYOJk5iawzv5tc2Z"
Content-Disposition: inline
In-Reply-To: <20220427175956.362987-1-robh@kernel.org>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--bYOJk5iawzv5tc2Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 27, 2022 at 12:59:56PM -0500, Rob Herring wrote:
> Add remaining properties and descriptions from i2c.txt binding in Linux
> kernel tree. The Cc list are the authors of i2c.txt.
>=20
> Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Cc: Eugen Hristev <eugen.hristev@microchip.com>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Cc: Jon Hunter <jonathanh@nvidia.com>
> Cc: Alain Volmat <alain.volmat@foss.st.com>
> Cc: Matt Johnston <matt@codeconstruct.com.au>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Cc list,=20
>=20
> I need your or your company's permission to relicense i2c.txt contents=20
> (used in 'description') to BSD-2-Clause. Please ack and provide a=20
> copyright if desired.

In general:

Acked-by: Wolfram Sang <wsa@sang-engineering.com>

In what from should I add the copyright? Basically it needs "Acked-by:"
=66rom above replaced with "(C)", or?


--bYOJk5iawzv5tc2Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmKaLl8ACgkQFA3kzBSg
KbaQZw//Ycef03IvbTiBInHH4pPwwWJ/MoeCd0FXHG8DfsqFS3qpHaePL18ousrO
m7Bk+uKDTyXaD6mjPJVqGRs18zhR2epuAQxuynb4IlngZpf2TZREnaZVkmi2j2N5
e6AB6Ng32PkKrpJhyTwTGlBB3yC6ipMRg7bEIdGhucX42RXBVSqM8RztPY85PaCx
Q6duho9+ZFERLL8+8NNjVo8EESyFC77QwT8qFF7Eoh4lYxTiIlXpnjYuKDJ4uLUb
vHjdODTmk0qzBxHZfMnRg5aHSgRLdOZW5Zmsgl9U1TSfuhpbHfQ/ktX2+l6WwZ5I
NELM+dGl8DnhrsVdR7i889oEi6y1xginNbw1eyBoQ74w2ViicFoYPjALkeDxVNHh
UUi2bqdeab/hgND7fHeuoqUSOVGTk9v2NG23mQ5pL5EuytFFgajGPShdVyCVzKVQ
+LrHoDn2LEElMaw6nESKzid5WPciDEJYZN9fndX1RVMV5v9aMAWbQSUohRLIog15
vcD1T7/Kobnx5WkOqWVdygNbFN3ZJVTsM7tRZwKVTG1vkvipezgy5ShlKJSu8bdA
8h9Qk2FLgLmUbCbIz17yi8NbLNWwr2lA5Skz2QLIsn+th+8uWlxb8Hjjn5Yy5qYx
Krh+uUhSjNx1qRj9xq9jXhOVXDVCH3JHLbk+1fo51vnU33eK0No=
=RZrF
-----END PGP SIGNATURE-----

--bYOJk5iawzv5tc2Z--
