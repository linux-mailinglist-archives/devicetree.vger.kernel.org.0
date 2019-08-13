Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E64328C1C1
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 21:58:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725944AbfHMT6I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 15:58:08 -0400
Received: from mail-wm1-f97.google.com ([209.85.128.97]:38039 "EHLO
        mail-wm1-f97.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726066AbfHMT6H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 15:58:07 -0400
Received: by mail-wm1-f97.google.com with SMTP id m125so2478055wmm.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 12:58:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=X82eQ3JesOlbLJhrRrufAi8tlKQch8wVXL6Dn+B2NqY=;
        b=EbAZw7q516n4SbuwLoj0ekKL1+FgvMoQtUFtBnSjbr9LpDYtocPXgo01zXru2MN2sW
         jT4ojtf4E5NOLJRKWze5x8RPrQsPopPz/GWDmC96fF0+y0m5kobE4oye3d9tY21M8yjM
         m7W8sBD2rKjehRVSel5nicvPKj9BBY6pEXPC+nQz2xz3eiyNPjq5rPYhp+rRGmCChYpg
         XV374Ap7VdR9YOdrJMQ0yTqRbIy0LbW1EB4J5uhQCmdOdCogHaE/rrSb9maLMdEZiTWg
         GrdgKUZEMTXE/C7OTSBGOOImLHtx5sj1sLvcEHTl7Zd4v0jYNUYDYv1ZNruwtipCzomA
         CBJQ==
X-Gm-Message-State: APjAAAXl42/e+ywzzvaNE3HEvaIkOgYxgJpygq8PVmMHxSVFl037YJ0C
        V+u9HwDgfmDWKZqbyigZL16PgQyA1SjQbD1pzQv2IxfrA7wI/P7+XLktmFGtRrYG/w==
X-Google-Smtp-Source: APXvYqxon/uIKJW/6DSkZ8aDwhMWpVie1mmPg+IR6ytDM3UjTwfMbi1b1iVaauIXbL6K4CEGs+8TGRrQW6+T
X-Received: by 2002:a1c:1d42:: with SMTP id d63mr4521112wmd.34.1565726285375;
        Tue, 13 Aug 2019 12:58:05 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by smtp-relay.gmail.com with ESMTPS id q2sm1475349wre.51.2019.08.13.12.58.05
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 13 Aug 2019 12:58:05 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.co.uk>)
        id 1hxcvl-0001Al-5G; Tue, 13 Aug 2019 19:58:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
        id A97052742B44; Tue, 13 Aug 2019 20:58:04 +0100 (BST)
Date:   Tue, 13 Aug 2019 20:58:04 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        vkoul@kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, bgoswami@codeaurora.org,
        plai@codeaurora.org, lgirdwood@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        spapothi@codeaurora.org
Subject: Re: [alsa-devel] [PATCH v2 3/5] ASoC: core: add support to
 snd_soc_dai_get_sdw_stream()
Message-ID: <20190813195804.GL5093@sirena.co.uk>
References: <20190813083550.5877-1-srinivas.kandagatla@linaro.org>
 <20190813083550.5877-4-srinivas.kandagatla@linaro.org>
 <ba88e0f9-ae7d-c26e-d2dc-83bf910c2c01@linux.intel.com>
 <c2eecd44-f06a-7287-2862-0382bf697f8d@linaro.org>
 <d2b7773b-d52a-7769-aa5b-ef8c8845d447@linux.intel.com>
 <d7c1fdb2-602f-ecb1-9b32-91b893e7f408@linaro.org>
 <f0228cb4-0a6f-17f3-fe03-9be7f5f2e59d@linux.intel.com>
 <20190813191827.GI5093@sirena.co.uk>
 <cc360858-571a-6a46-1789-1020bcbe4bca@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="k1BdFSKqAqVdu8k/"
Content-Disposition: inline
In-Reply-To: <cc360858-571a-6a46-1789-1020bcbe4bca@linux.intel.com>
X-Cookie: Poverty begins at home.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--k1BdFSKqAqVdu8k/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 13, 2019 at 02:38:53PM -0500, Pierre-Louis Bossart wrote:

> Indeed. I don't have a full understanding of that part to be honest, nor why
> we need something SoundWire-specific. We already abused the set_tdm_slot API
> to store an HDaudio stream, now we have a rather confusing stream
> information for SoundWire and I have about 3 other 'stream' contexts in
> SOF... I am still doing basic cleanups but this has been on my radar for a
> while.

There is something to be said for not abusing the TDM slot API if it can
make things clearer by using bus-idiomatic mechanisms, but it does mean
everything needs to know about each individual bus :/ .

--k1BdFSKqAqVdu8k/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1TFksACgkQJNaLcl1U
h9BHfQgAhhh0D7Hg5E7dHFAw9gfqCTOCQFEV16Tm0f23eAZ2yPanGpNNC0hohDnH
y77jzS/Zh0WxkcN5gH7rQI0bTrbDVeZpQd0+Wo1egQK9eqfVkjZi+gE2O8v/VjCW
Hcou9+7P7205uP/LB7vuMzVbhKpTF4fPpbhIuJ44MV39BO+sQ+nptMl4ialTd/Y2
kjLdoCl/v6TIAY3GztKKmOvUo58xPak85st45COal2f5bUIBbKxs1Ss/x8VMSPlE
OvPxl5aUzKuFFiVXGekHr+hR/INMri9LWuBQpqrTatdyS0P2p/Sc/r9oNzrl8z+7
PKRpKAk3EYaOsSo49DWaJw3wREGyqQ==
=REil
-----END PGP SIGNATURE-----

--k1BdFSKqAqVdu8k/--
