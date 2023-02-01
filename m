Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B7E6686417
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 11:21:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232387AbjBAKVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 05:21:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232430AbjBAKU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 05:20:59 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F9EE2721
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 02:20:35 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5C692B8212E
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 10:19:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5436C4339B;
        Wed,  1 Feb 2023 10:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675246756;
        bh=xSgjTUX1wqrAaPENfVdLfXLd5hvVLPmMp7rXoRYb8IY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MOGFu0fQPnUel34mVi49lcCLYOXTEJSDvTMqrzmDiiMM6eppjJJAp1UMLjAHnFEF5
         d5mJRSh2uHxuW2H25JdFoVVrMHMpv9IhjrSnPzJTrcE5V/eM7OJK9xc/3rgsRvoZS7
         WL6F9GZs5O20gWnfmCACd6qXBcr3T8VyZGHcJz42frAHIzEszPVYLhw5oEgNgOc0W8
         wLHxpXldlE2w8If5GevIsd7ne1Rxakj0CntPnytTxuHC6e7dRLTF3Q8KUlgf4eDxFI
         jsg0svaRcyA6zFkK8+FpNJSsLm2P/xL8TSgwfyWbQQt8BH8Gl25FhZsWB5+90dxu0j
         datdt4OSa3+Bw==
Date:   Wed, 1 Feb 2023 10:19:11 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 14/15] ASoC: dt-bindings: renesas: add R8A779G0 V4H
Message-ID: <Y9o8n5tyXSY60Wg2@sirena.org.uk>
References: <87a61y6t8e.wl-kuninori.morimoto.gx@renesas.com>
 <87pmau5ejk.wl-kuninori.morimoto.gx@renesas.com>
 <17542e28-36dd-2bb6-6c04-49df9433a67a@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="XO+wdLb7H/tLNR/H"
Content-Disposition: inline
In-Reply-To: <17542e28-36dd-2bb6-6c04-49df9433a67a@linaro.org>
X-Cookie: Oh no, not again.
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--XO+wdLb7H/tLNR/H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 01, 2023 at 08:11:48AM +0100, Krzysztof Kozlowski wrote:
> On 01/02/2023 03:02, Kuninori Morimoto wrote:

> > Link: https://lore.kernel.org/r/87zga6t5r4.wl-kuninori.morimoto.gx@renesas.com

> The Link is a tag added by maintainers pointing to applied version of
> the patch. This does not look correct...

It's just a general thing for linking to relevant information, it can be
used for linking to other things too.

--XO+wdLb7H/tLNR/H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmPaPJ4ACgkQJNaLcl1U
h9AZsgf/aJMoCoZzoWhCX5NKedEg4lcv11tTss1GItdBbH9UaAeH3pFY6UTeuleS
m3i2TFZs97ujstBmmu0FPiblXk8/bzvNEtOsucN1ffs9IVMYV7PxYPPgOhEdTyZ8
7CcAVHvdQW2HelllA44bsvumWG3X45ENnBSxC9dnA+GUnZVInjusSHSVsZHLffcb
xk3ojzM0rvPSXfdDhdZ66FvLDlgJpjb5/a5obirngrTmUgrlaD2r4o4hypwW/vap
vIDbLm/B+ytozsXnVxTmY6bGux6ZcTymwWAN26xw+mcpUCbvlN643yt+1OkXMhsG
H773cyFsGzDX4kI1dJE/3EhEF6XEbA==
=N61+
-----END PGP SIGNATURE-----

--XO+wdLb7H/tLNR/H--
