Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 724A73F8B65
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 17:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242974AbhHZQAZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 12:00:25 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:41948 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230203AbhHZQAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 12:00:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=uL5vfEwr2WigDObDrhULFOFtOV6tp1kXQN1wFhcEZS8=; b=F9ngiYuFosmnUoQseSs+POC1wl
        7/p4Z+ARUpFaN38TNLdW/PSlg6NIK7QgJdij8xumYvUdqtAaYf1iJ48psnbI5ECmDDeBA8afnMNP+
        iDH6HCzhfGy5+uiaeXLBhLtx7MxxJT+VJqKN+rmQ42RIyRxtue8sgaOOMi1fHCzGC4p0=;
Received: from 94.196.67.80.threembb.co.uk ([94.196.67.80] helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <broonie@sirena.org.uk>)
        id 1mJHmq-00FUer-5h; Thu, 26 Aug 2021 15:59:28 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id 25A79D01AC2; Thu, 26 Aug 2021 16:48:53 +0100 (BST)
Date:   Thu, 26 Aug 2021 16:48:53 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        Jiaxin.Yu@mediatek.com, devicetree@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe
 document
Message-ID: <YSe35dOicFFDiXAy@sirena.org.uk>
References: <20210826141314.3720975-1-tzungbi@google.com>
 <YSevGntb3mmYlZGE@sirena.org.uk>
 <CA+Px+wWr99PxEz6qROhj7H8LXFiRZ1sxrn-BcB7ZODJA1Suh+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="YzpHw64aXvjaQKnF"
Content-Disposition: inline
In-Reply-To: <CA+Px+wWr99PxEz6qROhj7H8LXFiRZ1sxrn-BcB7ZODJA1Suh+A@mail.gmail.com>
X-Cookie: I can relate to that.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--YzpHw64aXvjaQKnF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 26, 2021 at 11:28:15PM +0800, Tzung-Bi Shih wrote:
> On Thu, Aug 26, 2021 at 11:19 PM Mark Brown <broonie@kernel.org> wrote:

> > > The dependency has merged.  Re-adds back the document.

> > What is the dependency and where wsa it merged?

> The context is in the original email after "---".  Do you think it
> needs to be part of the commit message?

I was looking for a description of what these things are and
where things are in words - I'm on a train with spotty network
access which makes them not as useful as they might be.

Please include human readable descriptions of things like commits and
issues being discussed in e-mail in your mails, this makes them much
easier for humans to read especially when they have no internet access.
I do frequently catch up on my mail on flights or while otherwise
travelling so this is even more pressing for me than just being about
making things a bit easier to read.

--YzpHw64aXvjaQKnF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEnt+QACgkQJNaLcl1U
h9CBVwf5AXb06SsToU0IxExtwACFaktJrMHHAkc+VOtxnyEJqt5jGgQvpG6THAUA
NJDsJ0NpxR119GPqMA3sOwxC/tbpIR6nUXl4c+UQHlp2+IfQVUzXPWMnR8fhX3Kt
y5VFZsz2muIbSRvRoBHH6iIlzJVceVwOrJGTd5BvMB2O4rErcjTWiUruGp6Yf8AX
v9wcffXQB6Ofgvew+3TXlma7dK3C5CQHl2Dd0BfsI/fPGYq4j/oqnWCUqVTDKnN9
U40OpstBsZ2xUxoxQ/XgxdyOdtp8Xe1CmbJquYGO8o8nf0Sl3YVMcC3U9hcG9YUW
QYl9jn3BDEAnKY0uBHKimmdQUUJ7Uw==
=91jm
-----END PGP SIGNATURE-----

--YzpHw64aXvjaQKnF--
