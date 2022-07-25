Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98EB358039A
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 19:40:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235381AbiGYRkL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 13:40:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229921AbiGYRkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 13:40:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04DB5B4A
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 10:40:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9418161377
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 17:40:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1712C341C6
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 17:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658770807;
        bh=sy1GzUQlvpxgT3TfVa9JL7X6aeymSaIUzuhBPRffTTU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=M1zJW7Zl6wsEPjpIdB3N8A6WCQJet7YOiSkxDqg6U9VaLsiGNk7C9XBO+wdQzNznB
         eI2NvTHsw7RJ5Y2F42DKrU+pufw+u34MiDnXlK+qzD6P4di5Fb9f/y45lLL7BlbL0Z
         a/v9g7ddrZT0sHbttfF3Jk1jUGZnoBS93bRYvMLCJqVUOVQAHrM7fzxv5TgDmL0atq
         v/j/0WbMKEBaXK+J74Ptp6e6Vtgx2zor/8qTyYF6SQIvxzMpYB0Mfp/WBLN79iVnkJ
         XgpwTXx4eRcsex6lylzUTUshh5RnDdNBVWsF6mgi+ZGeHdq1T/j93ZkoxgJJcJjtzK
         AL5+clU9URBeQ==
Received: by mail-ua1-f42.google.com with SMTP id t21so4745738uaq.3
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 10:40:06 -0700 (PDT)
X-Gm-Message-State: AJIora/hMTy0vk8mlogxidlODkSjqN4UdPYOkDK8S5bhzt1wLKd1cO+K
        xrw6xpAFsYRoD5FUfRPtfK91uyuMt7nejN3P4Q==
X-Google-Smtp-Source: AGRyM1vgfG0J4laKU3Z+NQizAS9fxYvk+jOk//tyBKeI1QPJFtsbyr0LOeSd5CuE/WlpEFZJpdG56lr8mCMbvVf0BdU=
X-Received: by 2002:ab0:6798:0:b0:382:d9f4:8d0 with SMTP id
 v24-20020ab06798000000b00382d9f408d0mr3716123uar.63.1658770805948; Mon, 25
 Jul 2022 10:40:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
 <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org> <CA+V-a8vp7agGmHEJyLSLm973ddOs-cD21jRbwFnjSfc7DxrjrQ@mail.gmail.com>
 <CAL_JsqJCKDdUoBtiC7bLAstTHFP_gdHtCf+NWKy2zbXG_Z153w@mail.gmail.com>
 <CA+V-a8tYNvQk19ZP_oq=OeV2K5X=7E+Mq6Cin5ZVT6cBt=_yBw@mail.gmail.com>
 <CAL_JsqJELtWn=PwxMU=9VCUTwaZMk=oyfJo7O7HbnFB-MfcHAQ@mail.gmail.com>
 <CA+V-a8sGPRQQJ4jZ4pSObyHi37RA6Fc44-W5=2AYwA3Hs_QQ+g@mail.gmail.com>
 <CA+V-a8uUt=t9SZLMW4VtX4Dwk9m5bij5JwOCMSS2Nzxvv=fpZA@mail.gmail.com>
 <CAL_JsqLdg-stgCbQO__+A2WwnooQN71SKd5NAzFij4v=39oFrw@mail.gmail.com> <CA+V-a8u655GmGCerhXZh5Nh5fW_3jL7u427SoqmcVdyTUszWkw@mail.gmail.com>
