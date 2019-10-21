Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3AD8EDEB34
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2019 13:43:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728551AbfJULnJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Oct 2019 07:43:09 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:53208 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727889AbfJULnI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Oct 2019 07:43:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=GIa05QdeyCuYiBMjtkuXZuPCEqcil/OB3E8X/KRg9f8=; b=sSLQpV4xgyAY6dGcffk45c5DN
        bYwSDBX9NRH33Pns3dCDeOvLco6ycKmY/ahSJuIy5T7lZ9ecs24N9EONYDHm/F4DiFsYxihmc3ZkR
        RvzbewdbHw/epKuNTuI/2Aj9JLy2vxScz5OIoWgYrY84aYdhvWrAyP97RHO5Meb44fCbA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iMW5Y-00043p-PN; Mon, 21 Oct 2019 11:43:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id C3B31274301C; Mon, 21 Oct 2019 12:43:03 +0100 (BST)
Date:   Mon, 21 Oct 2019 12:43:03 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     Tzung-Bi Shih <tzungbi@google.com>, gwendal@google.com,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        cychiang@google.com, drinkcat@google.com, robh+dt@kernel.org,
        bleung@google.com, dgreid@google.com
Subject: Re: [alsa-devel] [PATCH v5 1/4] ASoC: cros_ec_codec: support WoV
Message-ID: <20191021114303.GC4691@sirena.co.uk>
References: <20191019070254.23870-1-tzungbi@google.com>
 <20191019143504.1.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
 <659a3d1f-a8e1-268d-5e95-b328aeed601b@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="DSayHWYpDlRfCAAQ"
Content-Disposition: inline
In-Reply-To: <659a3d1f-a8e1-268d-5e95-b328aeed601b@collabora.com>
X-Cookie: Why are you so hard to ignore?
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--DSayHWYpDlRfCAAQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 21, 2019 at 01:26:04PM +0200, Enric Balletbo i Serra wrote:

> Mark, once applied, could we get an immutable branch from you containing the
> following already applied patches + this series? We need as we have patches that
> could conflict on platform/chrome.

Ugh.  You should have mentioned this before the patches were applied,
they're on the development branch that has everything in it like I
normally do which I don't want to rebase (and I think I did a merge up
of the fixes branch since then anyway).  Hopefully Linus will be able to
figure out any conflicts that occur.

--DSayHWYpDlRfCAAQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2tmcYACgkQJNaLcl1U
h9CS3wf/aZHpcuMrsOi4FzUhmUl9hMRd9hqhGnfEHe9j8lh09mRayr3O3K95jNkR
fijdwh59O4VQIfKSR3bvz/dD9ygmkmgFleqzkgelhzDGkkFaKcuJ2z8c1WGZYfrK
2vRdnZ+pcYAWE+ZkmNkjUJG/6ee+xmn8WlHrzs0IqCqUFoqrSVsUVCpd6h/lm9AQ
g2q9pCWd0mOwHmmEsd0FvppZtGg3kuJCSq7kKVPGRV3b4pNO0woxG5+DpcDGpHN9
VWZwEDvJhiYCZkuLZZnhKG8F5srHoUMBuCc48Utl/QF1cOFIL6tINWzj3R/1Y5q9
sB0BPV6JxMe5fiVi6IA4pC1oFiL2Rg==
=YCnq
-----END PGP SIGNATURE-----

--DSayHWYpDlRfCAAQ--
