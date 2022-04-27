Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9449B5117B1
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 14:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232926AbiD0Lo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 07:44:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232694AbiD0Lo5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 07:44:57 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F4AC4667A
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 04:41:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id A8631CE24A3
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D663C385A9;
        Wed, 27 Apr 2022 11:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651059703;
        bh=OrIoR6u3SU+h0ZVt5IRQbJw+w4d6a9VMedLf55vc1ek=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Fz7BS3ZinelIjDox9N+q2oOXiMsM9r1j06vk4SxEVg8KHvWYHJa+y5o77a0FGYQDg
         qn190MGwwtSB22raT94F9cLfTYTXJnRBTVIgNiowV1JX/qOvtsn7jVIuVcmwynBZvJ
         FVLHoJuxq0R5x5knYV7TXewXaAYX0ANe6912MY9i0Fzh3xKfFXcRYUTkzy2atWF4GZ
         kA2loD2aXqWou39z1LkwMZsn3GTn7afATfJlizN+NeXLtDkbBcd63In602H8+xCYxC
         WTtqzqWmjuCvNHgUtvyhAKYTDP2TBBYHmKvH2zN433bSp9bbszeb1lo47ft5+Oeba+
         3kX8/dNibxt3w==
Date:   Wed, 27 Apr 2022 12:41:37 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH 04/11] dt-bindings: sound: add Arm PL041 AACI DT schema
Message-ID: <Ymkr8dFjbzEonXOO@sirena.org.uk>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-5-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xEalpJZfvyrIiHuU"
Content-Disposition: inline
In-Reply-To: <20220427112528.4097815-5-andre.przywara@arm.com>
X-Cookie: Buckle up!
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--xEalpJZfvyrIiHuU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 27, 2022 at 12:25:21PM +0100, Andre Przywara wrote:
> The Arm PrimeCell Advanced Audio CODEC Interface (AACI aka PL041) is
> a peripheral that provides communication with an audio CODEC.

I've got this one individual patch.  What's the story with depenedencies
and cross tree work?

--xEalpJZfvyrIiHuU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmJpK/EACgkQJNaLcl1U
h9BwnAf9ENkVudoH1sxvPKQlVaixc0WFHUv8wulTouE6pJdR0Ol4eirsXbYIR9If
d3hHsmqdNtSlIdWQXeHuOsGo0Fb0Kdqh9UiU5nXeQOJktVnOvYCoeNa0vpQ9JRiW
ClNNntQO8hkL0W8ymhiS0oZ2GlFhMgSiAyARTMCIwYV5o2lNvblr0dVabYm+Gzgw
4Q6heunJnHt+oUZ+18f8Wp5Aq1lLIxd/LD6XoAg3tb9vRyvo4frAPu4CciLRpckt
cTVzec7tB8fyMfwlcerR0zQG4tXHeuMeALo1hpicYg7WI9XUqzOwvk1Se4mwr68B
TOERYG0uNDeG6kwVZERNJNZnfUWTHg==
=rz/g
-----END PGP SIGNATURE-----

--xEalpJZfvyrIiHuU--
