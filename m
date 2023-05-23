Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE3F70E173
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 18:07:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234409AbjEWQHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 12:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233433AbjEWQHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 12:07:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB1EB8E
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 09:07:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8015561127
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32EECC433EF;
        Tue, 23 May 2023 16:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684858025;
        bh=Tbs1nqyjktK27HOEoOgBQHkd9+6qIRUdXCbAX8J6INE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Poy94k1oVaewCX/sgwmdKrboKDYHec6Bpcj0NjROjROMTNgBEbx2NBGiQt3goHV3P
         y5/KGUa9ksSK8EmZWahY+3DwuwFM1dyMTJA59LdP75YSUX1GO/TIj7DjRX28CBuG3f
         HLvk9rMLbiJHWKbpGsN6jnoNYYELljSU4XSGBQcat1YtSXYFxdlOPstB0JrM+PuuoN
         g0gCimGzXJ8HRtM/wfEjgIJjQ2EYnxUYaxcU1NsODJyn1ONQDt5BKT9tuKBozDRUxo
         JgRBJu1SRKNDs77xstcvhm3HEzauAOGAUoIAJWzVps3ICq7Pqmm77D7XUGoMwgTtZl
         AVSY4vbOGNLIw==
Date:   Tue, 23 May 2023 17:07:00 +0100
From:   Conor Dooley <conor@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Sebastian Reichel <sre@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: unify version notation of
 Northstar devices
Message-ID: <20230523-curly-shakily-0c99e53e6b4c@spud>
References: <20230520112601.11821-1-zajec5@gmail.com>
 <20230522-bacterium-quality-b51ee7dc124c@spud>
 <c69fb09a-40aa-6c7a-09b0-d32a2b39e18f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="d1xMq4D4Xr8T2ulg"
Content-Disposition: inline
In-Reply-To: <c69fb09a-40aa-6c7a-09b0-d32a2b39e18f@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--d1xMq4D4Xr8T2ulg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 22, 2023 at 10:29:38PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> On 22.05.2023 19:08, Conor Dooley wrote:
> > On Sat, May 20, 2023 at 01:26:00PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> > > From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> > >=20
> > > Always use a minus/hyphen char to separate model from version. This
> > > unifies binding's "compatible" strings.
> >=20
> > Am I just being paranoid in thinking that software may have relied on
> > the former naming scheme?
> > On the other hand, my OCD really likes the change.
>=20
> That's a very reasonable concern.
>=20
>=20
> TLDR: The risk of any breakage is extremely low due to Northstar CFE
> bootloader & projects with Northstar support.
>=20
>=20
> There are very few Northstar devices with bootloader other than CFE.
> All devices affected by this PATCH use CFE actually.
> CFE on Northstar has no support for DTS (DTB).
> DTB files are always appended to kernel on all affected devices.
>=20
> So problem of some DTB stored in bootloader getting out of sync with
> kernel / user-space is non-existent in this case.
>=20
> We still should consider a risk of some out-of-tree driver or just
> user-space checking for those compatible strings. I'm not aware of any
> project other than OpenWrt providing system images for those devices.
> There is some basic support in buildroot but it's quite dead. Even in
> OpenWrt case the only possibly affected device is Netgear R6300 V2.
> OpenWrt doesn't provide images for any of affected Luxul devices.
>=20
> So there isn't any known project this change can actually break. If
> there is one (very unlikely) it can still update its user-space or
> out of kernel driver while updating DTB.
>=20
> So while this change may be not the best approach (in general terms)
> in this case it's very unlikely to break anything.

Okay. I think this sounds reasonable to do then. Thanks for the
explanation :)
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--d1xMq4D4Xr8T2ulg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGzkpAAKCRB4tDGHoIJi
0lb3AP9X9B4ySiiwC8zR/H/gAUOhRC6uHCbr99YUSoYlFu5BLgEA954iUViNadL/
+U3WuEwI/BFaazh1fHb3+IugeMLYfQo=
=Y+pH
-----END PGP SIGNATURE-----

--d1xMq4D4Xr8T2ulg--
