Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6850733EB6
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 08:31:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230233AbjFQGbA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 02:31:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243801AbjFQGa1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 02:30:27 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8824A3C0F
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 23:29:19 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-56fff21c2ebso18429517b3.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 23:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686983359; x=1689575359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nGsJ3GmkLm/SN/kLvTNcYuy0c+xYeJmxn3Y+T48Gt3o=;
        b=rcXqNIwnXiQ4MbL/Tlyq/wIM/fW5ttpoYim4O0noMUOso517SAJAKbM8p1b3l/qM7S
         DgZRBJlwJ93X34A6esm/UxEO3gcxECVyrxBEGvk9HwFIdaoqnYNG3wOj7itk4+szKtuL
         b2NNF1IcyGuThMrdcbD1bttPgGKajvjYz671WWDDci+FR6TCKXkkvFPeJuFOmiN+hNya
         /NbbZZ2JlpwKPms5fo9q7fy2QUf/nWUaOqIOKVoyKz3QHS+WWB1x80wLFyEykmFb9i71
         8QikWYYKaeJlXiPFD3vTZ8LBW7JO4NnBOYB+6LxdopXy6lJ/hLgoaE5gY722owFXwZi4
         xOIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686983359; x=1689575359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nGsJ3GmkLm/SN/kLvTNcYuy0c+xYeJmxn3Y+T48Gt3o=;
        b=XzafkJUF9cNJSE8WWsjPApsS1aSvwT80TCxZuc43E8PKqDASB9Wtx+nIvB0ucCZJJ6
         0w4wxy8+HQrt646zac0lWRc+Pgq/AugHZB9i/BZuheJJukZQk0t3XH4AakcGHPPOn3DM
         M0eMww1hH5QuSti1JHJTkNq7+TGPLl3WEUA4cNsblVuqfpHxeOCZlWsf+OItuQPM8i2r
         IUZCD+Vds+HBhfcoH7BKDxUe7pRmAYSFIugU01Q4YZG5l8AnmV+OxSdgT8lxHuUNEIb2
         1n0X62FGnMVQ/NvgB40MKOdp1xKw8eophz8A0kvtY4IPF5uiknxBhMtquyAisVCQG84Z
         LcuA==
X-Gm-Message-State: AC+VfDw5f6rpxnYS5FwxrzZoXKCCBD7d40qLwl5aLvv5K3QtwLpkHJF6
        GRTp/+tmKjPjVN1Jj1OSv1nBvHpzPmsa76BAfcTwNEs+5uw=
X-Google-Smtp-Source: ACHHUZ7QN2ySclaaaIyW0feGuNgYn7FOUItA15CKRwTqaaNdVI/VT2l1kKGrQAOuOAOaGaPgoF2CiTlThU+wG6o4dF8=
X-Received: by 2002:a81:4788:0:b0:55d:a9d7:521e with SMTP id
 u130-20020a814788000000b0055da9d7521emr4350517ywa.18.1686983358711; Fri, 16
 Jun 2023 23:29:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686882123.git.zhoubinbin@loongson.cn> <c1f86e5d1026937abda331ce564e5ee96b7114c7.1686882123.git.zhoubinbin@loongson.cn>
 <20230616-gallon-shrank-42613cd73666@wendy>
In-Reply-To: <20230616-gallon-shrank-42613cd73666@wendy>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Sat, 17 Jun 2023 14:29:06 +0800
Message-ID: <CAMpQs4J4hOAFaarv9O3u20czpNjeHfBoPHWOzY7Y_Zno0R3vYg@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: loongarch: Add CPU bindings for LoongArch
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 16, 2023 at 5:34=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Fri, Jun 16, 2023 at 02:10:38PM +0800, Binbin Zhou wrote:
> > Add the available CPUs in LoongArch binding with DT schema format using
> > json-schema.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../devicetree/bindings/loongarch/cpus.yaml   | 65 +++++++++++++++++++
> >  1 file changed, 65 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/loongarch/cpus.ya=
ml
> >
> > diff --git a/Documentation/devicetree/bindings/loongarch/cpus.yaml b/Do=
cumentation/devicetree/bindings/loongarch/cpus.yaml
> > new file mode 100644
> > index 000000000000..c3e2dba42c81
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/loongarch/cpus.yaml
> > @@ -0,0 +1,65 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/loongarch/cpus.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: LoongArch CPUs
> > +
> > +maintainers:
> > +  - Binbin Zhou <zhoubinbin@loongson.cn>
> > +
> > +description:
> > +  The device tree allows to describe the layout of CPUs in a system th=
rough
> > +  the "cpus" node, which in turn contains a number of subnodes (ie "cp=
u")
> > +  defining properties for every CPU.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - loongson,la264
> > +      - loongson,la364
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  device_type: true
> > +
> > +  clock-frequency:
> > +    description: The frequency of cpu in Hz.
>
> Why don't you just add a ref to the common cpu schema and use the
> standard properties for communicating clock frequencies?
> You then get the standard properties for l1 caches, power management,
> frequency scaling etc as a side effect.

Hi Conor:

Sorry, not sure if I understand correctly. Do the standard attributes
refer to the following:

power-domains =3D <>
clocks =3D <>
i-cache-size =3D <>
d-cache-size =3D <>
next-level-cache =3D <>

Thanks.
Binbin

>
> Cheers,
> Conor.
