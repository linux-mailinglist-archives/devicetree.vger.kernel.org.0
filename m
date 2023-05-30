Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0807716D91
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 21:31:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232977AbjE3Tb5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 15:31:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231193AbjE3Tb4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 15:31:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44CB6BE
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 12:31:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D770A60F88
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 19:31:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D6BBC433D2;
        Tue, 30 May 2023 19:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685475114;
        bh=mHUFFikMTlQApOGC7YvxjGTCLYZ1HBj5dMAI/IPTcc4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=n+DXjQcOsxFh3DQnqdIhpFMgPeGM07VRRtCWqyX3kl2StQG/lLgtBE4LLbC+M9cwA
         2NZZ60NB8tW7fnJwrVjD8vEjSmrMyISxL9+U6bB0yQBanW1JGE1nqrrcmSVYG71RSE
         AMLTFEBD//L7z0qaWE/oW2sMNOWjq9x8VJ95O37DmHWUmLJQXCQYNyK0WSemGQVCeD
         wdpE3rLQ1M9FnE96azrCkx2yF+Tt4e5ikBUux6x+0IbhdqTAS+t+deAgkZvYSG2ay6
         RM6+s5kKkHkIni3UhhVW1YgrV0giNKh3cQtfhIYGdyYjm3bldN/H2QfKIEKamZlMKR
         om19Wth0jkrfQ==
Date:   Tue, 30 May 2023 20:31:49 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <rfoss@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: tc358762: Document
 reset-gpios
Message-ID: <20230530-discount-stumbling-6b39fb74dc4f@spud>
References: <20230530192805.648646-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bdHpewQhhYkNCz+S"
Content-Disposition: inline
In-Reply-To: <20230530192805.648646-1-marex@denx.de>
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--bdHpewQhhYkNCz+S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 30, 2023 at 09:28:04PM +0200, Marek Vasut wrote:
> This chip has one reset GPIO input, document it. The reset GPIO
> is optional as it is sometimes not connected on some hardware.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--bdHpewQhhYkNCz+S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHZPJQAKCRB4tDGHoIJi
0vATAQDZW1g5AruaXlxG+i29siOdMLsQ8yfT0a/mw1sxTKOMagEAoXW5fBK1qfkV
VRDOWd37w/lS12vilf1zVydExj9o0wc=
=twAQ
-----END PGP SIGNATURE-----

--bdHpewQhhYkNCz+S--
