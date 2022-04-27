Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E79EC511907
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 16:54:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235989AbiD0NfY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 09:35:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235983AbiD0NfX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 09:35:23 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3C2F4756A
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 06:32:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 559C8B82708
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 13:32:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BFDBC385A9;
        Wed, 27 Apr 2022 13:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651066330;
        bh=I5h11ZY5rAxUepEeab61DNcBIAuJoRQxr65xcsAdBrM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Mf3KW6RAaO2Bq5zf/L4DOinx+Ih1+vD2zwOFGQQXUap8i7OqmYMi4VqNskSea4GfF
         b6X4b2+FZaOGYgaour10XOx9H9U8PvfOz6/zeo+mr2tAQzpxBHVekw0RyfpGXSmoTO
         QvYzmkUhoIECiGAJF3Qyz7EiJI3kKxaI2ZtQU2eXPwSyxzf4+q0nXrUwtat0pWS5Ot
         xLvxD48fTpehEUE2IxQaY5HkPdf+QTEa6LQ5CS7QhDfHgVWEQfq6R0uWt4+uFzK7Y1
         3NAeyiVMj9Ay6AGWlEcaadntzs4SeRvHyx3tscGVMxVqmuMVY8DzemFS0mSfzuJXMu
         Bgei3/XZZmAAA==
Date:   Wed, 27 Apr 2022 14:32:04 +0100
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
Message-ID: <YmlF1JlIvY0lTaAD@sirena.org.uk>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-5-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="M3OLMHWl/HYgh+xd"
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


--M3OLMHWl/HYgh+xd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 27, 2022 at 12:25:21PM +0100, Andre Przywara wrote:

> The Arm PrimeCell Advanced Audio CODEC Interface (AACI aka PL041) is
> a peripheral that provides communication with an audio CODEC.

This is a standalone sound device, you should submit this to the main
ALSA maintainers.

--M3OLMHWl/HYgh+xd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmJpRdMACgkQJNaLcl1U
h9CVLAgAgUqI/6vFBmo5SKhxqKgP+iNvOwwFVOm8UTkxHbaVgyFm3CdYSjWOnBfu
UYyK2K7eS97T0R2kGnH0dLxQpPXFQJYoiaOsv62H7QwMNYRJT2Fk+IqvW90Jornh
/d9hiES5/OwlKxibSDxinXpt3ZotGbENbs90icqW4onlqObtogZ+JRFccEmYwg9Z
E4QKF5N23Tp7l7i6pHoATGa0b/4O894zEccd0VZ3518/lrfqEQuopRFSMLdCayZ9
lhX0m1Zhyb84twaktau69BLDnsdUQLMeltYGOTZfZ2jbauauPi5Ypc74lS+ZAUix
Lpnc07QzXcMSk2dsnz3+2td4KlqGqw==
=+Sws
-----END PGP SIGNATURE-----

--M3OLMHWl/HYgh+xd--
