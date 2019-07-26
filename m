Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E23B17652E
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 14:08:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726524AbfGZMIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 08:08:50 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:58272 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726124AbfGZMIt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 08:08:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=gS6TFmtoV9RB8J3VH+YKQUJjv20M7Idf7n3sD7CqGlY=; b=dgTcrG54HaVxyxusxxEABL2XU
        5jK19DpyIw1uRl38Bwa3O+yVbls8pylB1S0cuIJlWBLs9+x2tDstnvkvGhrTWPF4w4wBWco5EGIGr
        lwuGdx63F3HJhbt2cidBT1pkGnrZ0YXy1CQMxwy1OEMi5xbFD1K2r+E/HWwGfBcwajLwU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hqz1e-0001YP-KU; Fri, 26 Jul 2019 12:08:42 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id 881C42742B63; Fri, 26 Jul 2019 13:08:41 +0100 (BST)
Date:   Fri, 26 Jul 2019 13:08:41 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 7/7] docs: dt: fix a sound binding broken reference
Message-ID: <20190726120841.GA55803@sirena.org.uk>
References: <cover.1564140865.git.mchehab+samsung@kernel.org>
 <9932608f32030c886d906ea656eda8408c544776.1564140865.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline
In-Reply-To: <9932608f32030c886d906ea656eda8408c544776.1564140865.git.mchehab+samsung@kernel.org>
X-Cookie: Think sideways!
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 26, 2019 at 08:47:27AM -0300, Mauro Carvalho Chehab wrote:
> Address this rename:
> 	Documentation/devicetree/bindings/sound/{sun4i-i2s.txt -> allwinner,sun4i-a10-i2s.yaml}

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl067UgACgkQJNaLcl1U
h9DZ3gf/XVyELAxpK+iOsyrIIgOtkynK4H9wknGxpl2rZE0a6qJHb4tUp+EVM5k7
BP3tcLa5QVeuWG3k2rqMwoL86wXC7QLc+So1k5s612+LqO7tkgHRPQv0fFZFYFU+
iQ7E6+MUeBW4LoqA4pSOQvpeU7oNy4amI/X639LTk7qjrTwnmwcH5aagkPRGOvPL
KC+Hf/saAF5T9eue6updywRGYPWffVpQkoCO6NpwfWMk5UV071OneiL3SKXf/y+2
7ZgIh2qwDFvkrpgmTUowa8D+iODO0/P6YP3m7Q8WZXS3YBSrnp0c9pDUUG38QVVG
jB89EPyDbXAjR7L2WTMO1GCnC/j9Dg==
=gcDY
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--
