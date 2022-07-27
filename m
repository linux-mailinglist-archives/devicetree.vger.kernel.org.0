Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2410582208
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 10:26:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230291AbiG0I0a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 04:26:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbiG0I03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 04:26:29 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2C41275FE
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 01:26:21 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 123so6306445ybv.7
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 01:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TYL6DxJcxdV4y3+dnixp60mbAWgcXHqWidrxulOKRJ8=;
        b=buTphRGXVoFDpuKmPLeR2BB39yTm7gU7hrXD/UcwJ+mhpbdh2W6aIUy2qsrx6MKRQ2
         ZCxwSFNx1PUXyFMr2EcOJkw6VlQcfSFBxlhpSGsN86HiYuaPrn0WPWjuWv6ELS+8Zp0J
         PSidhvkIWWeb0EvOSqgOw80R184DSysjWVfzt1XuWHrkboeuRm49utB2SO2tnGLnJnP9
         c+hqo9tZJQQY7+ucdVCi6aG5VagvZbXh0h5CuPbLLTPyyw2IJFVCvW6DxNU0PlMSKDeu
         +xmNxB2snNtnfZbrpQFbr1U8Nm4Kwy3M9R8SAjLCdm0oyuyaEHk7YcODJxNfFMifmEfH
         FasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TYL6DxJcxdV4y3+dnixp60mbAWgcXHqWidrxulOKRJ8=;
        b=Zs+lj0j7gDgFz/6A6mDFnm0jiRGeMB/pAXGUt10pFawI7adVtY5Sj2zbSOmQEl6BQE
         YElI+WBTd7LZdFA7Vxd9nwE6aqv4wvdw7wvRymMIyThEZhS5E11YpqU4oDt8ElwoUpL7
         gl0cyuQ5UunAropYZiRo9/v3QjhDS4jtCgIo/9a3rHFaf8aD0RlR0tdXYBbe5r+BJuhm
         pk2JaJ+0rMpwHvm+ODGEBbjqsffsLfOq3YcmxD05SN0CHMJPoOVi+XL0fraag7OXdnAp
         CFQ6bF754mCoEsOFqDUoiTlrNsAtchy5sABYAU5BN6Psa4gEsGGM7ovA9ihmFk/S5zwB
         RcQQ==
X-Gm-Message-State: AJIora/SH4U2vf0Sp84vSRivLDBcRdHr0EPx8z8sKHx2GSJcqhFaqYQ6
        E2z7pwe2Ybf2XFoSEis1VvMRZyR9EYyHtubUxks=
X-Google-Smtp-Source: AGRyM1tf+ZB2gXwcPvI+Mmc85OrjszN1+519hhA6Dxxw8P9ZMNQUYtTt6nYCBuG3a1+5ly8fGgjxwNAmPB7gh2U9Q6k=
X-Received: by 2002:a05:6902:1082:b0:670:9307:b0eb with SMTP id
 v2-20020a056902108200b006709307b0ebmr17398732ybu.335.1658910381130; Wed, 27
 Jul 2022 01:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
 <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org> <CA+V-a8vp7agGmHEJyLSLm973ddOs-cD21jRbwFnjSfc7DxrjrQ@mail.gmail.com>
 <CAL_JsqJCKDdUoBtiC7bLAstTHFP_gdHtCf+NWKy2zbXG_Z153w@mail.gmail.com>
 <CA+V-a8tYNvQk19ZP_oq=OeV2K5X=7E+Mq6Cin5ZVT6cBt=_yBw@mail.gmail.com>
 <CAL_JsqJELtWn=PwxMU=9VCUTwaZMk=oyfJo7O7HbnFB-MfcHAQ@mail.gmail.com>
 <CA+V-a8sGPRQQJ4jZ4pSObyHi37RA6Fc44-W5=2AYwA3Hs_QQ+g@mail.gmail.com>
 <CA+V-a8uUt=t9SZLMW4VtX4Dwk9m5bij5JwOCMSS2Nzxvv=fpZA@mail.gmail.com>
 <CAL_JsqLdg-stgCbQO__+A2WwnooQN71SKd5NAzFij4v=39oFrw@mail.gmail.com>
 <CA+V-a8u655GmGCerhXZh5Nh5fW_3jL7u427SoqmcVdyTUszWkw@mail.gmail.com> <CAL_Jsq+0P8PccAVi06ZuJgheT8kJhRmxmTPNDFXdnJiHqn3Z+A@mail.gmail.com>
In-Reply-To: <CAL_Jsq+0P8PccAVi06ZuJgheT8kJhRmxmTPNDFXdnJiHqn3Z+A@mail.gmail.com>
From:   "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date:   Wed, 27 Jul 2022 09:25:54 +0100
Message-ID: <CA+V-a8tbKbww4vX1hhOnfa7+ALFfyrC-UbJ_0ofCzvM_pWp4zw@mail.gmail.com>
Subject: Re: dtbs_check issue
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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

