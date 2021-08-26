Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 138283F8B5B
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 17:54:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242926AbhHZPzS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 11:55:18 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:41146 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230203AbhHZPzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 11:55:18 -0400
X-Greylist: delayed 2115 seconds by postgrey-1.27 at vger.kernel.org; Thu, 26 Aug 2021 11:55:18 EDT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=F3wLWK2f3zgkMtabw1PHf88uoy84ssAIxzwxp7+SL9Q=; b=bMHA0YhvUdYc5qzCUodAFUpkuG
        NY+rLvmCRbwyetqIvYaDoRRu3ODU12KqVQxxUORLc0xrfolFUCflYGP6IFElfdKK49C6UhKZ34k7z
        QkbTliMagbxVL7i/7lVwve3q3z7DZmapaRPi1L6R8rpmYl0gcjaCPFTMGe4t2/b8TW6w=;
Received: from 94.196.67.80.threembb.co.uk ([94.196.67.80] helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <broonie@sirena.org.uk>)
        id 1mJH9q-00FTj4-2L; Thu, 26 Aug 2021 15:19:10 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id BA531D078FD; Thu, 26 Aug 2021 16:11:22 +0100 (BST)
Date:   Thu, 26 Aug 2021 16:11:22 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        jiaxin.yu@mediatek.com, devicetree@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe
 document
Message-ID: <YSevGntb3mmYlZGE@sirena.org.uk>
References: <20210826141314.3720975-1-tzungbi@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="4q4ccqmi5+se8Jc4"
Content-Disposition: inline
In-Reply-To: <20210826141314.3720975-1-tzungbi@google.com>
X-Cookie: I can relate to that.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--4q4ccqmi5+se8Jc4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 26, 2021 at 10:13:14PM +0800, Tzung-Bi Shih wrote:

> The dependency has merged.  Re-adds back the document.

What is the dependency and where wsa it merged?

--4q4ccqmi5+se8Jc4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEnrwcACgkQJNaLcl1U
h9AB7wgAge6zpGbqQxVERgYA6jszHXVf8Sr9SWJ3vANiDFbGS0fASDH5sndrryv7
7/U+kLHaDkNfweo56uQnoVgh05ijmJCI1+1aatDkXJrAjoZtTJYGgsemxJlz05sM
yj0fMCyNXvCpUHyfLlWx/At7xwm7IvVKeH2qz+wMFOTmJDVBHhSEaFa/ENNLyoyd
+frEUkd6QfNqGPz7pISRMmSDCZ47pDzHqd9EWIDOblvwm3/RzvvHUrFZMxQehQEF
+aJEfE8ZgOCMgFrS+KdcaKFPCUEdxWqH6lZkSTvyOdXGd53nrnB8b9x9BeQ4ypHU
vioPVwZPouihI4sxnomLQ5gzbjjmLQ==
=RMeP
-----END PGP SIGNATURE-----

--4q4ccqmi5+se8Jc4--
