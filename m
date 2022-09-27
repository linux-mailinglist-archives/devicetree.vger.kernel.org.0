Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAF3C5EBFE3
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 12:37:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiI0KhO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 06:37:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230256AbiI0KhN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 06:37:13 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9EB686FF3
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 03:37:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8C8ABB81AEE
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:37:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2825C433D6;
        Tue, 27 Sep 2022 10:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1664275029;
        bh=4N6WKH/3dxI6M6RbsWDJhZfD/BEokUj4BWJv4Wu0EU0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AY+QpZ4QlPtYpboQIKabFDadUEpFguTdO83MQp1mdSnhFGEAicwIMUbjnk/xblaAG
         TB3D9tw+qhhQ6oTXmsgbJrKVOSYKR+JmtqgKnPg3AJR3Ua3E3urASywClIoUr3+IvK
         FNdW39AujXQjvfZ1o3aw0Yv83PsG8Stqe4j0j+dPNmLCW9HZUbLOoBOPLa4mScyngp
         w/FE0MT4n/zKw1YfHLrH706NQ2WI4R5bqr0uNdgfWI3swAlFdZ3YVweHGkSxEwpd1e
         zvlp9LxXN5h3yHaNaxNLHgGTVIH+T72BRnEYYkT9p20JUNAI8f9d4NcZ77GjFexeZg
         Cbmwfdr7eEDFg==
Date:   Tue, 27 Sep 2022 11:37:03 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Olivier Moysan <olivier.moysan@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] dt-bindings: sound: st,stm32-sai: Document audio OF
 graph port
Message-ID: <YzLST/bYxqd0S/i4@sirena.org.uk>
References: <20220927002004.685108-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Du9wpDWt1y+c5xqH"
Content-Disposition: inline
In-Reply-To: <20220927002004.685108-1-marex@denx.de>
X-Cookie: Vote anarchist.
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Du9wpDWt1y+c5xqH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 27, 2022 at 02:20:04AM +0200, Marek Vasut wrote:
> It is expected that the SAI subnodes would contain audio OF graph port
> with endpoint to link it with the other side of audio link. Document
> the port: property.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--Du9wpDWt1y+c5xqH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMy0k8ACgkQJNaLcl1U
h9Andgf/QmV0+vIA5bfdtCHk18ybF0TXlpGWK3K7FAt3k4uJwPybU+rISAH7EiHB
JkO5dhxqhmjhBMX4nKTAmZUkJKa64n68ZIyBxXgpVCiBa69HeWZYEMPSEW3lTfX6
RmdFdabCPxtGh+RUdU6rG+VtusMQ1maA6THru9KERBlCWSuQfjVINpIikbIMJ4YP
GdGga62WSKhUwivJy5JtpJCsfcfFHMiSwLRRYpHKzo5UpHkPMyn74LBxsslZ/v2W
jtyV0L39m6sR2Mk0UvYD3FdSLxgzHcNABgXXDn+iqr7t9C4W/EjEyQb/T6aj+7NN
BX+AbFS66KGjeJufKynzBTdxtBA2/Q==
=iQWe
-----END PGP SIGNATURE-----

--Du9wpDWt1y+c5xqH--
