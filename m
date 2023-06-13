Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7997D72E11D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 13:18:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242273AbjFMLSI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 07:18:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242279AbjFMLR4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 07:17:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0C78199C
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 04:16:02 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0A05262A29
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 11:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1FA4C433D2;
        Tue, 13 Jun 2023 11:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686654900;
        bh=sAj/ERKQE0tCZl9uMfMEEyfqrsGw28DDx99q885t3rw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VN9JVYZHbRV0mZUkEQ+jbRligdZU79mAnMzw7HTqGVNGdpCB/K1ue3jvwGm0X59XG
         qe+OtwmIZjZ82v0ULnQHCrRDctm7tIZ6Jeo9xuVjaGGimEZd7mxoGyIk3Y40g5vPEE
         VkvHpX6vTvZzaNFzidscwO39TdSQEbMpWo26g4G2byNCjALITIOhweDvcjUarZu8PM
         CxmdGkQlwuwNEiR6KifpQv7cWUvUH/R1tsSR9WSPWimbJkcGyWQZen/XHmaSuGnWLm
         6NHMWXiZEP+VFsw1c9G8r+fPzmxA/XKuyJEVb3c6JfRXTeki4n7pTKeLNrST5zM+D6
         pfNM8k8uXw2Uw==
Date:   Tue, 13 Jun 2023 12:14:55 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT
 schema format
Message-ID: <6439325c-438d-4856-a0db-e71858cdb816@sirena.org.uk>
References: <20230608081547.442763-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="y6t8z90gfqIpBNEf"
Content-Disposition: inline
In-Reply-To: <20230608081547.442763-1-alexander.stein@ew.tq-group.com>
X-Cookie: There was a phone call for you.
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--y6t8z90gfqIpBNEf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 08, 2023 at 10:15:47AM +0200, Alexander Stein wrote:
> Convert the binding to DT schema format.
> Since commit 514b044cba667 ("ASoC: tlv320aic32x4: Model PLL in CCF")
> clocks & clock-names = "mclk" is mandatory, it has been added to required
> properties as well. '#sound-dai-cells' is added for reference from
> simple-audio-card.

This doesn't apply against current code, please check and resend.

--y6t8z90gfqIpBNEf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmSIT64ACgkQJNaLcl1U
h9BgCAf/Z/U6go8jFr2eUxPa/n/ehWr7i9WgW2ftDD35tuHVhDe9tUiHeTWnYnae
XQ3We6mh2bR4JAJhANfL/4VDBEtxArWKpFD0ptMzhHuZ/VTMPUSBrxGPhYzVcL8i
gxovWhKa0d7XGHVwNMkCPjZaDHotztyv8C1PyEOKLEMR+u5zZI/msTkjcG/S7MK+
JsdkA/8X0RBNu+LKLzPI9/qLTtUbsHph1izrDm0dnmSn1btZJnkMqdCNR5RXpCRj
L0AGx4yotUoSZGTr/wOvwJZwi8FWr8s6B5ig4imJ3V3KJRrcRSr2M+xEhu4OTNPg
arozOc1zFiuzl4vmXMZ8wZOvIQMWgA==
=fNEA
-----END PGP SIGNATURE-----

--y6t8z90gfqIpBNEf--
