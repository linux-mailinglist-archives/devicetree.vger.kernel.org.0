Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23BD0392B1E
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 11:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235968AbhE0Juq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 05:50:46 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:60424 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235950AbhE0Juo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 05:50:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=F0M6YKJIjuslwrEqzHcCVwYmUO2HBB71MzLKpKRrjls=; b=ileoWssYV/N9kEzsACT6FZb/F1
        b/9lsMCCo4ysXiQnKRk/Le1G4TlNv0DrIfUQcYB5TlUsZKigM0ulWTkj1vE99zUF1/HMHhd11iTR6
        AzQpQWAkKYXioEgSGKFBQaW9suQKygXddQmns+fL/A05CFNAh7vg2AFVgxOY4ZlTiaA0=;
Received: from 94.196.90.140.threembb.co.uk ([94.196.90.140] helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <broonie@sirena.org.uk>)
        id 1lmCdQ-006LZT-1P; Thu, 27 May 2021 09:49:00 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id 3DD62D0E96C; Thu, 27 May 2021 10:48:58 +0100 (BST)
Date:   Thu, 27 May 2021 10:48:58 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 3/3] ASoC: rsnd: add null CLOCKIN support
Message-ID: <YK9rCv3eJPVXFMv2@sirena.org.uk>
References: <87y2c4oe3y.wl-kuninori.morimoto.gx@renesas.com>
 <87tumsoe2p.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdXLYvEBE0bVk=8D+GkuaHRUvdTayCQPqTYAkPJEaW8MDQ@mail.gmail.com>
 <87zgwimnuu.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdVhnKeztftOJEZhSg8bXArzUDXAmHSMPVfbMamV3ihw+g@mail.gmail.com>
 <87o8cxm9pg.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdUxAOeceORSpmiPAc6Tg=jpm2FTaLjVBVt+oiyWd68wCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="J7jXXUEHh64gT2AV"
Content-Disposition: inline
In-Reply-To: <CAMuHMdUxAOeceORSpmiPAc6Tg=jpm2FTaLjVBVt+oiyWd68wCQ@mail.gmail.com>
X-Cookie: A penny saved has not been spent.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--J7jXXUEHh64gT2AV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 27, 2021 at 09:30:38AM +0200, Geert Uytterhoeven wrote:

> It adds a dummy object, which needs to be cleaned up.  Basically you
> are trading a simple NULL pointer check for a zero clock rate check
> deeper inside the driver, with the additional burden of needing to
> take care of the dummy clock's life cycle.

> Note that most clk_*() calls happily operate on a NULL pointer, and
> just return success.  This includes clk_get_rate(), which returns
> a zero rate.

> Mark might have a different view, though, due to his experience with
> dummy regulators?

Not particularly TBH.  The regulator API doesn't accept NULL
pointers due to constant issues with people just ignoring errors
especially around trying to decide that devices don't need power,
it'd just make all that worse.

--J7jXXUEHh64gT2AV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCvawMACgkQJNaLcl1U
h9Cfhgf/TXo4rAddflLHeFKvhaODiye4tdIy7CXSVKld0/Lqzojk6PXdfVEtydtJ
5ZXXuoHNKdBEmjZgi4bQaPOrn1VuagwC2wXFDajcljloxNoQjMAgq0JWjGPfOWwS
Ny9vZZzaZPC98Wum7voR9YUrtJciVuGnFaCCqfIxuvgMoH6vsjV86TuWMkCsG8ys
yuJK6JkRwiqFeN9usKYo4iuaxHS4Zal7l4ss4fvbactpirpBj8sYDbtp7KHDOEJk
p/NXOPqv5bd25J4JQT3FhJ+iqBqldc6WOcLRUpcSQYztSYnGQ/zmvxaifNvSnvuY
WztbBPPVwvAdkcXKUr7VI14fNi7B6Q==
=vtO7
-----END PGP SIGNATURE-----

--J7jXXUEHh64gT2AV--
