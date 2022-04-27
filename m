Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EE78511AF1
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 16:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236155AbiD0Nm7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 09:42:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236117AbiD0Nm6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 09:42:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBB9181EEF
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 06:39:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6C8D461C2C
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 13:39:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7B39C385A7;
        Wed, 27 Apr 2022 13:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651066786;
        bh=CmwInyW8+Oe6kiq/PB0kUNrRENslXv0ZrYfN7MqxIa0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=p/icx8L31CpxaFBmV2i6NxtoQ6IpZwLWokLZtYlHZGsNbJ8v7xbG+wcTutkFCDIPI
         0zAVUGcCviqtztZLuDUwIl0jyKkh+Qm1if/75jwVi5vLvlA/E4ly28NHf0ROUDR1zb
         uTwe5iCjcOqmjvmYwFs+FVDn+FQi1A/s7rmoeIG6GJ2KXLG5OqnACNDlIhGWP0wp7S
         yhX/ug+nTc1p1AtPsLHja+9Xwy16ndXw1tuAF/hK+R3zOmkmcl5Vaumwz6wBc0aEwv
         s9wznuLzargRbnAErJih5zU8mUoM7EZ4+G2+V32JMBZVUoSUH2lFMM1oUbHoh237Fc
         8fH32vsOxWe8w==
Date:   Wed, 27 Apr 2022 14:39:41 +0100
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
Message-ID: <YmlHnahS+Gxbt/YX@sirena.org.uk>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-5-andre.przywara@arm.com>
 <Ymkr8dFjbzEonXOO@sirena.org.uk>
 <20220427143345.73d81a91@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="3MNGj1XKwnnFh1tK"
Content-Disposition: inline
In-Reply-To: <20220427143345.73d81a91@donnerap.cambridge.arm.com>
X-Cookie: Buckle up!
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--3MNGj1XKwnnFh1tK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 27, 2022 at 02:33:45PM +0100, Andre Przywara wrote:

> I was assuming that Rob usually takes those binding patches, or do they go
> through the affected subsystem tree?

Bindings usually go through the subsystem.

--3MNGj1XKwnnFh1tK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmJpR5wACgkQJNaLcl1U
h9C0zgf/VfPY4PkwXjCy10oLlkI3NzSeNlJMXfz5ZHBDHayEauBbRLJE3imBvZMx
0VmaDOKo3jjTgm7M7FGVJf8Jl8JhyWuG8hBjJ6ClNdSGtknDFhB6UUZLen1cHM7X
UxyxSq8D01L4gOwft3S5mUSe3yV7wThzoGAnCM1kEAbjJj8gcXTXS8F8UhcXbZXY
glVsdKT9pVvT3rWxFzF5hzygMRsMKT6ruWtKZodrA947+2xS/pC5AKqBrPheQid1
EmLQ2XVJynt4qBFYi4u5AJHHKYzUCm2M7JlYd7UEz4ojG1teKDOyZnLjcvaIgYO+
TJrADMStqytXUoUseGyIBmn2LuvoSQ==
=3wfO
-----END PGP SIGNATURE-----

--3MNGj1XKwnnFh1tK--
