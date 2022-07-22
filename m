Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 465AD57E24E
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 15:29:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229605AbiGVN3z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 09:29:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229832AbiGVN3y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 09:29:54 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 966C38C74D
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 06:29:53 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-2ef5380669cso47428887b3.9
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 06:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NUEwpokz5cbJ8RSQqx5/cbnNRF48rENjL4xUOJ6VUFE=;
        b=gOvu7warBaC26DRm3mfHskLQUqJOYk5Pw76zMxV2yShvF3SNAUql0Je0uFcrQ4Ei2T
         0DqtTzOzla1Z3ozdVmSwuo9bOio5uGsZ2Zceaxj6yQfA1YQRZOJBH2qwG4IbABWobJvS
         VMvXica6NTj4tX1MTD8uVJf0QF2v8y+A4bCs5wYL3ZgiPs/m/tU4i1RbeEA+DQGAaOw+
         NWzeSsnfFTXg4aaYWShTOG3VqqWBfSEVP/gzLApm0hydN27km4NeiodxnK5VOQgM3V5J
         zkkNJMRWwfVlfSM0pY0rJsxwKq3+J+twq/ErFd7Tp7OY7ZROFNt6ojpkErHZYRQuozwm
         gDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NUEwpokz5cbJ8RSQqx5/cbnNRF48rENjL4xUOJ6VUFE=;
        b=MpXLo42BFYNHQ8JnVG+dWsTyjAtOToitsl8b3IWuGDmQ8j//QKDRai1Py2lMLkkgNY
         LnGdjvjc4wD4BugYFfXNBtoEQi+Sf8SwfzcTNR/Vwt0q4DQlqhmAHqqdx+nDeRlaKXeu
         63Yo5bE/EjDNRTYMOZpx0iXaoX5CjiMgAMDA5QrygFfN/kjOO4I8DpzbgjDnYXDfVVdj
         RzgvQBR5Ihg+CvPog5F12yh46S0eHyUlVudLVwzWEp1LhEEAHh7kfl5EbhcD1yi2eaSH
         OdEpK70UEgfybRaf/QUK13p8pGKa0+vujymN4BviuRjjeEBQp3FP1x8Dk5info5lPgQS
         pgdg==
X-Gm-Message-State: AJIora/sVB9tB4/FiCdg7r7hDg0DyfsqnGvmi/8hVoFFnau07Gb5/pw1
        c2zuafGnPsJjigJTfM3v9rTnGCAmD13/sFQzonk=
X-Google-Smtp-Source: AGRyM1txJ6sfLwbvOLY71sJr1N4xBQ+Va/u9YqMO6PNA25P2ZQs7px+GoHqNA4WQXSNQz+VAiVNHgzfD0uQHWLHl79k=
X-Received: by 2002:a81:5d55:0:b0:31c:dce7:96c9 with SMTP id
 r82-20020a815d55000000b0031cdce796c9mr479524ywb.519.1658496592661; Fri, 22
 Jul 2022 06:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
 <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org> <CA+V-a8vp7agGmHEJyLSLm973ddOs-cD21jRbwFnjSfc7DxrjrQ@mail.gmail.com>
 <CAL_JsqJCKDdUoBtiC7bLAstTHFP_gdHtCf+NWKy2zbXG_Z153w@mail.gmail.com>
 <CA+V-a8tYNvQk19ZP_oq=OeV2K5X=7E+Mq6Cin5ZVT6cBt=_yBw@mail.gmail.com>
 <CAL_JsqJELtWn=PwxMU=9VCUTwaZMk=oyfJo7O7HbnFB-MfcHAQ@mail.gmail.com> <CA+V-a8sGPRQQJ4jZ4pSObyHi37RA6Fc44-W5=2AYwA3Hs_QQ+g@mail.gmail.com>
