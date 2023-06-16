Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C213C73307E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 13:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232166AbjFPLy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 07:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345113AbjFPLy4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 07:54:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 607512944
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 04:54:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E85D460EB0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 11:54:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71187C433C0;
        Fri, 16 Jun 2023 11:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686916494;
        bh=ACpTR9SBV3aPtqJMQnni7TkSIEUIkE5zHWNAvE8mfrU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HAcsLlGAzFFj7Sjbi2jWa/66JhCkAaVi/XldgpBQO7C1DAktA9XeZCvc9/PnB/d6D
         OfP9qVPP6sVrtxFEeUqBcGSOwYktQ7SlL92nD67+bCz0SN6kAXa9oG5VityZejfrly
         xIDtUt6UfgQawu+N8ue6SQ0OR/mZf2Ht06iR7qT/3EPNPAdlhxnecJzWpLXM9PRq6b
         yqE0EE5P3hvQr9/jvd2H5sAVO9+5hTIZ5v/WzRgReDXH7T1ZyMmGaBKavOOK4bCrIR
         wTILVVRN4DoM1uFU99AEvlg9++qanl1G/G+xTkBvk9ynrkBi3k5h6APd6YOTuKjwiS
         HcOTv4kUlUcpA==
Date:   Fri, 16 Jun 2023 12:54:49 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT
 schema format
Message-ID: <5a562bbc-9bba-4829-8998-af12041a434c@sirena.org.uk>
References: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vsElv/D6vtd1CJEQ"
Content-Disposition: inline
In-Reply-To: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com>
X-Cookie: -- Owen Meredith
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--vsElv/D6vtd1CJEQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 16, 2023 at 10:35:49AM +0200, Alexander Stein wrote:
> Convert the binding to DT schema format.
> Since commit 514b044cba667 ("ASoC: tlv320aic32x4: Model PLL in CCF")
> clocks & clock-names = "mclk" is mandatory, it has been added to required
> properties as well. '#sound-dai-cells' is added for reference from
> simple-audio-card.

This doesn't apply against current code, please check and resend.  This
should be an incremental patch perhaps?

--vsElv/D6vtd1CJEQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmSMTYgACgkQJNaLcl1U
h9D3dgf/X+L0zgKjEpviXcu69nZ8E5ELzKgl1XtMWaQQTLn6eCnUJuaZAAIkqHpr
6yfgu3Aqak1UgM8bRT5je1dJYpB2xG5zxSZmNSfia1ENlz+tVWGLGo9sBFJLP1GZ
+4wnVUNW5aFjUiELxWVJRTUFn2/02H7p9RhwsN9ZH5NbbtlynYHDjDSvZ49rHAYB
7m7/wHCY2DuXIwaxZCtGRpt1UKJDOt+SXQBgvrYMp6YqdNSUg7LAzh1RtGuMT4mH
gcL+nI+PNBW90gEUY2ovo7+0LlDgkkAXCqZD0GMJZK2s3JlB1GghH3sORNlTEg0g
8s9Eo7Rw6oT2VEIljA8hV1xKTwM4BQ==
=YWF8
-----END PGP SIGNATURE-----

--vsElv/D6vtd1CJEQ--
