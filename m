Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 293C377F25E
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 10:45:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236512AbjHQIov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 04:44:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349065AbjHQIoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 04:44:24 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0BEB2722
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 01:44:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5AEE8657A2
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 08:44:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 248F5C433C8;
        Thu, 17 Aug 2023 08:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692261861;
        bh=0wt19lcuyV0qGxajto8H64st9E4uYSeCHXDPnDfixX0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=c5ya0ywB62jJ8L512dc5X0JjP3KGG3Vpv9C4y2bXDtSo1YZNfugiFxRnq1ucoYVLb
         fdAwMyZ33OhiIXdWmrM1k+PSxbJbTrt5YNuE5RHkTeclgDKEsm/paEetQern5G4Cbe
         z2/4ym94ndL4PTpwUYcTcdLVT+GHgTcizVFmob4A7JMzUYewRQytWSwAreyQPYdwT5
         fgYQUr2H4UTpnBLW5qrTSrza4ZKr4nTSq/G8x5BcoeBupwKfDk3qTnZ51iaA0UtPyT
         vI9IHHZ7RVKRfS00W+OLLR0rM1F2CLN7uAOwLddNo/ZEBhylc/kEykV2mLcTJq0yYC
         LHBaPtd8MnovA==
Date:   Thu, 17 Aug 2023 09:44:16 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Binbin Zhou <zhoubb.aaron@gmail.com>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v2 2/7] dt-bindings: loongarch: Add Loongson SoC boards
 compatibles
Message-ID: <20230817-snowfield-public-af7228b71c3f@spud>
References: <cover.1692088166.git.zhoubinbin@loongson.cn>
 <6d8d0d8d21e32e0577565158bc1c4960a92fb216.1692088166.git.zhoubinbin@loongson.cn>
 <20230815-fineness-lesser-d807c051dd36@spud>
 <CAMpQs4JY0=mdSvw64aMAk0Vq5qBcfvqzyXzscsdOhOS4vNuTwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="H6Mr/XGuntPlO9qn"
Content-Disposition: inline
In-Reply-To: <CAMpQs4JY0=mdSvw64aMAk0Vq5qBcfvqzyXzscsdOhOS4vNuTwA@mail.gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--H6Mr/XGuntPlO9qn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 17, 2023 at 02:16:13PM +0800, Binbin Zhou wrote:
> Hi Conor:
>=20
> Thanks for your reply.
>=20
> On Tue, Aug 15, 2023 at 10:13=E2=80=AFPM Conor Dooley <conor@kernel.org> =
wrote:
> >
> > On Tue, Aug 15, 2023 at 04:50:47PM +0800, Binbin Zhou wrote:
> > > Add Loongson SoC boards binding with DT schema format using json-sche=
ma.
> > >
> > > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > > ---
> > >  .../devicetree/bindings/loongarch/boards.yaml | 34 +++++++++++++++++=
++
> > >  1 file changed, 34 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/loongarch/board=
s.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/loongarch/boards.yaml =
b/Documentation/devicetree/bindings/loongarch/boards.yaml
> > > new file mode 100644
> > > index 000000000000..5092314b7a52
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/loongarch/boards.yaml
> > > @@ -0,0 +1,34 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/loongarch/boards.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Loongson SoC-based boards
> > > +
> > > +maintainers:
> > > +  - Binbin Zhou <zhoubinbin@loongson.cn>
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    const: '/'
> > > +  compatible:
> > > +    oneOf:
> > > +      - description: Loongson-2K0500 processor based boards
> > > +        items:
> > > +          - const: loongson,ls2k0500-ref
> > > +          - const: loongson,ls2k0500
> > > +
> > > +      - description: Loongson-2K1000 processor based boards
> > > +        items:
> > > +          - const: loongson,ls2k1000-ref
> > > +          - const: loongson,ls2k1000
> > > +
> > > +      - description: Loongson-2K2000 processor based boards
> > > +        items:
> > > +          - const: loongson,ls2k2000-ref
> > > +          - const: loongson,ls2k2000
> >
> > Do all of these SoCs just have a single reference/dev board?
>=20
> Yes, I have development boards for each Soc on hand now, and it has a
> relatively complete interface. My original idea was to use the
> development boards as examples to show you the Loongson-2K Soc.
> I'm sure more boards will be added in the future.

My reason for asking was that "-ref" is quite generic, but if there is
only one reference board produced by Loongson that's not a problem.

--H6Mr/XGuntPlO9qn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZN3d3QAKCRB4tDGHoIJi
0unuAP9L0k+AOLnCeI3ravVDEDl/lOldQUL5VUKqfTbKyzZBPgD9FlQ1Vr/zWE7x
6V4TqRop84HMj1MaxoqBB53+DVNAaQo=
=9Uxo
-----END PGP SIGNATURE-----

--H6Mr/XGuntPlO9qn--