In-Reply-To: <CA+V-a8sGPRQQJ4jZ4pSObyHi37RA6Fc44-W5=2AYwA3Hs_QQ+g@mail.gmail.com>
From:   "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date:   Fri, 22 Jul 2022 14:29:25 +0100
Message-ID: <CA+V-a8uUt=t9SZLMW4VtX4Dwk9m5bij5JwOCMSS2Nzxvv=fpZA@mail.gmail.com>
Subject: Re: dtbs_check issue
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 22, 2022 at 12:08 PM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> On Thu, Jul 21, 2022 at 11:24 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Thu, Jul 21, 2022 at 4:18 PM Lad, Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > Hi Rob,
> > >
> > > On Thu, Jul 21, 2022 at 5:57 PM Rob Herring <robh+dt@kernel.org> wrote:
> > > >
> > > > On Thu, Jul 21, 2022 at 9:23 AM Lad, Prabhakar
> > > > <prabhakar.csengg@gmail.com> wrote:
> > > > >
> > > > > Hi Krzysztof,
> > > > >
> > > > > On Thu, Jul 21, 2022 at 4:12 PM Krzysztof Kozlowski
> > > > > <krzysztof.kozlowski@linaro.org> wrote:
> > > > > >
> > > > > > On 21/07/2022 17:07, Lad, Prabhakar wrote:
> > > > > > > Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> > > > > > > dtbs_check failures.
> > > > > > >
> > > > > > > Any pointers on how I can get around this issue?
> > > > > >
> > > > > > Few months ago:
> > > > > > https://lore.kernel.org/linux-devicetree/cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org/
> > > > > >
> > > > > Thanks for the link.
> > > > >
> > > > > > Although Rob admitted in the thread this is in general allowed
> > > > > > configuration, to me it is still confusing - the left-most compatible is
> > > > > > not the most specific. Non obvious, confusing and it seems dtschema does
> > > > > > not support it?
> > > > > >
> > > > > It looks like dtschema does not support it.
> > > >
> > > > The issue is the same as licensed IP where we have a generic
> > > > compatible and per licensee compatibles in separate schemas. The
> > > > solution anytime a compatible exists in more than 1 schema is a custom
> > > > 'select' which excludes that compatible. That would be messy here
> > > > though due to the large number of compatibles. Perhaps we could
> > > > instead merge a custom select with the default generated one. Then the
> > > > schema would just need:
> > > >
> > > > select:
> > > >   not:
> > > >     properties:
> > > >       contains:
> > > >         const: renesas,smarc-evk
> > > >
Being a novice here with the select, I added the below to ignore the
arm schema if its the RISC-V board:

diff --git a/Documentation/devicetree/bindings/arm/renesas.yaml
b/Documentation/devicetree/bindings/arm/renesas.yaml
index ff80152f092f..77e78136bfce 100644
--- a/Documentation/devicetree/bindings/arm/renesas.yaml
+++ b/Documentation/devicetree/bindings/arm/renesas.yaml
@@ -9,6 +9,16 @@ title: Renesas SH-Mobile, R-Mobile, and R-Car
Platform Device Tree Bindings
 maintainers:
   - Geert Uytterhoeven <geert+renesas@glider.be>

+# We want ignore this schema if the board is of RISC-V arch
+select:
+  not:
+    properties:
+      compatible:
+        contains:
+          const: renesas,r9a07g043f1
+    required:
+      - compatible
+
 properties:
   $nodename:
     const: '/'

But when I run the dt_binding_check, I get the below issues:

prasmi@prasmi:~/work/linux$ make ARCH=riscv
CROSS_COMPILE=riscv64-linux-gnu- dt_binding_check
  DTEX    Documentation/devicetree/bindings/arm/renesas.example.dts
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTC     Documentation/devicetree/bindings/arm/renesas.example.dtb
  CHECK   Documentation/devicetree/bindings/arm/renesas.example.dtb
