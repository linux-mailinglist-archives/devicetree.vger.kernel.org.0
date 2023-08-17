Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57A3677F073
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 08:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348199AbjHQGZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 02:25:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348194AbjHQGZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 02:25:12 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36D032700
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 23:25:10 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-589addee1c1so67922827b3.3
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 23:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692253509; x=1692858309;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EHlNaNiXCGjdkVNY7zKYgrzV6TCn/yaLYGyCQAJmbHc=;
        b=Mg9k44hSYXoG1IkiDNjgxk6ktFjqqHBaCXh+GMTlzf3gyLoKln4TaPiUucRUu3dP40
         icWZVJxYa2bVcBS+fv8P20FahrY0Kf27Wim5m1+VpnF4SOrMw6+a82WAJOU66vflrkGh
         t1MxGGms2twgsaiKcpsKXL+g+vkmzd62EBtDfY2Vl+MxKFVZ0fxDxmSY0ePyQpzkvqV8
         e6gPH7iBXPWaUL7K6yuOaLz+WQdmlTYi2m+YQZ/XaL6Um8CIF93EZHy0MWsOpzGCQCk1
         r72+MSsdgcPEmzv7IAh0CyEUCHbKTyAQyn6/ZzvUjXY5GISHW/xHXBZ5FNYTSQS9WXg6
         5hQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692253509; x=1692858309;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EHlNaNiXCGjdkVNY7zKYgrzV6TCn/yaLYGyCQAJmbHc=;
        b=Ygq1UWPVH1n6rAB9t6qlWGDESC+1+l1xp2mbgL2FqCWLdkf9xAse50VseACqCgdwRX
         M0U1aOpRdMcL9U15qi5qHAClIW6KP9NvKSa1qmeQOpnPwL04SA74TR37/n83cq4xjpXA
         rZCbU838iSVlIRzZPuJy4oM644soPd0MTpaQReIPGynfz6vz9TAkKUX5yLCJJqbo7881
         HR4nBr29mrjq5DLb4OdHBtSqaZCKMo5aWT8lgK3VyjvgF+/s60q0sSW80wh79/6xJJ4N
         c5eGwdvMWrVle9wUtCoI2yihv93bYpF79Cs7JyhVFmbzbrHT6pDxuJVLXKGXGbZwLpwe
         5+ew==
X-Gm-Message-State: AOJu0YzxyHVfw6GoEwT3v338CAEILQ2cHs7uKBqIgam1iF88vpOqRDAh
        9wj2J+V8JLLd7YVYRSJog+l8LODWLMsqjRq7LDs=
X-Google-Smtp-Source: AGHT+IG7Yxx1Nla609UJbE/TOrU7OceknPjbG8TjdeXoM7G5cDVNGAYS62LYL4fA7fqpUs3c3rb570Ag+u62L045aJU=
X-Received: by 2002:a0d:ead7:0:b0:58c:4e9f:4ed4 with SMTP id
 t206-20020a0dead7000000b0058c4e9f4ed4mr4229596ywe.42.1692253509396; Wed, 16
 Aug 2023 23:25:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692088166.git.zhoubinbin@loongson.cn> <6d8d0d8d21e32e0577565158bc1c4960a92fb216.1692088166.git.zhoubinbin@loongson.cn>
 <df40afe9-2596-27db-bcbb-6d57f8fd92c4@linaro.org>
In-Reply-To: <df40afe9-2596-27db-bcbb-6d57f8fd92c4@linaro.org>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Thu, 17 Aug 2023 14:24:57 +0800
Message-ID: <CAMpQs4Kas9Bg-kdX5yibyr8mOYRphM259Mj3Tx-8=g4j3FXViw@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] dt-bindings: loongarch: Add Loongson SoC boards compatibles
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof:

Thanks for your reply.

On Tue, Aug 15, 2023 at 10:49=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 15/08/2023 10:50, Binbin Zhou wrote:
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
> This probably is a sign all your bindings are using a bogus compatible.
> You were using compatibles like loongson,ls2k-clk so your SoC cannot be
> ls2k2000... or your compatible is bogus. The same for:
> loongson,ls2k-pm, loongson,ls2k-dwmac, loongson,ls2k-i2c,
> loongson,ls2k-chipid, loongson,ls2k-gpio
>

I'm not sure I understand correctly, are you saying I should rename
all these ls2k-xx compatibles to Soc-based compatible?

For example, loongson,ls2k-i2c should be renamed to something like this:
loongson,ls2k0500-i2c, loongson,ls2k-i2c
loongson,ls2k1000-i2c, loongson,ls2k-i2c
loongson,ls2k2000-i2c, loongson,ls2k-i2c
Even if their driver code is no different.

Thanks.
Binbin

> Best regards,
> Krzysztof
>
