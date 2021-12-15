Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90292475CEE
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:11:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235225AbhLOQLQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:11:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244019AbhLOQLQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 11:11:16 -0500
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9B87C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:11:15 -0800 (PST)
Received: by mail-qt1-x82c.google.com with SMTP id f20so22302722qtb.4
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ChghRZeXw2XQDKTuOXpLdJirJRSBN9ZcUWb46dxMv/o=;
        b=nWJQfRUBulJaeP5nDJjYoqqrTn7gdDlwBqTf7Mf1Rp1yDxipmQOfFBv5mmsZ7a0NYZ
         0IQAscBfkiWY1lhXjSAz90GPC+7e/vxU4bDfnhNSyVdBgDfSQC0n20bQfJXJKuUfkrlh
         n7auoupLq1tDpbEOqdVT59EukXOje+EWOqO/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ChghRZeXw2XQDKTuOXpLdJirJRSBN9ZcUWb46dxMv/o=;
        b=0Qe8Ro+gkgBx0x9vbJjICJjxb5+ZN5XFsNiZdVf2TJ5SiT8ALsoC/lWCIhzFLGVIOB
         88RmiWa9TlaWTcEE6MohuTpKzYjQPSQyLQx7unalEY1OTZtubqMy9d5nafgDk88qTyaW
         DnXNs173voaIW/nkzuNfyrtMPFa7PR5U8kqGYT+HuICyta2gLoQyrROgPdCHeINEaZwf
         0V9+xqniNjwei0tN18vhnh7BdfG44J+7WS/EI7TJcAe4A8uezh3r2zvQaAaDv6xtHMWd
         hqQZM3D1R5ZviTd/N1IM6nOJhPBgkupRHdmDyYRMP/ASgLABnwsmC7/S6SqUYCK5XLu+
         Kovw==
X-Gm-Message-State: AOAM5301Xmr9t5ZKAtX9sfZuPcnPP/ooZG+s0tp2ionjGld1hYLZXzf6
        E5pHBY0/lG6yCvjsaZz5bw2g9w==
X-Google-Smtp-Source: ABdhPJzycy5DEJ5dlv2V4Evj+LZ3iN6pJ5jURasdPBTXz8k7JilQ1IMIuO4+o/CQLowlkN69zjzJzQ==
X-Received: by 2002:a05:622a:1310:: with SMTP id v16mr12580863qtk.431.1639584674963;
        Wed, 15 Dec 2021 08:11:14 -0800 (PST)
Received: from bill-the-cat (2603-6081-7b01-cbda-b008-f6f1-3496-c51e.res6.spectrum.com. [2603:6081:7b01:cbda:b008:f6f1:3496:c51e])
        by smtp.gmail.com with ESMTPSA id f21sm1726219qte.52.2021.12.15.08.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 08:11:14 -0800 (PST)
Date:   Wed, 15 Dec 2021 11:11:12 -0500
From:   Tom Rini <trini@konsulko.com>
To:     Sean Anderson <seanga2@gmail.com>, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Cc:     U Boot <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
        =?iso-8859-1?Q?Fran=E7ois?= Ozog <francois.ozog@linaro.org>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        Oleksandr Andrushchenko <Oleksandr_Andrushchenko@epam.com>,
        Weijie Gao <weijie.gao@mediatek.com>,
        Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: Are dt-bindings headers part of the device tree spec?
Message-ID: <20211215161112.GC2773246@bill-the-cat>
References: <c670a4cc-b234-03d4-adfb-e6a8560c2d86@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="YPJ8CVbwFUtL7OFW"
Content-Disposition: inline
In-Reply-To: <c670a4cc-b234-03d4-adfb-e6a8560c2d86@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--YPJ8CVbwFUtL7OFW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 15, 2021 at 10:53:26AM -0500, Sean Anderson wrote:
>=20
> Hi all,
>=20
> I'm reviewing a clock driver [1], and the submitter has deviated from
> the defines used by Linux. For example, where Linux might have
>=20
> 	#define CLOCK_FOOBAR 5
>=20
> his driver might have
>=20
> 	#define CLK_FUBAR 6
>=20
> Which means that both the device tree source and the resulting device
> tree binary will be different.
>=20
> As I understand it, we try to be compatible with Linux on these things.
> However, it is unclear to me if include/dt-bindings is also part of
> this, or just the things in Documentation/devicetree/bindings. And if it
> is, do we need to have compatible sources, compatible binaries, or both?
> In general, I think we should try to have the same headers as well, but
> is it permitted to allow deviations with reasonable justification?
>=20
> --Sean
>=20
> [1] https://lore.kernel.org/u-boot/de6e75a083647dfeec3058dd4dcc0419b08e15=
5c.1637285375.git.weijie.gao@mediatek.com/

Adding a few more people to the thread.

--=20
Tom

--YPJ8CVbwFUtL7OFW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmG6E5wACgkQFHw5/5Y0
tyxwtQv8CTPBod6wA0z7Xszwhn22IjxEWmOkoSL6PIICtGPKAtHIve1KRRTdS6RA
iYv0ypPgIAsfvhneVcuOQs13c//W+SB5rIiBI1kLJRaHjmPhO3jkmGC6lvDLepxP
RLDGXF4QkJ6q44+zTdEjI7dmTjirDuIZVT/lvRc5Og6WqJP3hVf1WN2/byOpCSS+
tRvoIbiYpDqC4FiqMAT6uN/g4JpDev/B2rn+cAlsLdftTRmtZv36SBl+nflQ1s98
+Yofi5ABMXirQuwNBK+TW63ZVxTHmRyMNyW4SN/yv0+IxlGvYOS7gNdXV21hLk4P
krEawsaCuzyFnaTImsSUOAn/cNs2m/ZoCXMiD9nAtcXW64Dc1xmKHz4J9Y+YnuCP
RpsgY1END34KODxCo1qSGSCI4eJ48PpT2kaXw2NQcVZ1rwufbbSX/ukyvlk/+o/z
EPNOe6SxpJxfbfvBFB0dg2r6cq+kD2nv+b/pFCpjX0yYLo8s7/npE+IffZl5b1cs
hyZSKCzf
=kNW5
-----END PGP SIGNATURE-----

--YPJ8CVbwFUtL7OFW--
