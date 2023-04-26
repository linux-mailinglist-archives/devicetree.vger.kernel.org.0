Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D3356EF4A7
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 14:48:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240303AbjDZMsp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 08:48:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240555AbjDZMsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 08:48:43 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E121665B3
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 05:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1682513293; x=1714049293;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7abIa9Fa73+PqQnL1yYwEJJ5u6R981a/poEDnA+YJeA=;
  b=UF1EjLP937ByFVnzeRc8Nzqv+N8pY7cdGhTKVQg690t5IzDcRk3ZEp4z
   yXAUkAidN8E5mFBfUJplTeuK9sMMM11FJi5+gLyXaR1aiwTjLT6XDSaEZ
   l9YBpTX3nTj1QeISvgZaBadalCNfdXwEX4R2b6X6RaSO0H2BoRlpRa3sb
   3sC1tgloAr510HAdr9s5GsROZUU9h9fFvoERR88M6N0ecNeEPrsYJbvpl
   /jn5XZfLzz3pcD1oflSTvO/asgzX+eBwEo6vPkHFBjfR0OgSmFKJeIVev
   b5kvI143Egwo6MisU4FHSLnJP1w9+5rVw/0kpjEHe9qYoNWZo3wL0vJ1b
   w==;
X-IronPort-AV: E=Sophos;i="5.99,228,1677567600"; 
   d="asc'?scan'208";a="211277383"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Apr 2023 05:47:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 26 Apr 2023 05:47:58 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 26 Apr 2023 05:47:56 -0700
Date:   Wed, 26 Apr 2023 13:47:39 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Andrew Jones <ajones@ventanamicro.com>
CC:     <palmer@dabbelt.com>, <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v1 1/2] RISC-V: skip parsing multi-letter extensions
 starting with caps
Message-ID: <20230426-slinky-preface-0f40f3fefb0f@wendy>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-devalue-enlarging-afb4fa1bb247@wendy>
 <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2+PhMxZ3REZzaIR2"
Content-Disposition: inline
In-Reply-To: <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--2+PhMxZ3REZzaIR2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 26, 2023 at 02:18:52PM +0200, Andrew Jones wrote:
> On Wed, Apr 26, 2023 at 11:43:24AM +0100, Conor Dooley wrote:
> > Yangyu Chen reported that if an multi-letter extension begins with a
> > capital letter the parser will treat the remainder of that multi-letter
> > extension as single-letter extensions.
>=20
> I think the problem is that the parser doesn't completely abort when
> it sees something it doesn't understand. Continuing is risky since
> it may be possible to compose an invalid string that gets the parser
> to run off the rails.

Usually I am of the opinion that we should not seek the validate the dt
in the kernel, since there are tools for doing so *cough* dt-validate
*cough*. This one seemed like low hanging fruit though, since the parser
handles having capital letters in any of the other places after the
rv##, but falls over pretty badly for this particular issue.

In general, I don't think we need to be concerned about anything that
fails dt-validate though, you kinda need to trust that that is correct.
I'd argue that we might even do too much validation in the parser at
present.
Is there some attack vector, or ACPI related consideration, that I am
unaware of that makes this risky?

> How about completely aborting, noisily, when the string doesn't match
> expectations, falling back to a default string such as rv64ima instead.
> That also ought to get faster corrections of device trees.

I did this first actually, but I was afraid that it would cause
regressions?

If you have riscv,isa =3D "rv64imafdc_Zifencei_zicbom", yes that is
invalid and dt-validate would have told you so, but at present that
would be parsed as "rv64imafdc_zicbom" which is a perfect description of
the hardware in question (since the meaning of i was set before RVI made
a hames of things).

So that's why I opted to not do some sort of pr_err/BUG()/WARN() and
try to keep processing the string. I'm happy to abort entirely on
reaching a capital if people feel there's unlikely to be a fallout from
that.

Cheers,
Conor.

--2+PhMxZ3REZzaIR2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZEkdawAKCRB4tDGHoIJi
0rCYAQDAFdV3IwWNOtyPBFQVrzZ7oJg8v+xKBvTanwY2FvPdNgD/UKcpqYjj7Pf+
31qZI/sGuZGsO6Zm4B2R0g7n1fKbQw4=
=GslL
-----END PGP SIGNATURE-----

--2+PhMxZ3REZzaIR2--
