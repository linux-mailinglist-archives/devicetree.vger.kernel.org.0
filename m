Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAD92719F5D
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 16:13:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233990AbjFAONw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 10:13:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234003AbjFAONv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 10:13:51 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A755129
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 07:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1685628828; x=1717164828;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=SOJvV7HqozaTtO1Lcs1pdOUa558kUviCYZEEXg0IcGA=;
  b=hw4ioQkkIpdKI/WHvbLytEWbC5ksWlO68wYIRSJWrVqkv/lxl153jsNs
   VHPw/MOI/BqjpzpyEP92VsVQE/H4WvH6RAIZGZ3z4DF7yjHZuqnbc6jmv
   HQDZDCHJ9/kOhPSAlJ4zHnYpNbZiGJJlC+SaOIHQCPmtDkolx0MG/z+8z
   NdmS1g5iHdvL8PLEIdJ3e49aShhn5IS92byjn2OYUi4VqBjZbuiTLLj1t
   V8zwMTeFuNC3n3PQTvOxBFLSZGOzFt9dQlAT3056ljX8htYcJS/lpPwsm
   7Va3muH3N0IInIuYCIkz2YuFq8NHEO2ozYcPjMKUfq1EHZ2wPlgAUofU6
   g==;
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; 
   d="asc'?scan'208";a="216403503"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Jun 2023 07:13:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 1 Jun 2023 07:13:45 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 1 Jun 2023 07:13:43 -0700
Date:   Thu, 1 Jun 2023 15:13:20 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
CC:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Aurelien Jarno <aurelien@aurel32.net>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/2] arm*/dts: Enable symbols for rpi device trees
Message-ID: <20230601-rake-calamari-eda0c88bd9bf@wendy>
References: <20230530175624.2360218-1-u.kleine-koenig@pengutronix.de>
 <20230601140214.i4yvya763sotyjz7@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="PgvLnnJC8TCb4t8C"
Content-Disposition: inline
In-Reply-To: <20230601140214.i4yvya763sotyjz7@pengutronix.de>
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--PgvLnnJC8TCb4t8C
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 01, 2023 at 04:02:14PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
>=20
> On Tue, May 30, 2023 at 07:56:22PM +0200, Uwe Kleine-K=F6nig wrote:
> > based on an earlier submission by Aurelien Jarno, I rebased and slightly
> > simplified the patches.
> >=20
> > There was some related irc conversion in #armlinux. Quoting the relevant
> > parts:
> >=20
> > 1685078851< ukleinek> arnd, [florian]: Who would pick up https://lore.k=
ernel.org/linux-arm-kernel/20220410225940.135744-1-aurelien@aurel32.net ?
> > 1685078920< ukleinek> arnd, [florian]: If there is an agreement in gene=
ral that this is a good idea, I can coordinate with Aurelien that for arm64=
 there is a v2 with the simpler approach I pointed out.
> > 1685083481< arnd> ukleinek: I have no objections to this, if [florian] =
wants to pick it up and send me for 6.5.
> > 1685083809< arnd> robher: any comments on this one?
> > 1685466520 < [florian]> ukleinek: I was hoping we would get an Ack for =
robher before picking it up in the brcm soc tree, don't want to ruffle any =
feathers unnecessarily
> >=20
> > So it seems to start a beneficial chain reaction, only Rob's Ack is
> > needed.
>=20
> Not sure this might help, but as Rob seems to be away for mail, I'll
> try: arch/arm64/boot/dts/nvidia/Makefile and
> arch/arm64/boot/dts/ti/Makefile also make use of -@. So this patch at
> least isn't a completely new thing and maybe Florian might dare to take
> this patch even without Rob's explicit consent?!

FWIW you can have mine, unless it is explicitly Rob's you want Florian.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--PgvLnnJC8TCb4t8C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHingAAKCRB4tDGHoIJi
0ub3APwJLXqorAtnmOtj1QhSqoDgjUnXj1APLB+gBicwWoKtBQD+MBPdQy9AX2g0
rUffj84RC6B4rrwcwGo+ytVk0XZ1YQQ=
=/pN2
-----END PGP SIGNATURE-----

--PgvLnnJC8TCb4t8C--
