Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D66A4CFEEE
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 13:37:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232876AbiCGMih (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 07:38:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242658AbiCGMiV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 07:38:21 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F8BCEF
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 04:37:26 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4E13C610A3
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 12:37:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1C45C340E9;
        Mon,  7 Mar 2022 12:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646656643;
        bh=lUwMhaYBJGkOierLFllTF8nKaOK/jsf0OFMhV5q/DK0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QHtUNjcI9utG5Kp7+eurJAKiLZKQwc7NtTwo4eG0DKce3BkujjK6Ptg0kV6o6CqMA
         vTqYWdbd2yiGTuVIUI6/Kv+CexMNX08f9PkJvVU0X9YttRBT9jT3mHOQ/gwA26TCgb
         28+EoK9/4aqj13bKvUIJeSNCTDkzAbJ5Yq/pPnt+A95OB1mzORt6aN2PItDauoAqMs
         wALL0LoqaLjnr8NDZCnyddEX4mVZjIVXdmaYDjr/fnXzrlib41pfZltGoz+i361vtL
         LqS6zYLAmTsleAepxtlD6HaOJIJJ5NjOSLONxZwAmdaV2mSGpNgevGmOcH21GITCnP
         Oa1+gx5pFuMHw==
Date:   Mon, 7 Mar 2022 12:37:17 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Georgi Vlaev <g-vlaev@ti.com>
Cc:     krzysztof.kozlowski@canonical.com, devicetree@vger.kernel.org,
        robh+dt@kernel.org, lgirdwood@gmail.com, ldewangan@nvidia.com,
        nm@ti.com, vigneshr@ti.com
Subject: Re: [PATCH v2] dt-bindings: regulator: Convert TPS62360 binding to
 json-schema
Message-ID: <YiX8fZBEIljw4WLZ@sirena.org.uk>
References: <54caddff-a944-93c2-aaed-ffe80e83018e@canonical.com>
 <20220304080811.45132-1-g-vlaev@ti.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vbvtTZQaX4c6WKpg"
Content-Disposition: inline
In-Reply-To: <20220304080811.45132-1-g-vlaev@ti.com>
X-Cookie: Whatever became of eternal truth?
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--vbvtTZQaX4c6WKpg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 04, 2022 at 10:08:11AM +0200, Georgi Vlaev wrote:
> Convert the TPS62360 regulator binding to DT schema format
> using json-schema.

Please don't send new patches in reply to old patches or serieses, this
makes it harder for both people and tools to understand what is going
on - it can bury things in mailboxes and make it difficult to keep track
of what current patches are, both for the new patches and the old ones.

--vbvtTZQaX4c6WKpg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIl/HwACgkQJNaLcl1U
h9BGLwf/bIrFeJTxq4INNxcLCxKMDQd6iFVEqvY5SnZtcBn9AHBkcGmEWbnvpBIW
MyHR3pr3wkxhDx02MgyOj2kAtj01zg9m7tvTKCieloszJt+A4hZfr7nilC0Jx3rl
7I5JbdW30k+Lgn5POtTsdwbEkXGl/6IoUsP2W+I5Tt3gVFH/S4vSKqqlOP2P+lDZ
rrNJ9qOeyeEuITTXZcwtEzRHUWHbwLjQAOgvpeofC8D36/SO+Xskl2QxuH00r1l2
gNlpWY/Gwa5LAWUqThsuwnhwqgYYy7z13J69GxUAqwgYiAvPTx/iDyVFDsh4MNAt
Cv8dEVO5R7+tuKxPy5gfjA9/HFkjVA==
=o72M
-----END PGP SIGNATURE-----

--vbvtTZQaX4c6WKpg--
