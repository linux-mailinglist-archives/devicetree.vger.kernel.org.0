Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 035DA57D6DA
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 00:24:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbiGUWYW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 18:24:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiGUWYV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 18:24:21 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D43A95C09
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 15:24:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 4D403B82585
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 22:24:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D6E2C341C0
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 22:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658442258;
        bh=UEXeZjK1pRCBxG8TSUd9GpKud2el/2PCa1nQayh3bcw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=VuP5fPb7n2uGkcJcV5j2twu4Dgzo5SYogQDSkxaUJKISZ7XqjWQ6kCgCqU6e/hCbo
         VCL2DOkS+naTiiZy/1BxXIf3DUOnDMQmX8brx2bEy2+TZkZYuUx1GpVMG0ly23wDlV
         gRR9WhoYrmhxulTnT2qxvoo4+RPjxMxGsiecW6941svgcAia4MWn9dvBP32AaOu/cW
         sJbDOBgZGFAa/dsBIF+mN/khWcfiFI/A9DchRnhNA6WhexqoO5ptQ5loki8rHsHezb
         iK9j+9u31K7+HGSlbB7xR6eCOj6447PjZBx7vfcRsCUyIkQcTLd63s/z9Ljc133Yhk
         oXE+KP823Wg0A==
Received: by mail-vk1-f174.google.com with SMTP id bj51so1356249vkb.11
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 15:24:18 -0700 (PDT)
X-Gm-Message-State: AJIora9Y8fYidOCATWF2wSxdW6FXr4byNmVujBVbmbkRc1oEpQt5blmY
        K656Pz4bpj6Tmk1vTT4aDeOiW/mzYCr94Ls4HA==
X-Google-Smtp-Source: AGRyM1urhj2/Aq+CC8pRjYhpQplIM8xyyB5Lky4nakXxrNrbQy2h3GcL73fci1o0MiUg9InfC6XT3TLIm2JjjCfK7Ww=
X-Received: by 2002:a05:6122:139a:b0:376:d32:2b03 with SMTP id
 m26-20020a056122139a00b003760d322b03mr228944vkp.35.1658442256990; Thu, 21 Jul
 2022 15:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
 <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org> <CA+V-a8vp7agGmHEJyLSLm973ddOs-cD21jRbwFnjSfc7DxrjrQ@mail.gmail.com>
 <CAL_JsqJCKDdUoBtiC7bLAstTHFP_gdHtCf+NWKy2zbXG_Z153w@mail.gmail.com> <CA+V-a8tYNvQk19ZP_oq=OeV2K5X=7E+Mq6Cin5ZVT6cBt=_yBw@mail.gmail.com>
In-Reply-To: <CA+V-a8tYNvQk19ZP_oq=OeV2K5X=7E+Mq6Cin5ZVT6cBt=_yBw@mail.gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 21 Jul 2022 16:24:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJELtWn=PwxMU=9VCUTwaZMk=oyfJo7O7HbnFB-MfcHAQ@mail.gmail.com>
Message-ID: <CAL_JsqJELtWn=PwxMU=9VCUTwaZMk=oyfJo7O7HbnFB-MfcHAQ@mail.gmail.com>
Subject: Re: dtbs_check issue
To:     "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 4:18 PM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> Hi Rob,
>
> On Thu, Jul 21, 2022 at 5:57 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Thu, Jul 21, 2022 at 9:23 AM Lad, Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > Hi Krzysztof,
> > >
> > > On Thu, Jul 21, 2022 at 4:12 PM Krzysztof Kozlowski
> > > <krzysztof.kozlowski@linaro.org> wrote:
> > > >
> > > > On 21/07/2022 17:07, Lad, Prabhakar wrote:
> > > > > Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> > > > > dtbs_check failures.
> > > > >
> > > > > Any pointers on how I can get around this issue?
> > > >
> > > > Few months ago:
> > > > https://lore.kernel.org/linux-devicetree/cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org/
> > > >
> > > Thanks for the link.
> > >
> > > > Although Rob admitted in the thread this is in general allowed
> > > > configuration, to me it is still confusing - the left-most compatible is
> > > > not the most specific. Non obvious, confusing and it seems dtschema does
> > > > not support it?
> > > >
> > > It looks like dtschema does not support it.
> >
> > The issue is the same as licensed IP where we have a generic
> > compatible and per licensee compatibles in separate schemas. The
> > solution anytime a compatible exists in more than 1 schema is a custom
> > 'select' which excludes that compatible. That would be messy here
> > though due to the large number of compatibles. Perhaps we could
> > instead merge a custom select with the default generated one. Then the
> > schema would just need:
> >
> > select:
> >   not:
> >     properties:
> >       contains:
> >         const: renesas,smarc-evk
> >
> > We'd have to figure out when to merge or not merge. Maybe only merge a
> > 'not' schema.
> >
> Agreed with this approach the select list might keep growing.
>
> >
> > The other way to solve this is simply not having 2 schema files. Why
> > do we have SoC/board schemas under a CPU arch directory? There's
> > nothing architecture specific about them (I have the same opinion on
> > .dts files too). So I'd be in favor of putting all root node schemas
> > in one directory.
> >
> Agreed, but what do we name the directory which has root node schemas?

'root' for root node schemas?

>
> Geert, are you ok with moving the schema out and having a single file
> for all the Renesas SoC'/Boards?

I didn't say I was in favor of putting 1 schema there, but 'all root
node schemas'.


Rob
