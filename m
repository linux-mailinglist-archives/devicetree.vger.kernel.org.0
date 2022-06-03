Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAE2653D197
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 20:36:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347048AbiFCSgP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 14:36:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347356AbiFCSgK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 14:36:10 -0400
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4553919F91
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 11:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=k1; bh=JOZl1+ZD+0r+kKRl/S9IXEfqJ755
        0sz1DkeeE2RUI18=; b=AtsyRe57/8NCrq2GZqm6shtZjGG1fM4rtrc0DEqy5JHb
        brWPR9x9JOVYLzGqB3a2Mt4rKJOj5pN9yIfURu2gSAuuV2PlvV0H+PlUUuDUcZaa
        vNYu8r9yCUSDUyTB7lMvYAAXjPqu9loQ7QiD1Du+8C2OhsfSeppnyXTkSP/6BtM=
Received: (qmail 1035230 invoked from network); 3 Jun 2022 20:27:35 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 3 Jun 2022 20:27:35 +0200
X-UD-Smtp-Session: l3s3148p1@dy15Ro/gaMTVrmOW
Date:   Fri, 3 Jun 2022 20:27:30 +0200
From:   Wolfram Sang <wsa+renesas@sang-engineering.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Mailing List <devicetree-spec@vger.kernel.org>,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: Re: [dtschema PATCH] schemas: i2c: Add missing properties and
 descriptions
Message-ID: <YppSksFcCE7HNJeL@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Mailing List <devicetree-spec@vger.kernel.org>,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Matt Johnston <matt@codeconstruct.com.au>
References: <20220427175956.362987-1-robh@kernel.org>
 <YpouYnc6ctdHx3Vk@shikoro>
 <CAL_JsqJEFs5EyzCGHaaC6S=9mfDf9jbo+4=NKh2DO49+RUjBjw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fN5Eq2w0AnbzvjX3"
Content-Disposition: inline
In-Reply-To: <CAL_JsqJEFs5EyzCGHaaC6S=9mfDf9jbo+4=NKh2DO49+RUjBjw@mail.gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--fN5Eq2w0AnbzvjX3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Copyright 2015,2020 Wolfram Sang <wsa@sang-engineering.com>

Perfect! Thank you.


--fN5Eq2w0AnbzvjX3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmKaUo4ACgkQFA3kzBSg
KbYiDw//a9kw1vhHvrd565s9vXG+j4+7wWWxvSQKZfuztFu0DKenAfA1UUPhwJ5R
6Jt0l+VrVx3uz85+Kap7BYD8GZIH8tW3u7Bw32SNctRcXDTVkzdFVdeIDqucPhg1
5LuOwIse7oSJcbVxBWZPzD6BVbDWArVnTKbWwqJNaNB/OqAOW92Xlsd4LJfI4y/L
vC3IcsgoZBYnoGA2r2G2+tiGiMKUHOYFihTjpFCTp6wHOh/g6hsnQxsOXQQgSj/X
gB+ifwoeVWnaqPNBXFzlNAvnvLSeuha/7GwKWn7qg/855XUR0u8Dscdix31oqrqH
JiegE47Fclbm2CMkGfd+eX3l6oXP/Ab0kelmhyQfk0f+mjxwkHopq+qg7E/HwSL5
fZn0px9mz4gz6TI06efD66czZAM9/3Vvc6tnuGSin7g6lp5deS7voXUKwvoTKSo1
1Y9Hbdb7Oi6eMJ8vONwV1H95ydVONe8+BY/QwZDflV5uA41P6ugrVxaysZgCPj07
D2PRYe+jEpNgXF2viHAclTB+YgLE6LMR8g+L+xZgvYcfL2hysZlYaPxoD5JN0Hdd
WLOh8G2Tf4cU1TExwZyZHufDPYnOdM6Sk9VofJAQqKzkr6FcDLN4bUhZgBzHhQ0v
9iRvIJ8HaV4qCcDsgUt/Lw6AhOfcC4WVYqxgA0mLWYFWwmhvlYY=
=AfBS
-----END PGP SIGNATURE-----

--fN5Eq2w0AnbzvjX3--