On Mon, Jul 25, 2022 at 6:40 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, Jul 25, 2022 at 4:02 AM Lad, Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
> >
> > Hi Rob,
> >
> > On Fri, Jul 22, 2022 at 5:39 PM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Fri, Jul 22, 2022 at 7:29 AM Lad, Prabhakar
> > > <prabhakar.csengg@gmail.com> wrote:
> > > >
> > > > On Fri, Jul 22, 2022 at 12:08 PM Lad, Prabhakar
> > > > <prabhakar.csengg@gmail.com> wrote:
> > > > >
> > > > > On Thu, Jul 21, 2022 at 11:24 PM Rob Herring <robh+dt@kernel.org> wrote:
> > > > > >
> > > > > > On Thu, Jul 21, 2022 at 4:18 PM Lad, Prabhakar
> > > > > > <prabhakar.csengg@gmail.com> wrote:
> > > > > > >
> > > > > > > Hi Rob,
> > > > > > >
> > > > > > > On Thu, Jul 21, 2022 at 5:57 PM Rob Herring <robh+dt@kernel.org> wrote:
> > > > > > > >
> > > > > > > > On Thu, Jul 21, 2022 at 9:23 AM Lad, Prabhakar
> > > > > > > > <prabhakar.csengg@gmail.com> wrote:
> > > > > > > > >
> > > > > > > > > Hi Krzysztof,
> > > > > > > > >
> > > > > > > > > On Thu, Jul 21, 2022 at 4:12 PM Krzysztof Kozlowski
> > > > > > > > > <krzysztof.kozlowski@linaro.org> wrote:
> > > > > > > > > >
> > > > > > > > > > On 21/07/2022 17:07, Lad, Prabhakar wrote:
> > > > > > > > > > > Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> > > > > > > > > > > dtbs_check failures.
> > > > > > > > > > >
> > > > > > > > > > > Any pointers on how I can get around this issue?
> > > > > > > > > >
> > > > > > > > > > Few months ago:
> > > > > > > > > > https://lore.kernel.org/linux-devicetree/cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org/
> > > > > > > > > >
> > > > > > > > > Thanks for the link.
> > > > > > > > >
> > > > > > > > > > Although Rob admitted in the thread this is in general allowed
> > > > > > > > > > configuration, to me it is still confusing - the left-most compatible is
> > > > > > > > > > not the most specific. Non obvious, confusing and it seems dtschema does
> > > > > > > > > > not support it?
> > > > > > > > > >
> > > > > > > > > It looks like dtschema does not support it.
> > > > > > > >
> > > > > > > > The issue is the same as licensed IP where we have a generic
> > > > > > > > compatible and per licensee compatibles in separate schemas. The
> > > > > > > > solution anytime a compatible exists in more than 1 schema is a custom
> > > > > > > > 'select' which excludes that compatible. That would be messy here
> > > > > > > > though due to the large number of compatibles. Perhaps we could
> > > > > > > > instead merge a custom select with the default generated one. Then the
> > > > > > > > schema would just need:
> > > > > > > >
> > > > > > > > select:
> > > > > > > >   not:
> > > > > > > >     properties:
> > > > > > > >       contains:
> > > > > > > >         const: renesas,smarc-evk
> > > > > > > >
> > > > Being a novice here with the select, I added the below to ignore the
> > > > arm schema if its the RISC-V board:
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/renesas.yaml
> > > > b/Documentation/devicetree/bindings/arm/renesas.yaml
> > > > index ff80152f092f..77e78136bfce 100644
> > > > --- a/Documentation/devicetree/bindings/arm/renesas.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/renesas.yaml
> > > > @@ -9,6 +9,16 @@ title: Renesas SH-Mobile, R-Mobile, and R-Car
> > > > Platform Device Tree Bindings
> > > >  maintainers:
> > > >    - Geert Uytterhoeven <geert+renesas@glider.be>
> > > >
> > > > +# We want ignore this schema if the board is of RISC-V arch
> > > > +select:
> > > > +  not:
> > > > +    properties:
> > > > +      compatible:
> > > > +        contains:
> > > > +          const: renesas,r9a07g043f1
> > > > +    required:
> > > > +      - compatible
> > > > +
> > > >  properties:
> > > >    $nodename:
> > > >      const: '/'
> > > >
> > > > But when I run the dt_binding_check, I get the below issues:
> > >
> > > That would only work if we change how 'select' is generated. As I
> > > said, the above would have to be merged with what we normally generate
> > > (see processed-schema.json for what that looks like).
> > >
> > I'm a bit lost here!
> >
> > Could you please elaborate what you mean by merging a custom select
> > with the default generated one. When I compared the
> > processed-schema.json with/without my changes they were the same.
>
> dtschema generates 'select' if it is not present and $nodename or
> compatible properties are. It would instead need to combine your
> 'select' above with what it generates instead. Otherwise, wiht just
> the above, it is going to match every node with compatible not
> containing 'renesas,r9a07g043f1' which would be 99.9% of nodes.
>
Thanks for the pointer, I managed to get the select working with ARM
and RISC-V schema.

CHeers,
Prabhakar
