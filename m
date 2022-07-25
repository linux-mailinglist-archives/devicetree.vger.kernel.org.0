Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D6DD57FCD0
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 12:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232524AbiGYKC1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 06:02:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229633AbiGYKCZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 06:02:25 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F9F217048
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:02:24 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id i14so19190442yba.1
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dFfQ49c5Y/ycsNvsJjP+kLOLcAjWTBTXvnC/4rK3VNc=;
        b=NgVtBP9TktxnZxPhcA9DKYHVri29BE+EE2NoOwcKc8NHBEs9hNgQWZRtzf9M9rYm4C
         jiFDELHs40o9i7cvvhwE8dpT26rjZtwsBPbvLAObKVPFcMIRKQDqtTKSOClrzJgvRmRg
         OSLHQTd0aaDke5FyeRUy33x3e/JqVgIXYi9i+LowtbThT4MpHxTTBvnupvUktyauJTiZ
         xMbvvpH4Lu5bedgs/Fk0Ko5vpV75BW9fypPVUPPUQgzLWBug62MHNFyX1X70+fLqNa3f
         JPJ3SOWMZqUQoV01GX3Iz8qKne50PF9foFUm/nBSIf96Pfl/9pYnHCqcMpcrka7LjcTa
         RSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dFfQ49c5Y/ycsNvsJjP+kLOLcAjWTBTXvnC/4rK3VNc=;
        b=NU7+2Od7D+AScXE43U6uTBlg52Nxt1Q4Z/9zADVoRYNRpHZVUQ5ruNlfznaEvweCYD
         RO6NBCWoq2xs4RrW5QL9GSBEC/1SkQg4xlHuQSzPXnsGeTJhm3Try/9z+x35OGw83w8A
         8V49ET1ixdP99eOw2xcpeM7kWKadkMyWaXDbrKvqOkjCTdf2MgM4ye976n6Ze2/i82N5
         CEu5x9IwZjIPhn/BR5pHg2b3KlXy2b7ubsFoFN5Q0SDoWjjm0NkONybyOBwbQLPoHC4/
         FnbOrGAeYdMYYcM/HXkqLWGH7MwU6GFAA/g7owFhNKy7vAhyj0ML+e+CuCWP/XFI8Kwa
         13Lg==
X-Gm-Message-State: AJIora8JH0QzHLwskeTTYU5SAWGmTtS7G0SjSdAEHOmh9q9DqAq6qVGJ
        Nk254n6oI0MDuIbebDdHBcOIHjeSbpY4LQTzkXA=
X-Google-Smtp-Source: AGRyM1tXCw301/Vy0UvSTxaVK21X2+5eG4LRYISlCv3fSo0MnN/EmONpEAyX91Fq0sbAuY7diiPVgf3bYVT1hn2kOBY=
X-Received: by 2002:a05:6902:20a:b0:670:c563:9180 with SMTP id
 j10-20020a056902020a00b00670c5639180mr8529332ybs.401.1658743343609; Mon, 25
 Jul 2022 03:02:23 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
 <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org> <CA+V-a8vp7agGmHEJyLSLm973ddOs-cD21jRbwFnjSfc7DxrjrQ@mail.gmail.com>
 <CAL_JsqJCKDdUoBtiC7bLAstTHFP_gdHtCf+NWKy2zbXG_Z153w@mail.gmail.com>
 <CA+V-a8tYNvQk19ZP_oq=OeV2K5X=7E+Mq6Cin5ZVT6cBt=_yBw@mail.gmail.com>
 <CAL_JsqJELtWn=PwxMU=9VCUTwaZMk=oyfJo7O7HbnFB-MfcHAQ@mail.gmail.com>
 <CA+V-a8sGPRQQJ4jZ4pSObyHi37RA6Fc44-W5=2AYwA3Hs_QQ+g@mail.gmail.com>
 <CA+V-a8uUt=t9SZLMW4VtX4Dwk9m5bij5JwOCMSS2Nzxvv=fpZA@mail.gmail.com> <CAL_JsqLdg-stgCbQO__+A2WwnooQN71SKd5NAzFij4v=39oFrw@mail.gmail.com>
