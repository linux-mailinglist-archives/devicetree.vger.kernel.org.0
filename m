Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA6FBF97E
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 20:44:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728555AbfIZSoj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 14:44:39 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:56734 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728192AbfIZSoj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Sep 2019 14:44:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=p5AsxclfyD526xJDQoQ4sUnL8tX1BJhL3h58XggnCVY=; b=mquiCq1z60o3JHCRkv+P62tPi
        Yl8tS+2lgyEbYp8Vzoj19dEHzEBDL3tw53N/RDPUhscCh7QQObjmo8OYHdH6WF+Qp3OLeFHknRj3A
        vjLoiEkdz1JYKxdS7sW6SFTVRT/dh3yns+79GPtvc+yWukJhonJdtMgeAJyDECbNnXEcQ=;
Received: from [12.157.10.118] (helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1iDYkG-0004Uq-1I; Thu, 26 Sep 2019 18:44:04 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id 7DC97D02DD8; Thu, 26 Sep 2019 19:44:02 +0100 (BST)
Date:   Thu, 26 Sep 2019 11:44:02 -0700
From:   Mark Brown <broonie@kernel.org>
To:     Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 2/2] dt-bindings: asoc: Add ADAU7118 documentation
Message-ID: <20190926184402.GG2036@sirena.org.uk>
References: <20190926071707.17557-1-nuno.sa@analog.com>
 <20190926071707.17557-2-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="0TJQK8JvXJ+EbTps"
Content-Disposition: inline
In-Reply-To: <20190926071707.17557-2-nuno.sa@analog.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--0TJQK8JvXJ+EbTps
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2019 at 09:17:07AM +0200, Nuno S=E1 wrote:

> +required:
> +  - "#sound-dai-cells"
> +  - compatible

The regulators should be listed as required too.

--0TJQK8JvXJ+EbTps
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2NBvEACgkQJNaLcl1U
h9Bozgf9G95EmLRFp/BjEK+ieWiSOxCSpfQ8L8hEJCGT8vD8d9yf2e6H/KdCTo6V
b17L8CH24RuXJehCjLgjAkGKyzcGUtiLgqb9IYHzeMchMRMqVK2rbgic9C2uku1K
xKOdX9+oshFQwmPAdXSQIWTazGE6yjSiUgi5MqFQXL29qPLd9ussClxVlIo+us7r
zDB3k4TR5RvSXmbH6qlgh6DXLif5iagV1Wj6eDx8Y1gKa8Rq+IzqXtsHPDjMyjyj
UGPPHWYSSbHKjhHWdh1cxzlO0nI5f87PsuaWtFc5ih0Xq/DZuMhJKn07pYREiyV5
P9kxfSY4g5mLQdX6vQaVeX54HJfUqA==
=DuqT
-----END PGP SIGNATURE-----

--0TJQK8JvXJ+EbTps--
