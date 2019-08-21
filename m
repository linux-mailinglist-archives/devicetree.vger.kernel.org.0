Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACF2A977B4
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 13:06:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727314AbfHULGo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 07:06:44 -0400
Received: from mail-ed1-f97.google.com ([209.85.208.97]:41120 "EHLO
        mail-ed1-f97.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727297AbfHULGo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 07:06:44 -0400
Received: by mail-ed1-f97.google.com with SMTP id w5so2448727edl.8
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 04:06:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JdC8uw0uj+2D4USeHUjKzyTJis80DRjvckbMjZCqJZU=;
        b=lqjV+RtPPIdOdcO0f/sspbmPVIdhMIL3TS5IdesynoJYKuwqXeYAJSeX2siUnjMkTO
         b85J/6eD5Jm6pWrAQHLdTidtHQvm2apCjlJOPQWs4lI7kpqKcCcKZI7WcFQjavDoc1s5
         wWX0Fkt4ouspo04o8wvvtjPf+KNVvHHLOv53lrfsgcfZcMHW2/GToT5bE14E6g6CEH+a
         IK3nzd/su0a13xjRgn1/uAhzhB/yCxe0vMO9Ftk5x4oQMhcu35RVTiUb4B9hiWqHApYX
         CPIJegclrxsfC0PIQNG/u7qCVCD3guvopgaZpindW0uSOdNkKP6+ghKbNJcGnavVvpQP
         8EZA==
X-Gm-Message-State: APjAAAXnfh446y8cxRoCVPX6FIfU/OCFyUNFqx2uNJjdVldI2qjqATpJ
        +EV5qTBaUr0eUlRZO/7qr1dmbl/v0XvcWB5Bi9Nfi4fLHTv3Nhln/pWOloUN29/J0Q==
X-Google-Smtp-Source: APXvYqzxZ6O37/xYSKYIxfdvbs0bwiNGnIyS/izFkelzB/fpWN/Cr7FdRS9QI1MfboTK9+6aaXQew6qfNGyZ
X-Received: by 2002:a17:906:1911:: with SMTP id a17mr30218337eje.290.1566385602798;
        Wed, 21 Aug 2019 04:06:42 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by smtp-relay.gmail.com with ESMTPS id i17sm106024ejv.82.2019.08.21.04.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 04:06:42 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1i0ORu-0006pv-97; Wed, 21 Aug 2019 11:06:42 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 137C52742B66; Wed, 21 Aug 2019 12:06:40 +0100 (BST)
Date:   Wed, 21 Aug 2019 12:06:40 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Ashish Kumar <Ashish.Kumar@nxp.com>
Cc:     linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, linux-next@vger.kernel.org,
        Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [Patch v4 1/3] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string to bindings
Message-ID: <20190821110640.GC5128@sirena.co.uk>
References: <1565691791-26167-1-git-send-email-Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7qSK/uQB79J36Y4o"
Content-Disposition: inline
In-Reply-To: <1565691791-26167-1-git-send-email-Ashish.Kumar@nxp.com>
X-Cookie: Sic transit gloria Monday!
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7qSK/uQB79J36Y4o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 13, 2019 at 03:53:09PM +0530, Ashish Kumar wrote:

> There are 2 version of QSPI-IP, according to which controller registers s=
ets
> can be big endian or little endian.There are some other minor changes like
> RX fifo depth etc.
>=20
> The big endian version uses driver compatible "fsl,ls1021a-qspi" and
> little endian version uses driver compatible "fsl,ls2080a-qspi"

I'm not seeing the corresponding code changes anywhere?  I'd at least
expect to see the compatibles added, and it sounds like some actual code
updates are needed.

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--7qSK/uQB79J36Y4o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1dJcAACgkQJNaLcl1U
h9ALWAf9FuOa4W9/UQrIJZeOZ/BujLFsH5QKFVBvWEBDKZF/EXSWLrYORXZxko35
l4tKWlUnJd4XbiikYKCJF+d3HWK8f6ZBgPKKMi5PYX9HeUtBF6fJ8mjn2Tz/xh6h
sG7ZNP9OCu+i7HviwHWORMPBCeOplTwNShinPGIAMxCqM92AppySQfbSbFXl2u5i
dDwGHh6zPt7raw0Jetq8zjOePmNxwgb8MyF4htJv/W62zF6InmY0XoXeAH3pVNpU
e0R8Mp/hbYHKEql5s5GTgiBd1toZ5RiSsxWj0it+J66/nWKzQTsihCv0HVJUlGNu
rdUYox05ntwGBCd4uTGuECa8E4cwrQ==
=E1Em
-----END PGP SIGNATURE-----

--7qSK/uQB79J36Y4o--
