Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B82C77DAB1
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 08:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235361AbjHPGwM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 02:52:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234258AbjHPGvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 02:51:42 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 963FB19A1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1692168701; x=1723704701;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/SllCHZ5O5kSLTaNGgz3gH/wnxA2LnBuE4r9ZY41rCE=;
  b=odFF1uaO8J8FwTxOgwB8WVODep0Bh0zM60eYds3dqX2mVPu+5kEWcnlA
   xJOXPSPevafGq5Y+uxbGZgAzQ8Xb/AJSIJIj0Ux25FeVROc8ZQsEZoul6
   iWuVqwIxzww5omajhbbaRIpTSl4EcyrMRnQaWdhpXHsSk8a5XZDE3lU6S
   jazpcAHzs2Bb6JH4bBQDQsick+1QnWizVtkpN5LXJ5JvJvsg7x0qOEbVH
   DmeriB9NS+KAjIewPnEg+vHYP0z3YD5Vyd9fjEdbBYHBQTXPI379oZVOg
   5mE4lmK7lJnyM7CajG1kFMsH3Jxh8AxvzZK8xkcVR92e/fwL1ROsu2dD4
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; 
   d="asc'?scan'208";a="241857277"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 15 Aug 2023 23:51:40 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 15 Aug 2023 23:50:58 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Tue, 15 Aug 2023 23:50:55 -0700
Date:   Wed, 16 Aug 2023 07:50:16 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Binbin Zhou <zhoubb.aaron@gmail.com>
CC:     Conor Dooley <conor@kernel.org>,
        Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
        <loongson-kernel@lists.loongnix.cn>,
        Xuerui Wang <kernel@xen0n.name>, <loongarch@lists.linux.dev>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v2 1/7] dt-bindings: loongarch: Add CPU bindings for
 LoongArch
Message-ID: <20230816-battery-subarctic-266765b510bc@wendy>
References: <cover.1692088166.git.zhoubinbin@loongson.cn>
 <0e70f7d95104fc9d0a8038c3f0652f5fdfafa4d0.1692088166.git.zhoubinbin@loongson.cn>
 <20230815-aversion-shore-7ba847f2606e@spud>
 <CAMpQs4+aeD-3oh9qNbGjOTiMc6zE6N6LPzv+5tZyrLNgH06jtQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bq4MT5LYbivFrSLO"
Content-Disposition: inline
In-Reply-To: <CAMpQs4+aeD-3oh9qNbGjOTiMc6zE6N6LPzv+5tZyrLNgH06jtQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--bq4MT5LYbivFrSLO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 16, 2023 at 02:37:43PM +0800, Binbin Zhou wrote:
> Hi Conor:
>=20
> Thanks for the reply.
>=20
> On Tue, Aug 15, 2023 at 10:07=E2=80=AFPM Conor Dooley <conor@kernel.org> =
wrote:
> >
> > On Tue, Aug 15, 2023 at 04:50:46PM +0800, Binbin Zhou wrote:
> > > Add the available CPUs in LoongArch binding with DT schema format usi=
ng
> > > json-schema.
> > >
> > > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > > ---
> > >  .../devicetree/bindings/loongarch/cpus.yaml   | 60 +++++++++++++++++=
++
> > >  1 file changed, 60 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/loongarch/cpus.=
yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/loongarch/cpus.yaml b/=
Documentation/devicetree/bindings/loongarch/cpus.yaml
> > > new file mode 100644
> > > index 000000000000..ee3fe09e53dc
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/loongarch/cpus.yaml
> > > @@ -0,0 +1,60 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/loongarch/cpus.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: LoongArch CPUs
> > > +
> > > +maintainers:
> > > +  - Binbin Zhou <zhoubinbin@loongson.cn>
> > > +
> > > +description:
> > > +  This document describes the list of LoongArch CPU cores that suppo=
rt FDT,
> > > +  it describe the layout of CPUs in a system through the "cpus" node.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - loongson,la264
> > > +      - loongson,la364
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> > > +
> > > +  device_type: true
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +
> > > +additionalProperties: false
> >
> > How come you didn't add the reference to the common cpu schema?
>=20
> Do you mean:
> allOf:
>   - $ref: /schemas/cpu.yaml#

Yes.

> Sorry, the file started out as a copy of mips/arm and then the related
> content, really didn't notice that part.
> I will check again.
>=20
> Also, shouldn't "additionalProperties: false" be changed to
> "unevaluatedProperties: false" synchronously?

To actually make use of the properties from there, yeah.

--bq4MT5LYbivFrSLO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZNxxowAKCRB4tDGHoIJi
0rBVAQCKZkQLR88fu2610e8NrDbHutoWbLqmb6HphjHk8nBAlgEAruYkoOJISV7H
MivE0o8qsLfPlwSXyGDXEpxMl3VPPQM=
=SReg
-----END PGP SIGNATURE-----

--bq4MT5LYbivFrSLO--