In-Reply-To: <CAL_JsqLdg-stgCbQO__+A2WwnooQN71SKd5NAzFij4v=39oFrw@mail.gmail.com>
From:   "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date:   Mon, 25 Jul 2022 11:01:56 +0100
Message-ID: <CA+V-a8u655GmGCerhXZh5Nh5fW_3jL7u427SoqmcVdyTUszWkw@mail.gmail.com>
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

Hi Rob,

On Fri, Jul 22, 2022 at 5:39 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Jul 22, 2022 at 7:29 AM Lad, Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
> >
> > On Fri, Jul 22, 2022 at 12:08 PM Lad, Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > On Thu, Jul 21, 2022 at 11:24 PM Rob Herring <robh+dt@kernel.org> wrote:
> > > >
> > > > On Thu, Jul 21, 2022 at 4:18 PM Lad, Prabhakar
> > > > <prabhakar.csengg@gmail.com> wrote:
> > > > >
> > > > > Hi Rob,
> > > > >
> > > > > On Thu, Jul 21, 2022 at 5:57 PM Rob Herring <robh+dt@kernel.org> wrote:
> > > > > >
> > > > > > On Thu, Jul 21, 2022 at 9:23 AM Lad, Prabhakar
> > > > > > <prabhakar.csengg@gmail.com> wrote:
> > > > > > >
> > > > > > > Hi Krzysztof,
> > > > > > >
> > > > > > > On Thu, Jul 21, 2022 at 4:12 PM Krzysztof Kozlowski
> > > > > > > <krzysztof.kozlowski@linaro.org> wrote:
> > > > > > > >
> > > > > > > > On 21/07/2022 17:07, Lad, Prabhakar wrote:
> > > > > > > > > Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> > > > > > > > > dtbs_check failures.
> > > > > > > > >
> > > > > > > > > Any pointers on how I can get around this issue?
> > > > > > > >
> > > > > > > > Few months ago:
> > > > > > > > https://lore.kernel.org/linux-devicetree/cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org/
> > > > > > > >
> > > > > > > Thanks for the link.
> > > > > > >
> > > > > > > > Although Rob admitted in the thread this is in general allowed
> > > > > > > > configuration, to me it is still confusing - the left-most compatible is
> > > > > > > > not the most specific. Non obvious, confusing and it seems dtschema does
> > > > > > > > not support it?
> > > > > > > >
> > > > > > > It looks like dtschema does not support it.
> > > > > >
> > > > > > The issue is the same as licensed IP where we have a generic
> > > > > > compatible and per licensee compatibles in separate schemas. The
> > > > > > solution anytime a compatible exists in more than 1 schema is a custom
> > > > > > 'select' which excludes that compatible. That would be messy here
> > > > > > though due to the large number of compatibles. Perhaps we could
> > > > > > instead merge a custom select with the default generated one. Then the
> > > > > > schema would just need:
> > > > > >
> > > > > > select:
> > > > > >   not:
> > > > > >     properties:
> > > > > >       contains:
> > > > > >         const: renesas,smarc-evk
> > > > > >
> > Being a novice here with the select, I added the below to ignore the
> > arm schema if its the RISC-V board:
> >
> > diff --git a/Documentation/devicetree/bindings/arm/renesas.yaml
> > b/Documentation/devicetree/bindings/arm/renesas.yaml
> > index ff80152f092f..77e78136bfce 100644
> > --- a/Documentation/devicetree/bindings/arm/renesas.yaml
> > +++ b/Documentation/devicetree/bindings/arm/renesas.yaml
> > @@ -9,6 +9,16 @@ title: Renesas SH-Mobile, R-Mobile, and R-Car
> > Platform Device Tree Bindings
> >  maintainers:
> >    - Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > +# We want ignore this schema if the board is of RISC-V arch
> > +select:
> > +  not:
> > +    properties:
> > +      compatible:
> > +        contains:
> > +          const: renesas,r9a07g043f1
> > +    required:
> > +      - compatible
> > +
> >  properties:
> >    $nodename:
> >      const: '/'
> >
> > But when I run the dt_binding_check, I get the below issues:
>
> That would only work if we change how 'select' is generated. As I
> said, the above would have to be merged with what we normally generate
> (see processed-schema.json for what that looks like).
>
I'm a bit lost here!

Could you please elaborate what you mean by merging a custom select
with the default generated one. When I compared the
processed-schema.json with/without my changes they were the same.

Cheers,
Prabhakar
