Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAA1D788689
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 14:02:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239699AbjHYMBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 08:01:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239941AbjHYMBh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 08:01:37 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC39F198E
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692964895; x=1724500895;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZeZyfeKGvQL1c/itO010dweirYa6Wn++IE4GN+lXY78=;
  b=uLcCzs8UtkhbzBbIJXwvw7CcbMs9Gmf+/lVaNxTS3Jta3nTkJXQh5kLI
   KU6DuNadq1WSlC2kdS6GzRV6+JdmQd1DwMkvrHnr5NvaUd8lU+FEjNTaD
   fYVWb/WmFkO3DtU2ZCyNYSYlEjexxcPsCv5hOXCKlScUbSwS6e6oNX0bm
   QBWDqOD+AITwblaVXERh23ef+/7Z3tSGR4TLQW0VzD9E7TsPREErKpMWS
   l8I0LSUbZV7kDTEpG3/aRarfiuHabdIiVdMqBnHwRAKn11cCkt4D8Uxyc
   EawGHRnhnkYClCXS2qT0gfMQoK4EN3hRZEKjaddZl/gDYltzDUZ2gPQuC
   Q==;
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; 
   d="asc'?scan'208";a="1305684"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 25 Aug 2023 05:01:34 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 25 Aug 2023 05:01:33 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex04.mchp-main.com (10.10.85.152)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Fri, 25 Aug 2023 05:01:31 -0700
Date:   Fri, 25 Aug 2023 13:00:50 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Binbin Zhou <zhoubb.aaron@gmail.com>
CC:     Rob Herring <robh@kernel.org>,
        Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
        <loongson-kernel@lists.loongnix.cn>,
        Xuerui Wang <kernel@xen0n.name>, <loongarch@lists.linux.dev>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v4 3/7] LoongArch: Allow device trees to be built into
 the kernel
Message-ID: <20230825-hypocrite-smoking-cc6ce8c2936b@wendy>
References: <cover.1692783907.git.zhoubinbin@loongson.cn>
 <3e69929008c8190cff331941dd4d34f748e5e44a.1692783907.git.zhoubinbin@loongson.cn>
 <20230823194250.GA2768550-robh@kernel.org>
 <CAMpQs4KQzXYDsMJesGGRVX=e_psyiik-Th2Y0CV=keU+-v86mQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="KsqxT0t8TAxpVqE1"
Content-Disposition: inline
In-Reply-To: <CAMpQs4KQzXYDsMJesGGRVX=e_psyiik-Th2Y0CV=keU+-v86mQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--KsqxT0t8TAxpVqE1
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 24, 2023 at 11:20:34AM +0800, Binbin Zhou wrote:
> Hi Rob:
>=20
> On Thu, Aug 24, 2023 at 3:42=E2=80=AFAM Rob Herring <robh@kernel.org> wro=
te:
> >
> > On Wed, Aug 23, 2023 at 05:54:51PM +0800, Binbin Zhou wrote:
> > > Some systems do not provide a useful device tree to the kernel at boot
> > > time. Let's keep a device tree table in the kernel, keyed by the dts
> > > filename, containing the relevant DTBs.
> >
> > Support for this in other arches was added to support legacy bootloaders
> > with no DT support. You should not need this for a new architecture. Fix
> > the bootloader to provide a useful DT.
> >
> Yes, our bootloader already supports DT.
>=20
> Our original intention of providing kernel built-in DTS is to describe
> all possible device information of that SoC, so that everyone can use
> it as a reference during development; we will unlikely to add more
> .dts files to the kernel besides the reference ones.
>=20
> And as a reference, our built-in DTS provides the most basic bootable
> combinations (so it is generic enough) as an alternative in case the
> DTS in the bootloader is unexpected.
>=20
> Does this make any sense?

I don't see how this answers the question - as far as I can tell Rob was
asking specifically about the building the dtb into the kernel, whereas
your response seems to talk about havint the dts files in the kernel
tree.

--KsqxT0t8TAxpVqE1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZOiX8QAKCRB4tDGHoIJi
0mMdAQCaaVLfZyKQ+j/RLCRL7NKg22cLE3B7zY7QFUv8jaSxEQD+POPxvl8zvCSb
lmpG4BcHfRU8QKAVQj8AuJ57nfm8eg0=
=9MR/
-----END PGP SIGNATURE-----

--KsqxT0t8TAxpVqE1--
