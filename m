Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FBBC72796E
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 10:00:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234245AbjFHIAk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 04:00:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234398AbjFHIAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 04:00:25 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DE1F2738
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 01:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1686211208; x=1717747208;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cqXxGotenDrIkzJ/xbTLUZR8Dx3lKtfhgIu1Q44Zd64=;
  b=vwJSqVpA2kInQWaHpLYC/fIc/6eJdtap1re+6yffgzQ0AIyQ94I+kpTp
   0TsTD5k8LhubbPMnoY3QUyIwL0NE9FaEWBIQCBzB+F0oCueEDbHNuubDu
   ZgkZ3TJjxO+lzdH0oRa5cgVix0qJUE4v6FLnRpQ9DD7x7VAreVouvY7f5
   DDeK6UBsbeZCSCX8/hy0+8XKSsTpH8yKIHVsWQmaAcmMVtB2qWneuNPdC
   hwDOPCu5ri/hVFsd9uVful0XuCzzu/prTBmH7G4qlqpG6m2P7lgJdTZM1
   diiTWBhZ+xfz9geyVbtr5Q5MAg24FTf2LrvzHIhnKbMq+CdoH0X78hytq
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; 
   d="asc'?scan'208";a="215157491"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 08 Jun 2023 01:00:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 8 Jun 2023 00:59:36 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 8 Jun 2023 00:59:35 -0700
Date:   Thu, 8 Jun 2023 08:59:10 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
CC:     Conor Dooley <conor@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liu Ying <victor.liu@nxp.com>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: phy: mixel, mipi-dsi-phy: Remove
 assigned-clock* properties
Message-ID: <20230608-oven-coerce-e0c3f16d58a9@wendy>
References: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
 <20230606-implement-canning-0353ca9afddb@spud>
 <1855461.tdWV9SEqCh@steina-w>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ptHSS9UAxKA8gKs+"
Content-Disposition: inline
In-Reply-To: <1855461.tdWV9SEqCh@steina-w>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--ptHSS9UAxKA8gKs+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 08, 2023 at 09:31:57AM +0200, Alexander Stein wrote:
> Hi Conor,
>=20
> Am Dienstag, 6. Juni 2023, 20:21:02 CEST schrieb Conor Dooley:
> > * PGP Signed by an unknown key
> >=20
> > On Tue, Jun 06, 2023 at 04:44:46PM +0200, Alexander Stein wrote:
> > > These properties are allowed anyway and some SoC (e.g. imx8mq) config=
ure
> > > more than just one clock using these properties.
> >=20
> > What does "allowed anyway" mean?
> > And following from that, why not modify the min/maxItems to suit
> > reality, rather than remove them. Is there enforcement from elsewhere?
>=20
> As Liu pointed out, assigned-clock* were considered a generic property ad=
ded=20
> by default at that time. With that support added there is no need to spec=
ify=20
> these properties in this bindings again.
> Despite that you never know in advance how many items you will have to ad=
d to=20
> assigned-clock* properties, that's totally different to 'clocks', it may =
even=20
> depend on board specific clock setups.

Sounds grand to me. I think it'd be good in the future to explain
*where* the enforcement comes from, rather than saying something like
"allowed anyway". Otherwise,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--ptHSS9UAxKA8gKs+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZIGKQwAKCRB4tDGHoIJi
0jBwAP48RIVNjBThUtOuVL9t4+mAVA4Be5prPplO8Zl55lJSUgD/TclTtH9LReVZ
GcKhKcblVM9ReGHGKx+Z57oeRGFwrw0=
=2Mc/
-----END PGP SIGNATURE-----

--ptHSS9UAxKA8gKs+--
