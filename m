Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 022D477F06D
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 08:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348158AbjHQGQc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 02:16:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348142AbjHQGQ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 02:16:27 -0400
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A1DB1FCE
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 23:16:26 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-58c6b6b4953so17468097b3.3
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 23:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692252985; x=1692857785;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p301VUbckwJM4qtfIHklyJ3pzB8D4EWoaznI1J4TO6g=;
        b=XwvY1WlTgY+aLGfexF9UUuHaEoZPpGT61xvfkNw0t+4bHJPfutCIptSR6LDmWTGCkp
         BQbxut11IvbwDL+jq3vuJRQqMKrk5GFnlpg/NkXKuT35V++HkoQem2yA3HQ+HxFduv2s
         jzgBGkI2qVTvciTdp90LrsVdglDw3x5rvJnWPQyUGmhzkFB/s971WzCkPyOZzC50PplQ
         fa6mBhawRZTAKkbem2VmC2Rkk3XIoJoXMskDZBt66dE58y8orOhmyZyqIxCFQwhTuY0+
         LSyNChU5/lkybXTcxTyk59DTT1i3R5OaB9YJFSOwa2nBODVogKeNtTdKE9uR+o2YvIwW
         qwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692252985; x=1692857785;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p301VUbckwJM4qtfIHklyJ3pzB8D4EWoaznI1J4TO6g=;
        b=VCaUNUeiylSf0zfR9l0xamtm98vJLZATLdyoCMRpelGSZgaI/iUEalpwhFa7z4JBUZ
         x5ok1iCXFZQBvtN7if82imFvwfvDEf2fB4ncK2F9PoZGHOvvt6cOIyg50Fsb/Q3oMgqI
         C3aFXhCoisuoLLleZTBNrVEiHjJDaSNqX7suvEt5DahwDSELNpkkpsZE7L4TBtvSOiE8
         crKqsHpdOIrHa32jcVKvZ8UPdtpXZSNjIsgSk5TX6KgjjSddIPHe9BsP7XiZDwwBk/Sr
         oaIL+vvae02TOaqAAofOZ2d2MjdCmdqcAmJF2wOuHCmFFzWIqim3iN6H512aMUKqpK98
         kpPQ==
X-Gm-Message-State: AOJu0YzJ6X5fl9nwj848RXRQl5tFrP9LNQInOOAhsbFcgq/Xs/3fi6vq
        1Wn5bVsv7cXTI6AiSDn1EmBCvyOSiNUeh1r247w=
X-Google-Smtp-Source: AGHT+IGw5Mt8Ez7wW5rftElo8mirCx2NKA7aun14TEsgoSCgntJDVl0XybM19ZeITpu01clYjSNjCASxCKGWYCLNEt8=
X-Received: by 2002:a0d:ea01:0:b0:56d:4d34:20c with SMTP id
 t1-20020a0dea01000000b0056d4d34020cmr4116837ywe.37.1692252985341; Wed, 16 Aug
 2023 23:16:25 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692088166.git.zhoubinbin@loongson.cn> <6d8d0d8d21e32e0577565158bc1c4960a92fb216.1692088166.git.zhoubinbin@loongson.cn>
 <20230815-fineness-lesser-d807c051dd36@spud>
In-Reply-To: <20230815-fineness-lesser-d807c051dd36@spud>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Thu, 17 Aug 2023 14:16:13 +0800
Message-ID: <CAMpQs4JY0=mdSvw64aMAk0Vq5qBcfvqzyXzscsdOhOS4vNuTwA@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] dt-bindings: loongarch: Add Loongson SoC boards compatibles
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
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor:

Thanks for your reply.

On Tue, Aug 15, 2023 at 10:13=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Tue, Aug 15, 2023 at 04:50:47PM +0800, Binbin Zhou wrote:
> > Add Loongson SoC boards binding with DT schema format using json-schema=
.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../devicetree/bindings/loongarch/boards.yaml | 34 +++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/loongarch/boards.=
yaml
> >
> > diff --git a/Documentation/devicetree/bindings/loongarch/boards.yaml b/=
Documentation/devicetree/bindings/loongarch/boards.yaml
> > new file mode 100644
> > index 000000000000..5092314b7a52
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/loongarch/boards.yaml
> > @@ -0,0 +1,34 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/loongarch/boards.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Loongson SoC-based boards
> > +
> > +maintainers:
> > +  - Binbin Zhou <zhoubinbin@loongson.cn>
> > +
> > +properties:
> > +  $nodename:
> > +    const: '/'
> > +  compatible:
> > +    oneOf:
> > +      - description: Loongson-2K0500 processor based boards
> > +        items:
> > +          - const: loongson,ls2k0500-ref
> > +          - const: loongson,ls2k0500
> > +
> > +      - description: Loongson-2K1000 processor based boards
> > +        items:
> > +          - const: loongson,ls2k1000-ref
> > +          - const: loongson,ls2k1000
> > +
> > +      - description: Loongson-2K2000 processor based boards
> > +        items:
> > +          - const: loongson,ls2k2000-ref
> > +          - const: loongson,ls2k2000
>
> Do all of these SoCs just have a single reference/dev board?

Yes, I have development boards for each Soc on hand now, and it has a
relatively complete interface. My original idea was to use the
development boards as examples to show you the Loongson-2K Soc.
I'm sure more boards will be added in the future.

Thanks.
Binbin
>
> > +
> > +additionalProperties: true
> > +
> > +...
> > --
> > 2.39.3
> >
