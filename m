Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B70F657D6C1
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 00:18:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233499AbiGUWSj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 18:18:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230304AbiGUWSi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 18:18:38 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AD7315A3B
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 15:18:37 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id i206so5186332ybc.5
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 15:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DoVu+GNim7WfDGl7EL9GmGSwcmjPUItdFSgEFsrpvf0=;
        b=CaMSIsE6E5yGSyhFkpet95MpC0cQH0jdZrBq2kKrT+Z/jQeUetiz5Aqnjry5FBLzH1
         YjacVNW6lLRpW4gBm8I3mSu5/f4K+GbKwUMdNFL4jlKt9T4k0jEf98lt6/AUwVdbikMm
         LxRReCSj2gkM23SlHcLbK/GHAA2uCKcjhJlGj0Ng7ilY3VX8UxiYJfD+jcvLAtZRijkt
         9N1CP/0TNwfodFFagWLPnRlXw1FB4wCPiON+Z1MCsxqayHpbJczhgJ+j/XhPI9OLSsmn
         9OcLf9ZSX97vAfEZELD770Qd5kDWxgkQ2c8NvdiqD/y43YcRq05Vfg9LPXH9vbQnb3Ta
         Z+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DoVu+GNim7WfDGl7EL9GmGSwcmjPUItdFSgEFsrpvf0=;
        b=iYdlBlFi+AolI2AJrVpT2D7Df1SNYVKHh1IRZKZnhgNED22ZtjxZHcTNxFpRpzkwQS
         buPjeAYo96R0XrQpeE3Ts2CMUojPobb/wVjwbkkmVxi6Y8kT4sM7W0tQRWsPhaOI1aDQ
         e8VR6piYV7b8NFjSnRw2t1eostfdi4N0+Q0pUWF+cA8SfwFxKwPejFoY84qRSxx+FFKr
         Z+Qq5B3IHtJHqjrNmrmeiq2S478BZkuf9c9nq53mheMywLV1GeOgjrLYGlsAlHc3+EjV
         a3Xky5q1uDshBboGKHn/fdfcWFAcMVO0qOHW6N3FQrkJuY6oVnP/XLIHhGAsWNe1jOJ+
         YOXg==
X-Gm-Message-State: AJIora8Q84mQYLeT3s3ZvLLJInR6lujJk280MMND348siiktKcICve5/
        1A3x/CZukGp+9KlQJ/W3YbzMEOcRcvJb16et/28=
X-Google-Smtp-Source: AGRyM1vabTXPRNqYFHcBDwleMXugms62UUDBwPwkA5MHJVFVuMXNqde0bPuVX5MMfE2IF13SyrMbIOXTg3YbCyQ71vY=
X-Received: by 2002:a05:6902:20a:b0:670:c563:9180 with SMTP id
 j10-20020a056902020a00b00670c5639180mr606446ybs.401.1658441916571; Thu, 21
 Jul 2022 15:18:36 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
 <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org> <CA+V-a8vp7agGmHEJyLSLm973ddOs-cD21jRbwFnjSfc7DxrjrQ@mail.gmail.com>
 <CAL_JsqJCKDdUoBtiC7bLAstTHFP_gdHtCf+NWKy2zbXG_Z153w@mail.gmail.com>
In-Reply-To: <CAL_JsqJCKDdUoBtiC7bLAstTHFP_gdHtCf+NWKy2zbXG_Z153w@mail.gmail.com>
From:   "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date:   Thu, 21 Jul 2022 23:18:10 +0100
Message-ID: <CA+V-a8tYNvQk19ZP_oq=OeV2K5X=7E+Mq6Cin5ZVT6cBt=_yBw@mail.gmail.com>
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

On Thu, Jul 21, 2022 at 5:57 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Jul 21, 2022 at 9:23 AM Lad, Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
> >
> > Hi Krzysztof,
> >
> > On Thu, Jul 21, 2022 at 4:12 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> > >
> > > On 21/07/2022 17:07, Lad, Prabhakar wrote:
> > > > Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> > > > dtbs_check failures.
> > > >
> > > > Any pointers on how I can get around this issue?
> > >
> > > Few months ago:
> > > https://lore.kernel.org/linux-devicetree/cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org/
> > >
> > Thanks for the link.
> >
> > > Although Rob admitted in the thread this is in general allowed
> > > configuration, to me it is still confusing - the left-most compatible is
> > > not the most specific. Non obvious, confusing and it seems dtschema does
> > > not support it?
> > >
> > It looks like dtschema does not support it.
>
> The issue is the same as licensed IP where we have a generic
> compatible and per licensee compatibles in separate schemas. The
> solution anytime a compatible exists in more than 1 schema is a custom
> 'select' which excludes that compatible. That would be messy here
> though due to the large number of compatibles. Perhaps we could
> instead merge a custom select with the default generated one. Then the
> schema would just need:
>
> select:
>   not:
>     properties:
>       contains:
>         const: renesas,smarc-evk
>
> We'd have to figure out when to merge or not merge. Maybe only merge a
> 'not' schema.
>
Agreed with this approach the select list might keep growing.

>
> The other way to solve this is simply not having 2 schema files. Why
> do we have SoC/board schemas under a CPU arch directory? There's
> nothing architecture specific about them (I have the same opinion on
> .dts files too). So I'd be in favor of putting all root node schemas
> in one directory.
>
Agreed, but what do we name the directory which has root node schemas?

Geert, are you ok with moving the schema out and having a single file
for all the Renesas SoC'/Boards?

Cheers,
Prabhakar
