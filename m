Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 590EF6602A8
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 15:56:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbjAFO4n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 09:56:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235553AbjAFO4I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 09:56:08 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E8B180AFA
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 06:56:00 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 634F7CE1D06
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 14:55:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A67BC433EF;
        Fri,  6 Jan 2023 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673016956;
        bh=PPDmazgEZ01ebgNmalD5od1eIyKxwPF3rKhIbhiNAqw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=o1bA37/yKmDPjlAE+szA+fQqL87AT59OSHfsyO1VIR/nD7vAhaCimeBBeAwyOBn8m
         dCjlEfkX0/TlxGK7iCGS6DfPcFkNSdpzK6/uF83U6wPL4uWC25ouUKQ6WcFZ49kuHV
         2cdZdKnELSXPa3Pd8kQd3DXkdtHkqh5Qc6jOyoJfjtGUlCQYcFUo3Ridm1xfjcsDHl
         sxbg7XXeI6K0HTnVjJ8H9H/RfO2V3/bQSVGzcKzc589/4yIAeQvIdoy/bo9mD7MqiZ
         GMQpi1VcQoHKyBvnRA9iAKluDQtAr73aCuMabIh9R9GT9Z1I5KqO9Ey1YlLTkLeB0L
         Z6qDWGkPNA53A==
Date:   Fri, 6 Jan 2023 14:55:51 +0000
From:   Conor Dooley <conor@kernel.org>
To:     Ben Dooks <ben.dooks@codethink.co.uk>, Ron Economos <re@w6rz.net>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        robh+dt@kernel.org, palmer@dabbelt.com,
        krzysztof.kozlowski+dt@linaro.org, zong.li@sifive.com,
        linux-kernel@lists.codethink.co.uk,
        sudip.mukherjee@codethink.co.uk,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
Subject: Re: [PATCH] riscv: dts: fu740: fix size of pcie 32bit memory
Message-ID: <Y7g2d+3BtIJfy1IH@spud>
References: <20230106134456.265891-1-ben.dooks@codethink.co.uk>
 <422275a4-b082-2951-71f2-04f33e036438@linaro.org>
 <b64bfeff-e1e8-02d5-0a7d-c2a0a905da5e@codethink.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="GXMosCl6DcniI18p"
Content-Disposition: inline
In-Reply-To: <b64bfeff-e1e8-02d5-0a7d-c2a0a905da5e@codethink.co.uk>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--GXMosCl6DcniI18p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 06, 2023 at 02:51:04PM +0000, Ben Dooks wrote:
> On 06/01/2023 14:07, Krzysztof Kozlowski wrote:
> > On 06/01/2023 14:44, Ben Dooks wrote:
> > > The 32-bit memory resource is needed for non-prefetchable memory
> > > allocations on the PCIe bus, however with some cards (such as the
> > > SM768) the system fails to allocate memory from this.
> > >=20
> > > Checking the allocation against the datasheet, it looks like there
> > > has been a mis-calcualation of the resource for the first memory
> > > region (0x0060090000..0x0070ffffff) which in the data-sheet for
> > > the fu740 (v1p2) is from 0x0060000000..0x007fffffff. Changing
> > > this to allocate from 0x0060090000..0x007fffffff fixes the probing
> > > issues.
> > >=20
> > > Fixes: ae80d514808557018e44190 ("riscv: dts: Add PCIe support for the=
 SiFive FU740-C000 SoC
> > > ")
> >=20
> > Don't wrap lines.
> >=20
> > >=20
> >=20
> > Drop empty line between tags.
>=20
>=20
> Thanks, will fix.

I wouldn't bother resending to fix that stuff, can be done on
application.

I don't have a PCI card handy to test with so +CC Ron, perhaps he can
give this patch a go.

I can give it a go next week though probably if nothing's come through -
although likely not with something like an SM768.

Thanks,
Conor.


--GXMosCl6DcniI18p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY7g2dwAKCRB4tDGHoIJi
0mbtAQC7b2ZBykuymOVmjpi1QESGeEASXMZzc5aED6oKooGFIAD/WNpvTXpbNtFz
gFRSQ8HJkparZKaeKgVer8Fzbcd/qAo=
=VTlP
-----END PGP SIGNATURE-----

--GXMosCl6DcniI18p--