/home/prasmi/work/linux/Documentation/devicetree/bindings/arm/renesas.example.dtb:
/: compatible: 'oneOf' conditional failed, one must be fixed:
    ['foo'] is too short
    /home/prasmi/work/linux/Documentation/devicetree/bindings/arm/renesas.example.dtb:
/: compatible: 'oneOf' conditional failed, one must be fixed:
        ['foo'] is too short
        'shimafuji,kingfisher' was expected
    'foo' is not one of ['renesas,kzm9d']
    'foo' is not one of ['renesas,genmai', 'renesas,gr-peach',
'renesas,rskrza1']
    'foo' is not one of ['renesas,rza2mevb']
    'foo' is not one of ['renesas,kzm9g']
    'foo' is not one of ['renesas,ape6evm']
    'foo' is not one of ['renesas,armadillo800eva']
    'foo' is not one of ['iwave,g21m']
    'foo' is not one of ['iwave,g21d']
    'foo' is not one of ['iwave,g20d']
    'foo' is not one of ['iwave,g20m', 'renesas,sk-rzg1m']
    'foo' is not one of ['iwave,g20m']
    'foo' is not one of ['iwave,g22m', 'renesas,sk-rzg1e']
    'iwave,g22d' was expected
    'foo' is not one of ['iwave,g23s']
    'foo' is not one of ['hoperun,hihope-rzg2m', 'beacon,beacon-rzg2m']
    'foo' is not one of ['hoperun,hihope-rzg2-ex']
    'foo' is not one of ['beacon,beacon-rzg2n', 'hoperun,hihope-rzg2n']
    'foo' is not one of ['si-linux,cat874']
    'foo' is not one of ['si-linux,cat875']
    'foo' is not one of ['beacon,beacon-rzg2h', 'hoperun,hihope-rzg2h']
    'foo' is not one of ['renesas,bockw']
    'foo' is not one of ['renesas,marzen']
    'foo' is not one of ['renesas,lager', 'renesas,stout']
    'foo' is not one of ['renesas,henninger', 'renesas,koelsch',
'renesas,porter']
    'foo' is not one of ['renesas,blanche', 'renesas,wheat']
    'foo' is not one of ['renesas,gose']
    'foo' is not one of ['renesas,alt', 'renesas,silk']
    'foo' is not one of ['renesas,h3ulcb', 'renesas,salvator-x',
'renesas,salvator-xs']
    'foo' is not one of ['renesas,m3ulcb', 'renesas,salvator-x',
'renesas,salvator-xs']
    'foo' is not one of ['renesas,m3ulcb', 'renesas,salvator-xs']
    'foo' is not one of ['renesas,m3nulcb', 'renesas,salvator-x',
'renesas,salvator-xs']
    'foo' is not one of ['renesas,eagle', 'renesas,v3msk']
    'foo' is not one of ['renesas,condor', 'renesas,v3hsk']
    'foo' is not one of ['renesas,ebisu']
    'foo' is not one of ['renesas,draak']
    'foo' is not one of ['renesas,falcon-cpu']
    'foo' is not one of ['renesas,falcon-breakout']
    'foo' is not one of ['renesas,spider-cpu']
    'foo' is not one of ['renesas,spider-breakout']
    'foo' is not one of ['renesas,white-hawk-cpu']
    'foo' is not one of ['renesas,white-hawk-breakout']
    'foo' is not one of ['renesas,h3ulcb', 'renesas,salvator-xs']
    'foo' is not one of ['renesas,m3nulcb', 'renesas,salvator-xs']
    'foo' is not one of ['renesas,rzn1d400-db']
    'foo' is not one of ['renesas,smarc-evk']
    'foo' is not one of ['renesas,rzv2mevk2']
    From schema:
/home/prasmi/work/linux/Documentation/devicetree/bindings/arm/renesas.yaml
  DTC     Documentation/devicetree/bindings/riscv/renesas.example.dtb
  CHECK   Documentation/devicetree/bindings/riscv/renesas.example.dtb
