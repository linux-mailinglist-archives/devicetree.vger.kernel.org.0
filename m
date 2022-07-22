Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21C5157E0A7
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 13:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234435AbiGVLIh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 07:08:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233608AbiGVLIf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 07:08:35 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47C5BBDA06
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 04:08:34 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id r3so7446955ybr.6
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 04:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rBG0dr2Iuxdp3QGYVgyg1JZU62ibHPNwAptUKa70DUo=;
        b=K9vqat6sdS9BBLnbJ9jkQEtznQELst0EtgTx2A5raEa3lQFt33ePSSVnWFCjvaLWAr
         ZB/PkakiVIn6p0I1mXE4wWwtSUQfWPXv8JbwhYYeQqxIA+lFYJMllzHo5HLa2gNjJgOa
         GnY6VLUSeGTX26ySw7a/YPuh4LDyOd7HFoh2GICzW1m8xwekzTwgg/vwg5FuqDWwqJvo
         eox0f+IUvbXH84XBjOo0wa3o8zDM+vGCCfzhH5zlZFmxrm/DIO8PbwgkGAKIi1eM+bIk
         mD3XPplkWc4HWrV7Gqz9k7DIZ098SqODu+OIexf3PrVLYkUV4XGUSzkZnl0mwjyhkKz6
         i+yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rBG0dr2Iuxdp3QGYVgyg1JZU62ibHPNwAptUKa70DUo=;
        b=rSriXNpxCPaYusTaz7HIxXh8w9pcJgF+fTiSuwaxWHpN0qeh7g8hdDq+96uqAVoRnr
         SbfbEX7IDXpcftbpiuD5SNsINLkP0J2N07h2mJ5OYA7JaDwtOqdRh2oZS0a6aqnEZFP2
         hhN1Z41Lml9TR5Sz3vQLKWpk9zXwgcouLj46hPCV2VvQeiCToYo1uvqiylTn2lniRPVM
         RRlF5eAw+pbVM5XKjk0X3LvrDBNJFi7XjM1G/LAoEcbZ76qN2vUkTWMyFWgJkQvZUhGF
         p89DXj+MptWm95tw7mkkmxLTFRg4T5AfbLbQDD58GRD5k4pHOMgPxv1uuyp0gdoSL/oK
         91Tg==
X-Gm-Message-State: AJIora/F22OHiGhY4hR/TGi6ZrrMYotpFvv5JpNxIAHR2Oqu1G0EgKzK
        M98v9OXy4c/bTpOgadtJtIf+kcg7+Et/GoL2BYQ=
X-Google-Smtp-Source: AGRyM1sWS/uUxsI41QUEalm8ZW+WOXq96MxgVJ1eZY4Nx4YyxAw2kzMn6FfVTU2K3YQWvCKq9AYixEJruuiVXIHOyLg=
X-Received: by 2002:a25:d406:0:b0:66e:c6b3:f11e with SMTP id
 m6-20020a25d406000000b0066ec6b3f11emr79881ybf.354.1658488113467; Fri, 22 Jul
 2022 04:08:33 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
 <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org> <CA+V-a8vp7agGmHEJyLSLm973ddOs-cD21jRbwFnjSfc7DxrjrQ@mail.gmail.com>
 <CAL_JsqJCKDdUoBtiC7bLAstTHFP_gdHtCf+NWKy2zbXG_Z153w@mail.gmail.com>
 <CA+V-a8tYNvQk19ZP_oq=OeV2K5X=7E+Mq6Cin5ZVT6cBt=_yBw@mail.gmail.com> <CAL_JsqJELtWn=PwxMU=9VCUTwaZMk=oyfJo7O7HbnFB-MfcHAQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJELtWn=PwxMU=9VCUTwaZMk=oyfJo7O7HbnFB-MfcHAQ@mail.gmail.com>
From:   "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date:   Fri, 22 Jul 2022 12:08:06 +0100
Message-ID: <CA+V-a8sGPRQQJ4jZ4pSObyHi37RA6Fc44-W5=2AYwA3Hs_QQ+g@mail.gmail.com>
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

On Thu, Jul 21, 2022 at 11:24 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Jul 21, 2022 at 4:18 PM Lad, Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
> >
> > Hi Rob,
> >
> > On Thu, Jul 21, 2022 at 5:57 PM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Thu, Jul 21, 2022 at 9:23 AM Lad, Prabhakar
> > > <prabhakar.csengg@gmail.com> wrote:
> > > >
> > > > Hi Krzysztof,
> > > >
> > > > On Thu, Jul 21, 2022 at 4:12 PM Krzysztof Kozlowski
> > > > <krzysztof.kozlowski@linaro.org> wrote:
> > > > >
> > > > > On 21/07/2022 17:07, Lad, Prabhakar wrote:
> > > > > > Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> > > > > > dtbs_check failures.
> > > > > >
> > > > > > Any pointers on how I can get around this issue?
> > > > >
> > > > > Few months ago:
> > > > > https://lore.kernel.org/linux-devicetree/cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org/
> > > > >
> > > > Thanks for the link.
> > > >
> > > > > Although Rob admitted in the thread this is in general allowed
> > > > > configuration, to me it is still confusing - the left-most compatible is
> > > > > not the most specific. Non obvious, confusing and it seems dtschema does
> > > > > not support it?
> > > > >
> > > > It looks like dtschema does not support it.
> > >
> > > The issue is the same as licensed IP where we have a generic
> > > compatible and per licensee compatibles in separate schemas. The
> > > solution anytime a compatible exists in more than 1 schema is a custom
> > > 'select' which excludes that compatible. That would be messy here
> > > though due to the large number of compatibles. Perhaps we could
> > > instead merge a custom select with the default generated one. Then the
> > > schema would just need:
> > >
> > > select:
> > >   not:
> > >     properties:
> > >       contains:
> > >         const: renesas,smarc-evk
> > >
> > > We'd have to figure out when to merge or not merge. Maybe only merge a
> > > 'not' schema.
> > >
> > Agreed with this approach the select list might keep growing.
> >
> > >
> > > The other way to solve this is simply not having 2 schema files. Why
> > > do we have SoC/board schemas under a CPU arch directory? There's
> > > nothing architecture specific about them (I have the same opinion on
> > > .dts files too). So I'd be in favor of putting all root node schemas
> > > in one directory.
> > >
> > Agreed, but what do we name the directory which has root node schemas?
>
> 'root' for root node schemas?
>
> >
> > Geert, are you ok with moving the schema out and having a single file
> > for all the Renesas SoC'/Boards?
>
> I didn't say I was in favor of putting 1 schema there, but 'all root
> node schemas'.
>
Thanks for the clarification.

Cheers,
Prabhakar
