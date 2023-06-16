Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E54073310F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 14:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344417AbjFPMVw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 08:21:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232624AbjFPMVv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 08:21:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B47DC35B5
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:21:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 28EEC61636
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 12:21:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B71ACC433C8;
        Fri, 16 Jun 2023 12:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686918094;
        bh=lcb93UyauGjanSidvqpH8YqMun+SYig4FM52t4gM0L0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gCP5rmGihmwrXYl1izXvZHeOWpY7EBrp8d+rz4wyph8U/HopwLx3yNzcOrI2VkwtZ
         mq7hMlYlFD7RIQBqAgGzXaQfK3qaCUtblW26cLC5jCVGzg95RWn6g8R6sbRKk0vKbR
         gMb4UbsvG0m5R24PE81Xzv2Flz0KL1grvRvrcCmKfKfWo76SM9gZ1fW/45UOhLxvHc
         W4SUbCRVIzB1gapVFpYE1ogHq7GoYXrX6JR6vmXUNCk1kP2Upwqd+vi/FOFE+S3/9R
         QwqWkQdtJGHptQkYELC06DR/0u42xk3La0pSxstm1qqw697L++r+IUa+G3B5KOk0Pi
         rAb9BMjzGP/aA==
Date:   Fri, 16 Jun 2023 13:21:29 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT
 schema format
Message-ID: <3ddb3d09-2a9b-4a25-8108-a79ea83a9dd5@sirena.org.uk>
References: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com>
 <5a562bbc-9bba-4829-8998-af12041a434c@sirena.org.uk>
 <4930994.QJadu78ljV@steina-w>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fKDuqabGFWUpzE8H"
Content-Disposition: inline
In-Reply-To: <4930994.QJadu78ljV@steina-w>
X-Cookie: P-K4
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--fKDuqabGFWUpzE8H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 16, 2023 at 02:17:40PM +0200, Alexander Stein wrote:
> Am Freitag, 16. Juni 2023, 13:54:49 CEST schrieb Mark Brown:

> > This doesn't apply against current code, please check and resend.  This
> > should be an incremental patch perhaps?

> Is there any change to original .txt file I am not aware of? The to be cr=
eated=20
> .yaml file is new, so there is no increment.

That'll be the issue, yes.

> To which base/branch/tag should I rebase this?

As ever

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-ne=
xt

--fKDuqabGFWUpzE8H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmSMU8kACgkQJNaLcl1U
h9BUcAf9G7CPLU2eWfY5FglRTT5eSN2hsyUQzpxU5q3tcoyx38HkKsR49fRnvMtd
k2Qotg1rHf2bcyuCbzQhd5lS0khMjyEFTznkWpUyAhLhvnMrO1jhBO0Chhxyndpi
v09npGyzYgZUySR+g2boyw6eGbjHaWf707Q1PCRqeiwDoUVVmQbm05mdQetavckq
HgCM00ZGPq9fkdYtf+g9s7iAW/8giZndtL0P+Iu56aAQISP28qi5G5kJswe0l4Os
ATlmp+Svkd5fWZPSXkjAgolQ4OgZNNbY/648vsqBuHNW874DeJr3VowD8JvxT275
EsqelHTY81AIYqbVZOF9/oJrKtfwfw==
=ScV4
-----END PGP SIGNATURE-----

--fKDuqabGFWUpzE8H--
