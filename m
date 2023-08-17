Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 329FB77F25F
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 10:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349064AbjHQIq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 04:46:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349085AbjHQIqS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 04:46:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AE7A1BE7
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 01:46:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A7D6C61255
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 08:46:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78F2EC433C7;
        Thu, 17 Aug 2023 08:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692261976;
        bh=jf+wqer+KvpRWJ83WI3GJr55MfutnzEKmb14T+s/nMk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=crh24dP2yGde/Lwty1AGZ7ELIyMosXzBUHnbrjqGwH/GUoJ696G7Dvl7iGmfkEX1k
         R1HQydDhX2XY/9t6EkiqAV4N9cILeKj8XDEn8XmyFGm6lzk3/ZA1twwgLqFMmrnRNw
         GMAOsBhojM0cR00CHJ5SzukzClR2LX7uQkjkgDtcG6NI2sePm7/UphNc79A01SXk/y
         +xoZm9G1wUqayGVTWdE0BeNgnsgkyNKluasyh8qHjeusLgDrY5u7oo8IlJiBvYqlXN
         vkXoAkp89kZUg7SCr0DCUeFXTnng7Jb6WwsCzUdPwzgstU1ATU4ZIBOuobreB2lRsJ
         CGlHzHJnuP65g==
Date:   Thu, 17 Aug 2023 09:46:11 +0100
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
Message-ID: <20230817-zestfully-regulate-0c3d2f2c8639@spud>
References: <cover.1692088166.git.zhoubinbin@loongson.cn>
 <6d8d0d8d21e32e0577565158bc1c4960a92fb216.1692088166.git.zhoubinbin@loongson.cn>
 <20230815-fineness-lesser-d807c051dd36@spud>
 <CAMpQs4JY0=mdSvw64aMAk0Vq5qBcfvqzyXzscsdOhOS4vNuTwA@mail.gmail.com>
 <20230817-snowfield-public-af7228b71c3f@spud>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Nh194gtvCFg142Rc"
Content-Disposition: inline
In-Reply-To: <20230817-snowfield-public-af7228b71c3f@spud>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Nh194gtvCFg142Rc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 17, 2023 at 09:44:16AM +0100, Conor Dooley wrote:
> On Thu, Aug 17, 2023 at 02:16:13PM +0800, Binbin Zhou wrote:
> > Hi Conor:
> >=20
> > Thanks for your reply.
> >=20
> > On Tue, Aug 15, 2023 at 10:13=E2=80=AFPM Conor Dooley <conor@kernel.org=
> wrote:
> > >
> > > On Tue, Aug 15, 2023 at 04:50:47PM +0800, Binbin Zhou wrote:
> > > > Add Loongson SoC boards binding with DT schema format using json-sc=
hema.
> > > >
> > > > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > > > ---
> > > >  .../devicetree/bindings/loongarch/boards.yaml | 34 +++++++++++++++=
++++
> > > >  1 file changed, 34 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/loongarch/boa=
rds.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/loongarch/boards.yam=
l b/Documentation/devicetree/bindings/loongarch/boards.yaml
> > > > new file mode 100644
> > > > index 000000000000..5092314b7a52
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/loongarch/boards.yaml
> > > > @@ -0,0 +1,34 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/loongarch/boards.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Loongson SoC-based boards
> > > > +
> > > > +maintainers:
> > > > +  - Binbin Zhou <zhoubinbin@loongson.cn>
> > > > +
> > > > +properties:
> > > > +  $nodename:
> > > > +    const: '/'
> > > > +  compatible:
> > > > +    oneOf:
> > > > +      - description: Loongson-2K0500 processor based boards
> > > > +        items:
> > > > +          - const: loongson,ls2k0500-ref
> > > > +          - const: loongson,ls2k0500
> > > > +
> > > > +      - description: Loongson-2K1000 processor based boards
> > > > +        items:
> > > > +          - const: loongson,ls2k1000-ref
> > > > +          - const: loongson,ls2k1000
> > > > +
> > > > +      - description: Loongson-2K2000 processor based boards
> > > > +        items:
> > > > +          - const: loongson,ls2k2000-ref
> > > > +          - const: loongson,ls2k2000
> > >
> > > Do all of these SoCs just have a single reference/dev board?
> >=20
> > Yes, I have development boards for each Soc on hand now, and it has a
> > relatively complete interface. My original idea was to use the
> > development boards as examples to show you the Loongson-2K Soc.
> > I'm sure more boards will be added in the future.
>=20
> My reason for asking was that "-ref" is quite generic, but if there is
> only one reference board produced by Loongson that's not a problem.

Whoops, I forgot to add this:
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.


--Nh194gtvCFg142Rc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZN3eUwAKCRB4tDGHoIJi
0haXAQD/gVN77attUS1vZPtQAeKHfpK6zHZtijfW1P0pAs2XoAEAmcU+jxbrwAyS
LWGLRkk0bqlOdAsatGutu0BTlQfFSgY=
=75xQ
-----END PGP SIGNATURE-----

--Nh194gtvCFg142Rc--
