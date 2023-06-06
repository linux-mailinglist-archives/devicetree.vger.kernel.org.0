Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D655C724B52
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:25:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238362AbjFFSZl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:25:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238979AbjFFSZa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:25:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46EE81BDB
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:25:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ED72762CEC
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 18:25:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEC3BC433D2;
        Tue,  6 Jun 2023 18:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686075910;
        bh=MiC4MxybN7xK1R36PsZKM5Zy6JeOjaqBkCPfv7Ncn0U=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DfIPCZvMLrwThIq6RwTpqfyIOWEgHlxG2AEBVlA11dcAWqecYnb3fo2Xb6hsG9fpv
         itxbTw3f7Pf7YLwnv11DeUFbsJLdt3uIJl3oZWAWa7rMUj121myceeOf+NUkH2Buhm
         9Ws5h3GvnZHJW/jSytZQM1mv3Mm9puhXZOqWtsshKV9ytuoEdA785/JaUag5Dq/RUU
         zuv58Hlue9x15bklQLYEKX6wg+Sd93lkuSVkJbPt8fFqBWOhDpXSy3iUdvu1MazI0a
         8puNkXvKCatPDqUTgpAb0Ze/UEKiETQG5zzfFfUxMVXzp2YfgzBUFUlzAL0tyOUJn2
         X+59Sf6pxpMUg==
Date:   Tue, 6 Jun 2023 19:25:05 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org
Subject: Re: [PATCH] ASoC: dt-bindings: audio-graph-card: Expand 'widgets'
 documentation
Message-ID: <d40f2c63-0b8a-425e-90a9-dd8f552ba782@sirena.org.uk>
References: <20230606175951.215740-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="UC3JHzLeJunBTnWc"
Content-Disposition: inline
In-Reply-To: <20230606175951.215740-1-marex@denx.de>
X-Cookie: Keep out of the sunlight.
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--UC3JHzLeJunBTnWc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 06, 2023 at 07:59:51PM +0200, Marek Vasut wrote:

> Document the encoding of 'widgets' property to avoid confusion.

>    widgets:
> -    description: User specified audio sound widgets.
> +    description: |
> +      User specified audio sound widgets.
> +      Each entry is a pair of strings, the first being the type of
> +      widget ("Microphone", "Line", "Headphone", "Speaker"), the
> +      second being the machine specific name for the widget.

This looks sensible to me, I don't know if there's a way we can get the
tooling to validate either the length or (ideally) the widget type
strings?

--UC3JHzLeJunBTnWc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmR/egAACgkQJNaLcl1U
h9BHwQf7B3p7OHMVFGQjrwAGXxP88n+12WctJbd/JuCiDXICv76wLFydE/BnHC6z
5D5KgJTDJ+MZ6yw1j1mNVAhuUP3BlhqvSeZtwd0R0c5bs28FPmngxG8anPllVzpT
gYc/Nhfj1u/TKFncmY5CXq4HJtKji9VsD033cbJ5T1KvJzQ5gD0ljOkkR7UjzmXh
wCU7H6CHHMBR9Vz03MDeOW4Ep6Eb79KeUdzPiZjRn4u0skdh/+p1XRQxK7Uddypn
Os+nZxdP8kXvHFr/X1qZz7fCQPNpRXCF2aKNbNS+qtsQEAbiX7G3fWiEqkdlIsrO
mxv7s3749KvviEyyauFfHf6WuE4G0w==
=MyiD
-----END PGP SIGNATURE-----

--UC3JHzLeJunBTnWc--
