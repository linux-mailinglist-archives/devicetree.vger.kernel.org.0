Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B016055C3DE
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:48:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242578AbiF0WXp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 18:23:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242581AbiF0WXo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 18:23:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5370120BA
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 15:23:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7A0DC612BF
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 22:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 968C7C34115;
        Mon, 27 Jun 2022 22:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656368619;
        bh=hfW1R7g9hMtpRypFz3CWGKi8T7sb6RDtKvbjkBuRv+U=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NeoN1lcdtu4I69R8NpPKjxA+ATVrzCajy0VW6KNAUHUukau6Svtz5LD03rf1Z0hk2
         5oW2nKsOf5+Kqtd9E1LRlxwxbXSu+waqtdVGZp6iSbD63+4n8a6e9kTIR7PuB1lC3o
         W7FG4HyjVulb2i2mgrQrblzK0PSpf8sqkUEMIJMYofny1BezvTRO4L3713nmdy/soi
         rViWUZvoHst7OYXYn9Y9aRGBN+FFwKO3jD2WEfX181zzeWP3om1OWVHCrY+Gh9zdlr
         alDidw+zrQ2uV/bYpyB/RySrNFU/akEbp//SEEGCSWlYHRvykzdrR/fOfYjvFqIQUR
         P+xOAOwq7rg+w==
Date:   Mon, 27 Jun 2022 23:23:35 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     ryan.lee.analog@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: (subset) [PATCH 0/8] ASoC: max98396: Some assorted fixes and
 additions
Message-ID: <Yrot5+S1nPIF66Cn@sirena.org.uk>
References: <20220624104712.1934484-1-daniel@zonque.org>
 <165636115333.3997797.6298161546515778991.b4-ty@kernel.org>
 <b59afe57-7608-f049-c075-1a95d65984c4@zonque.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="K0qSPhrMW6MUNYT+"
Content-Disposition: inline
In-Reply-To: <b59afe57-7608-f049-c075-1a95d65984c4@zonque.org>
X-Cookie: Your supervisor is thinking about you.
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--K0qSPhrMW6MUNYT+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 27, 2022 at 10:26:41PM +0200, Daniel Mack wrote:

> Umm, I was about to send out a new version of this series tomorrow to
> address the things you pointed out, and some more detected by the test bots.

> Which patches got applied now? I only see "Fix register access for PCM
> format settings" in for-next and for-5.19 currently?

Yes, the bugfix:

> > [1/8] ASoC: dt-bindings: max98396: add voltage supplies
> >       (no commit info)
> > [2/8] ASoC: dt-bindings: max98396: Add #sound-dai-cells
> >       (no commit info)
> > [3/8] ASoC: dt-bindings: max98396: Document adi,bypass-slot-no
> >       (no commit info)
> > [4/8] ASoC: max98396: add voltage regulators
> >       (no commit info)
> > [5/8] ASoC: max98396: Improve some error prints
> >       (no commit info)
> > [6/8] ASoC: max98396: Fix register access for PCM format settings
> >       commit: cf5c888539f353cb10e127d3a8754554cacd293a
> > [7/8] ASoC: max98396: Implement DSP speaker monitor
> >       (no commit info)

it's the only one listed here too.

--K0qSPhrMW6MUNYT+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmK6LeYACgkQJNaLcl1U
h9CJcAf/UuFobsVtuIagiJULvdETzWOrXop+AEvWirtZvinUQGpjV6spQxBipSPy
J64H2pug5WIPlbx87k9rsB465JM+DMve/fnVMJlc26WfUBCvgyqQBO0RXGKjulYQ
rqCaHpkSTtprYnMPnN+WVmzVaGnd/5RsCFs8n4/s8U+GcvFtjuTrIdhwUBnwN8r5
KCXOmX3yurgnwypsNl6Emz3HbUoS2HLUMuHcRu53GIldam5x+WBX4rVhRScY2bXl
tSj+NNsHycx4HJSQYmOhTAB1QMeICPxyGvKfKGNbDC1gHnVNYXHD7+mn6rzKbbjY
1L58+aqpSUeAjFu8vP5ruJE1ZSWkeQ==
=/Au6
-----END PGP SIGNATURE-----

--K0qSPhrMW6MUNYT+--
