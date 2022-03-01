Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 040AA4C8CC0
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 14:36:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235074AbiCANhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 08:37:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235052AbiCANhT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 08:37:19 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42EE99E550
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 05:36:39 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DBB74614BD
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 13:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7BDBC340EE;
        Tue,  1 Mar 2022 13:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646141798;
        bh=AhkBBUjPoe/xMZrvrF1mkG8iDICMbXuJHq6vDcKPlXQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=b++kZK6aZxKQ9I+aYavnWIqgdHkyE5VwUebf1xHsKHQUgLsLS1sO6osFTNGJqUX7r
         IwjUzgBVVNSFNxmq7gezUUYarqAiM9dhydLZJnYFI951cYXedWhEow70HtADeaz4lM
         Vd9pModFzceJG1q2Lk9/+5SFVmVTpIejTV2cPTnikJPl7EOGwLruLek2ObTQHGTAvn
         2k0MI2L8zrlUOPHSO7RKi/Kmli2b5heXeIA5/mbp7qYtsYuxTYwyqdMr+gQYb0KVa7
         uS8PK1JIgaDPF3oO2RL1dGSo129p88cCvm5ETGTTIl2LdeVaFZ78zFyyQrlwum3TCx
         ihL/My5eBz6DQ==
Date:   Tue, 1 Mar 2022 13:36:33 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: Add schema for "awinic,aw8738"
Message-ID: <Yh4hYVJFZJBYp3d9@sirena.org.uk>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-2-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qirQl09dxjOo5/hy"
Content-Disposition: inline
In-Reply-To: <20220301123742.72146-2-stephan@gerhold.net>
X-Cookie: You have a message from the operator.
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--qirQl09dxjOo5/hy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 01, 2022 at 01:37:41PM +0100, Stephan Gerhold wrote:

> +  awinic,mode:
> +    description: Amplifier mode (number of pulses for one-wire pulse control)
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1

No maximum?

> +  sound-name-prefix: true

While it's very likely that someone will want to use this it shouldn't
be *mandatory* that they do so, there may be no other controls for it to
collide with (eg, if none of the other components in the audio path have
controls).

--qirQl09dxjOo5/hy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIeIWAACgkQJNaLcl1U
h9BT7Af/abCfQLZFr6Z/6zT3r//dESK02ozo1k9r5s/h9qr+HoWGQ34otTtx2xHo
5fLyMV/7sFleZuNjRb98zH+TvsmlppB7crocL+0hbvU5Z0bZQ9yb9jv/gU4uyoBR
WoCrUPCAjCQvVPidpLCWcdoEH/zYwrGDXamk/zviLStVKMUp/Ib8chtRlmsd3oA9
lwKPIOcBdeh1K2DvBl8nJd6u+nJ7dMrFKSWNQX7k4R2DXTXoLsvTlyU2VmI/Oqqt
LRvaUdpDG8KUuPMVClhCjJ5LJCXS69KCgtBtFe0zPNGqIgEio1kqlAfFx1Zj6ibu
vGru1WSjIh68zdiaxoRK44zSU3wc1w==
=No04
-----END PGP SIGNATURE-----

--qirQl09dxjOo5/hy--
