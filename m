Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 67C69D7584
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 13:49:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728391AbfJOLtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 07:49:01 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:55450 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728386AbfJOLtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 07:49:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=XovC9Fd62XjhLfN4wCR5FJF9dddJmhaM10zo4oaQMis=; b=sQoy2DFY0zkS3ePUwfkRWD7LN
        XjF9F8jGJERwMETzWX1PuuIpZXZTP74UEfqAXPHaA7phXtj59ymChM5SGU558P0lK9SIf1AXHbF2K
        OYbftzuPJLrEUBucULM0d/XPKlHgKrzn8o2zBHJP1bMRVpkFoncCTAZfzAhVMwb2f3lmk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1iKLJv-00027Q-NP; Tue, 15 Oct 2019 11:48:55 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id BB07127419E4; Tue, 15 Oct 2019 12:48:54 +0100 (BST)
Date:   Tue, 15 Oct 2019 12:48:54 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com
Subject: Re: [PATCH v3 01/10] platform/chrome: cros_ec: remove unused EC
 feature
Message-ID: <20191015114854.GB4030@sirena.co.uk>
References: <20191014102022.236013-1-tzungbi@google.com>
 <20191014180059.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dc+cDN39EJAMEtIO"
Content-Disposition: inline
In-Reply-To: <20191014180059.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
X-Cookie: Yes, but which self do you want to be?
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--dc+cDN39EJAMEtIO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 14, 2019 at 06:20:13PM +0800, Tzung-Bi Shih wrote:
> Remove unused EC_FEATURE_AUDIO_CODEC.

What's the route to getting these platform/chrome changes reviewed?
They don't seem to have got any attention thus far and this one is right
at the start of the series.

--dc+cDN39EJAMEtIO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2lsiUACgkQJNaLcl1U
h9BH+Af/VoQYmxlIIQ22+R99CZ1J66203wVcnQ5aT5edsF12LFEwx/4iG4dKU6t8
xf0JGlUi/3Yfi+UVq/g2k+Zd5zPCK6j4ydCbrLiK8kCn8SNu+6w+2KcqC44rwcw0
+2UyLZKc8svUgtjpjvrmHOM2rJAAOP9ga8EGQEkCpv37+1q7mB9V/CxVm4LiTEbu
qtytgfntxj1STs+bKuLAAEaY7lEm7qVnA1qvBHhoI94LyDRLNEj3UC9f9jBXKZwX
4m67h40ZI/71kw+BYwZuif96uCPA9Yaryow0z3a1EMAWSjT9ZunKOUjs9KVovDPN
UFb+uRtknxPygNRWavTEI0rUt3F4Ng==
=lh/o
-----END PGP SIGNATURE-----

--dc+cDN39EJAMEtIO--
