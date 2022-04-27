Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12CD6511AB9
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 16:57:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237356AbiD0OO4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 10:14:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237359AbiD0OOz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 10:14:55 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE68051584
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 07:11:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8AEE5B82778
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 14:11:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36849C385A7;
        Wed, 27 Apr 2022 14:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651068702;
        bh=QFg7FBwb5MhYvF30DgR/mC+Yv8yfPxKYQ4p2GxJHqL8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=m6eI5zyllK+Y+xTMdEHPW3BszJCgo/Q68l8tSmnnzwp9qlsRiENMSXIRO+oOOmRYo
         yF2tMozouTq0i+sz4AA8FeYW2ksHvJf0wkzhtWSI/ZZFX/dW+9M+Lv29xHd5wGkpZC
         BPTa6vq+2uOXGk5HHwksiDs76ZQb446+f1Bi9RGYr5LYRJaMNKGAUGw6yt8mW9iV+/
         OmwZ0GVimllpbd/F6+HoO6Xbuyqaa2Rg+YYDOejWQTUM7w6dyfBjoaDNVazzCIRNMj
         HfGTG/dqfxmT1+lmaOYjceKr1BihNcB6eal2KP5YueHcICfhh3F+dwdDvoYz+0+vxs
         K0cIBS1LDX/wA==
Date:   Wed, 27 Apr 2022 15:11:36 +0100
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
Message-ID: <YmlPGGGizyWkSTFQ@sirena.org.uk>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-5-andre.przywara@arm.com>
 <YmlF1JlIvY0lTaAD@sirena.org.uk>
 <20220427145234.3b33a5a4@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lW0S7O/SG+t2Koqx"
Content-Disposition: inline
In-Reply-To: <20220427145234.3b33a5a4@donnerap.cambridge.arm.com>
X-Cookie: Buckle up!
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--lW0S7O/SG+t2Koqx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 27, 2022 at 02:52:34PM +0100, Andre Przywara wrote:
> Mark Brown <broonie@kernel.org> wrote:

> > This is a standalone sound device, you should submit this to the main
> > ALSA maintainers.

> You mean Jaroslav and Takashi? get_maintainers.pl just returned yours and
> Liam's name, plus alsa-devel, because sound/arm/aaci.c is not touched.

You shouldn't just blindly trust the output of get_maintainers - it's
got a tendency to both false positives and false negatives.  When adding
a binding for a device you should pretty much always be including the
maintainers for the relevant driver if there is one.

--lW0S7O/SG+t2Koqx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmJpTxgACgkQJNaLcl1U
h9CWhwf/WYQsB/EvBiSojEIiyRY66fDl/NKpwgAuO2BJ6J0QpbrBozaIt/AUUwbx
1G9ID/3Qcr6ygs37BkZRGXr/8d/TgrvNoqtv53D60QpCePKjPNJpuv770KGX+4/9
wd1EoArazkMI8mynolTV71V4jitecaWDZLDOcSgYnWaD1xpjMu7HKX2SAkz98iEl
aszHvlKF0ErwCcPRSZHVVeG1MONn5L1uCGfvo4XwEyOkuBlixJseh2+PKYmVSQv3
yAi7eVEndmj1qwwUfGBAlS2NUYr1sOkesX385QIuuG3SepPFNfwYxRm1iEKNxA3u
6xLz+N1h/Pxlm51jhEnQTTzAbTCrSg==
=9RvN
-----END PGP SIGNATURE-----

--lW0S7O/SG+t2Koqx--
