Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 038DA702674
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 09:53:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235190AbjEOHxL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 03:53:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232090AbjEOHxK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 03:53:10 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 023B6E68
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 00:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1684137177; x=1715673177;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RoI2Djn6VKieYMJ7o6/nHJ9x4pvl2Gd8CtxidZmFCHo=;
  b=fSvp0v0+Gwv4tr6LlaIg8+bVctrpCAr1ntCpLBbufXV/YgGD0ZlWB9G0
   ce86lv/WxPn1N6t81ZA+niHsydJBq/MwCcvy5zr+piMtfQ2nPRseh/I4f
   6h6LOfBOkzN6uarmZHzV3f6Dz9bm/zvRPx44y08IJA15+4rm3jZ2UhX6X
   ZaFA6ZwfHLWkJkZmB5+NDGTEFJUCL/BUb+I/Ujs690piNBWJ2TuJYPQ28
   hXJhtBBRLvod0vY48fLFTRN93kwgdBzg6U7CWYRRCCSznJqiQoGZMeAug
   93+3+2iqTlESp0g9fcdsTlYgUbJJ1jheW3wbAufryCFDgOk5Zmj+bMGsG
   g==;
X-IronPort-AV: E=Sophos;i="5.99,276,1677567600"; 
   d="asc'?scan'208";a="152051915"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 15 May 2023 00:52:56 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 15 May 2023 00:52:54 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 15 May 2023 00:52:51 -0700
Date:   Mon, 15 May 2023 08:52:30 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Sunil V L <sunilvl@ventanamicro.com>
CC:     Anup Patel <apatel@ventanamicro.com>,
        Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>, <atishp@atishpatra.org>,
        <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <conor+dt@kernel.org>, <heiko@sntech.de>, <cyy@cyyself.name>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        <ajones@ventanamicro.com>, Krste Asanovic <krste@sifive.com>,
        Andrew Waterman <andrew@sifive.com>,
        Greg Favor <gfavor@ventanamicro.com>,
        Mark Himelstein <markhimelstein@riscv.org>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
Message-ID: <20230515-unblock-mammogram-5c099bca83a6@wendy>
References: <20230511-occupancy-cleat-06e532e3ea11@spud>
 <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
 <20230512-streak-camper-08a68afb5897@spud>
 <20230512-exhume-unfold-f104dd4c4cbf@spud>
 <CAK9=C2XJDDYKN_HO8Q2OShQs=crQUhx4aUi5Xx4=YiAA9OYSqQ@mail.gmail.com>
 <ZGG3S3FgmHy/XGBx@sunil-laptop>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="+BsUbwUyCPabQyLi"
Content-Disposition: inline
In-Reply-To: <ZGG3S3FgmHy/XGBx@sunil-laptop>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--+BsUbwUyCPabQyLi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 15, 2023 at 10:08:35AM +0530, Sunil V L wrote:
> On Sat, May 13, 2023 at 01:17:03PM +0530, Anup Patel wrote:

> > ISA string parsed for both DT and ACPI.
> >=20
> > For ACPI, moving to a per-extension bit in a bitmap and defining
> > a new bit with every ISA extension will be very very inconvenient
> > for updating the ACPI specs. We should continue the ISA string
> > parsing at least for ACPI.
> >=20
> > For DT, users can either use "riscv,isa" DT property or use boolean
> > DT properties.
> >=20
> From ACPI perspective, the format better be backed by unpriv (or any
> other) spec from RVI considering it is a standard across OSs and to
> avoid any maintenance issues.

DT is also used across multiple OSes, I am not sure what your point is
here.
The problem, for DT in particular, is defining __which__ version of the
unpriv spec meaning is derived from, not whether to use definitions from
the specifications.

--+BsUbwUyCPabQyLi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGHksgAKCRB4tDGHoIJi
0r2kAQDaLZSBxfYMWHSqI9r2pyACzTc+FWLE4ybW31tnVDCi9QEAmR+ZWv8Iumrv
cxfV85604cTLA4qibrkK4C4FxXAgDA0=
=5zWc
-----END PGP SIGNATURE-----

--+BsUbwUyCPabQyLi--
