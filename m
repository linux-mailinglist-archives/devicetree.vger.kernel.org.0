Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1546177DA8A
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 08:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240586AbjHPGiY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 02:38:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242154AbjHPGh7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 02:37:59 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B76610E5
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:37:57 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-589e0eef06dso30702557b3.2
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692167876; x=1692772676;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oyq+MCi5gf26UKktUdy52L07nCJdNsh2cPkbWhzrE2I=;
        b=GUkbxvYs5PPQrj32MOToKahzKzzMtsMQMA63OH5630JyhiQtCnU3IhZ2WQTRivED6q
         IrIsvk8Z8o3e3+CZ6AmBdr0e2/BkGoIpxwJTHX+C+kO8j64c25oQQxEgg3dr0bFdZOk1
         WpOKCze0WgxcGLwm6vKx1b8OGmBCdvWePEkZ5mPPRjX4iL8Od0I+wTWWxwDbx+iK1WmK
         ujmFaXjU1d9YGgOLkDa0tYhtB53X3CigvgGBWfPVtlPsIMTGYPiBfjG/1riw207Qj0fO
         93vytJLXL88mnRN3pUsxOtbL5ni8Yz0o5YqJJx/8t5p54tVzwaZoycawMhXW315fdA5P
         g6JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692167876; x=1692772676;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oyq+MCi5gf26UKktUdy52L07nCJdNsh2cPkbWhzrE2I=;
        b=Y0UzPzSSj3NTc3BpZmvEFakw68hqJqMA4BGvw9zjElxciiR7/FfdHwYZVMCi7EZhXJ
         CJVQrcqUf5x9Gd4+gKOXO1Phme5q108etlF2shoDoHAVhNP9XRnK5G/wK0rx06V4b431
         B5nBw70bs9afrLeIb3cHyHAK8OotuD2YZtpPjReTwH+c4xei2mqCX0ZqO0to26KH+dFE
         5G0vYfu4D9JbGwZvPY6SMUls322R2sRcM+/TTIF2bp83l0CDwd7T847DvIt+osj6oeTy
         KTOxM2tZw6kB/dWXoCwvZWDu5PEI3rHV9ECoyxDONK05Lq1FpTKYq7YA51TJow/5rvSz
         Pk7Q==
X-Gm-Message-State: AOJu0YxzO6r0YBcansJE4fwTTafJZrylqC+Pp+RMTt7ecO/bZRE5XhB4
        KOZ+SKcsXTDsPYGgHpJORKgC9DQedvSqIT8ATso=
X-Google-Smtp-Source: AGHT+IHBX41feJrCCAMO33aQf83Ek++jKRUuvmWYrkluPqTfNNiAumWmuzrrgwS34zjNlGu05rFEqtNZt1ms+JEYYDw=
X-Received: by 2002:a0d:e253:0:b0:584:61df:45e8 with SMTP id
 l80-20020a0de253000000b0058461df45e8mr835069ywe.13.1692167876358; Tue, 15 Aug
 2023 23:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692088166.git.zhoubinbin@loongson.cn> <0e70f7d95104fc9d0a8038c3f0652f5fdfafa4d0.1692088166.git.zhoubinbin@loongson.cn>
 <20230815-aversion-shore-7ba847f2606e@spud>
In-Reply-To: <20230815-aversion-shore-7ba847f2606e@spud>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Wed, 16 Aug 2023 14:37:43 +0800
Message-ID: <CAMpQs4+aeD-3oh9qNbGjOTiMc6zE6N6LPzv+5tZyrLNgH06jtQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: loongarch: Add CPU bindings for LoongArch
To:     Conor Dooley <conor@kernel.org>
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
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor:

Thanks for the reply.

On Tue, Aug 15, 2023 at 10:07=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Tue, Aug 15, 2023 at 04:50:46PM +0800, Binbin Zhou wrote:
> > Add the available CPUs in LoongArch binding with DT schema format using
> > json-schema.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../devicetree/bindings/loongarch/cpus.yaml   | 60 +++++++++++++++++++
> >  1 file changed, 60 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/loongarch/cpus.ya=
ml
> >
> > diff --git a/Documentation/devicetree/bindings/loongarch/cpus.yaml b/Do=
cumentation/devicetree/bindings/loongarch/cpus.yaml
> > new file mode 100644
> > index 000000000000..ee3fe09e53dc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/loongarch/cpus.yaml
> > @@ -0,0 +1,60 @@
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
> > +  This document describes the list of LoongArch CPU cores that support=
 FDT,
> > +  it describe the layout of CPUs in a system through the "cpus" node.
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
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  device_type: true
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +
> > +additionalProperties: false
>
> How come you didn't add the reference to the common cpu schema?

Do you mean:
allOf:
  - $ref: /schemas/cpu.yaml#

Sorry, the file started out as a copy of mips/arm and then the related
content, really didn't notice that part.
I will check again.

Also, shouldn't "additionalProperties: false" be changed to
"unevaluatedProperties: false" synchronously?

Thanks.
Binbin
>
> Thanks,
> Conor.
>
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/loongson,ls2k-clk.h>
> > +
> > +    cpus {
> > +        #size-cells =3D <0>;
> > +        #address-cells =3D <1>;
> > +
> > +        cpu@0 {
> > +            compatible =3D "loongson,la264";
> > +            device_type =3D "cpu";
> > +            reg =3D <0>;
> > +            clocks =3D <&clk LOONGSON2_NODE_CLK>;
> > +        };
> > +
> > +        cpu@1 {
> > +            compatible =3D "loongson,la264";
> > +            device_type =3D "cpu";
> > +            reg =3D <1>;
> > +            clocks =3D <&clk LOONGSON2_NODE_CLK>;
> > +        };
> > +    };
> > +
> > +...
> > --
> > 2.39.3
> >