In-Reply-To: <CA+V-a8u655GmGCerhXZh5Nh5fW_3jL7u427SoqmcVdyTUszWkw@mail.gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 25 Jul 2022 11:39:54 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+0P8PccAVi06ZuJgheT8kJhRmxmTPNDFXdnJiHqn3Z+A@mail.gmail.com>
Message-ID: <CAL_Jsq+0P8PccAVi06ZuJgheT8kJhRmxmTPNDFXdnJiHqn3Z+A@mail.gmail.com>
Subject: Re: dtbs_check issue
To:     "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 25, 2022 at 4:02 AM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> Hi Rob,
>
> On Fri, Jul 22, 2022 at 5:39 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, Jul 22, 2022 at 7:29 AM Lad, Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > On Fri, Jul 22, 2022 at 12:08 PM Lad, Prabhakar
> > > <prabhakar.csengg@gmail.com> wrote:
> > > >
> > > > On Thu, Jul 21, 2022 at 11:24 PM Rob Herring <robh+dt@kernel.org> wrote:
> > > > >
> > > > > On Thu, Jul 21, 2022 at 4:18 PM Lad, Prabhakar
> > > > > <prabhakar.csengg@gmail.com> wrote:
> > > > > >
> > > > > > Hi Rob,
> > > > > >
> > > > > > On Thu, Jul 21, 2022 at 5:57 PM Rob Herring <robh+dt@kernel.org> wrote:
> > > > > > >
> > > > > > > On Thu, Jul 21, 2022 at 9:23 AM Lad, Prabhakar
> > > > > > > <prabhakar.csengg@gmail.com> wrote:
> > > > > > > >
> > > > > > > > Hi Krzysztof,
> > > > > > > >
> > > > > > > > On Thu, Jul 21, 2022 at 4:12 PM Krzysztof Kozlowski
> > > > > > > > <krzysztof.kozlowski@linaro.org> wrote:
> > > > > > > > >
> > > > > > > > > On 21/07/2022 17:07, Lad, Prabhakar wrote:
> > > > > > > > > > Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> > > > > > > > > > dtbs_check failures.
> > > > > > > > > >
> > > > > > > > > > Any pointers on how I can get around this issue?
> > > > > > > > >
> > > > > > > > > Few months ago:
> > > > > > > > > https://lore.kernel.org/linux-devicetree/cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org/
> > > > > > > > >
> > > > > > > > Thanks for the link.
> > > > > > > >
> > > > > > > > > Although Rob admitted in the thread this is in general allowed
> > > > > > > > > configuration, to me it is still confusing - the left-most compatible is
> > > > > > > > > not the most specific. Non obvious, confusing and it seems dtschema does
> > > > > > > > > not support it?
> > > > > > > > >
> > > > > > > > It looks like dtschema does not support it.
> > > > > > >
> > > > > > > The issue is the same as licensed IP where we have a generic
> > > > > > > compatible and per licensee compatibles in separate schemas. The
> > > > > > > solution anytime a compatible exists in more than 1 schema is a custom
> > > > > > > 'select' which excludes that compatible. That would be messy here
> > > > > > > though due to the large number of compatibles. Perhaps we could
> > > > > > > instead merge a custom select with the default generated one. Then the
> > > > > > > schema would just need:
> > > > > > >
> > > > > > > select:
> > > > > > >   not:
> > > > > > >     properties:
> > > > > > >       contains:
> > > > > > >         const: renesas,smarc-evk
> > > > > > >
> > > Being a novice here with the select, I added the below to ignore the
> > > arm schema if its the RISC-V board:
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/renesas.yaml
> > > b/Documentation/devicetree/bindings/arm/renesas.yaml
> > > index ff80152f092f..77e78136bfce 100644
> > > --- a/Documentation/devicetree/bindings/arm/renesas.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/renesas.yaml
> > > @@ -9,6 +9,16 @@ title: Renesas SH-Mobile, R-Mobile, and R-Car
> > > Platform Device Tree Bindings
> > >  maintainers:
> > >    - Geert Uytterhoeven <geert+renesas@glider.be>
> > >
> > > +# We want ignore this schema if the board is of RISC-V arch
> > > +select:
> > > +  not:
> > > +    properties:
> > > +      compatible:
> > > +        contains:
> > > +          const: renesas,r9a07g043f1
> > > +    required:
> > > +      - compatible
> > > +
> > >  properties:
> > >    $nodename:
> > >      const: '/'
> > >
> > > But when I run the dt_binding_check, I get the below issues:
> >
> > That would only work if we change how 'select' is generated. As I
> > said, the above would have to be merged with what we normally generate
> > (see processed-schema.json for what that looks like).
> >
> I'm a bit lost here!
>
> Could you please elaborate what you mean by merging a custom select
> with the default generated one. When I compared the
> processed-schema.json with/without my changes they were the same.

dtschema generates 'select' if it is not present and $nodename or
compatible properties are. It would instead need to combine your
'select' above with what it generates instead. Otherwise, wiht just
the above, it is going to match every node with compatible not
containing 'renesas,r9a07g043f1' which would be 99.9% of nodes.

Rob