/home/prasmi/work/linux/Documentation/devicetree/bindings/riscv/renesas.example.dtb:
/: compatible: 'oneOf' conditional failed, one must be fixed:
    ['foo'] is too short
    /home/prasmi/work/linux/Documentation/devicetree/bindings/riscv/renesas.example.dtb:
/: compatible: 'oneOf' conditional failed, one must be fixed:
        ['foo'] is too short
        'shimafuji,kingfisher' was expected
    'foo' is not one of ['renesas,kzm9d']
    'foo' is not one of ['renesas,genmai', 'renesas,gr-peach',
'renesas,rskrza1']
    'foo' is not one of ['renesas,rza2mevb']
    'foo' is not one of ['renesas,kzm9g']
    'foo' is not one of ['renesas,ape6evm']
    'foo' is not one of ['renesas,armadillo800eva']
    'foo' is not one of ['iwave,g21m']
    'foo' is not one of ['iwave,g21d']
    'foo' is not one of ['iwave,g20d']
    'foo' is not one of ['iwave,g20m', 'renesas,sk-rzg1m']
    'foo' is not one of ['iwave,g20m']
    'foo' is not one of ['iwave,g22m', 'renesas,sk-rzg1e']
    'iwave,g22d' was expected
    'foo' is not one of ['iwave,g23s']
    'foo' is not one of ['hoperun,hihope-rzg2m', 'beacon,beacon-rzg2m']
    'foo' is not one of ['hoperun,hihope-rzg2-ex']
    'foo' is not one of ['beacon,beacon-rzg2n', 'hoperun,hihope-rzg2n']
    'foo' is not one of ['si-linux,cat874']
    'foo' is not one of ['si-linux,cat875']
    'foo' is not one of ['beacon,beacon-rzg2h', 'hoperun,hihope-rzg2h']
    'foo' is not one of ['renesas,bockw']
    'foo' is not one of ['renesas,marzen']
    'foo' is not one of ['renesas,lager', 'renesas,stout']
    'foo' is not one of ['renesas,henninger', 'renesas,koelsch',
'renesas,porter']
    'foo' is not one of ['renesas,blanche', 'renesas,wheat']
    'foo' is not one of ['renesas,gose']
    'foo' is not one of ['renesas,alt', 'renesas,silk']
    'foo' is not one of ['renesas,h3ulcb', 'renesas,salvator-x',
'renesas,salvator-xs']
    'foo' is not one of ['renesas,m3ulcb', 'renesas,salvator-x',
'renesas,salvator-xs']
    'foo' is not one of ['renesas,m3ulcb', 'renesas,salvator-xs']
    'foo' is not one of ['renesas,m3nulcb', 'renesas,salvator-x',
'renesas,salvator-xs']
    'foo' is not one of ['renesas,eagle', 'renesas,v3msk']
    'foo' is not one of ['renesas,condor', 'renesas,v3hsk']
    'foo' is not one of ['renesas,ebisu']
    'foo' is not one of ['renesas,draak']
    'foo' is not one of ['renesas,falcon-cpu']
    'foo' is not one of ['renesas,falcon-breakout']
    'foo' is not one of ['renesas,spider-cpu']
    'foo' is not one of ['renesas,spider-breakout']
    'foo' is not one of ['renesas,white-hawk-cpu']
    'foo' is not one of ['renesas,white-hawk-breakout']
    'foo' is not one of ['renesas,h3ulcb', 'renesas,salvator-xs']
    'foo' is not one of ['renesas,m3nulcb', 'renesas,salvator-xs']
    'foo' is not one of ['renesas,rzn1d400-db']
    'foo' is not one of ['renesas,smarc-evk']
    'foo' is not one of ['renesas,rzv2mevk2']
    From schema:
/home/prasmi/work/linux/Documentation/devicetree/bindings/arm/renesas.yaml

Any pointers on what I'm missing.

Cheers,
Prabhakar
