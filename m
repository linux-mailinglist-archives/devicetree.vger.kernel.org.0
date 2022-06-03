Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E75FF53CD21
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 18:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234520AbiFCQY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 12:24:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237632AbiFCQY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 12:24:26 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ACD75133E;
        Fri,  3 Jun 2022 09:24:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 13B6D61987;
        Fri,  3 Jun 2022 16:24:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72FC0C36AE2;
        Fri,  3 Jun 2022 16:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654273464;
        bh=EXbl5y5bKZ+Y91YTXpL+Xiq1fvINn7YwdKljvqjH4sc=;
        h=References:In-Reply-To:From:Date:Subject:To:From;
        b=nmBWymFCEvZr5YYJx0Xk5GTXIXqG/Ubv9UxH+08sfiSMGua8oFg6WGKoWF7y6VJz+
         5w78aKpsfmWZmUrPDzVPHjjVNqkpZewJMwKK6sF2E5K9Ht3ZRiX8g5DpMUREGCccEE
         NEf/aQyqQsZIATdJQAl4UI7qbY75UTDqiAN/s1cLDU/UhZsX7J/OrWFi/BkLXGyRYi
         h++iPdVV2ZdGyG6bU/a0ZuRumjw1Y4LoJ2z/OQNdD5rZo4d9bVaTsUv9/31asA8qlg
         /eEJthLu8zTBXii+/L2AxLNoSPivpC8P0e3f8DzI1rEjKF2T/DCPD1mBuJO1BzeuaR
         L8d+E7HIsEzLw==
Received: by mail-vk1-f177.google.com with SMTP id s135so3620300vks.10;
        Fri, 03 Jun 2022 09:24:24 -0700 (PDT)
X-Gm-Message-State: AOAM531Tmkw/TGLuiE4CtioP8XpOl5npACYZZ0/RFoJp2qwbJ80AHZwe
        JWBuZOTy5EccYYoGjLRgDVJNNApETZpU6+j0Dg==
X-Google-Smtp-Source: ABdhPJzzsFp8S0rp88mMXropl2qwDR8hbz3CO+L+cFuVUUvK62u3eA8FScNXdUJDfErtSXQguFebyVKPBhWLuEiN5Tg=
X-Received: by 2002:a1f:2a4e:0:b0:357:a4af:25e1 with SMTP id
 q75-20020a1f2a4e000000b00357a4af25e1mr23342646vkq.14.1654273463335; Fri, 03
 Jun 2022 09:24:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220427175956.362987-1-robh@kernel.org> <YpouYnc6ctdHx3Vk@shikoro>
In-Reply-To: <YpouYnc6ctdHx3Vk@shikoro>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 3 Jun 2022 11:24:11 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJEFs5EyzCGHaaC6S=9mfDf9jbo+4=NKh2DO49+RUjBjw@mail.gmail.com>
Message-ID: <CAL_JsqJEFs5EyzCGHaaC6S=9mfDf9jbo+4=NKh2DO49+RUjBjw@mail.gmail.com>
Subject: Re: [dtschema PATCH] schemas: i2c: Add missing properties and descriptions
To:     Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Mailing List <devicetree-spec@vger.kernel.org>,
        Eugen Hristev <eugen.hristev@microchip.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Matt Johnston <matt@codeconstruct.com.au>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 3, 2022 at 10:53 AM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> On Wed, Apr 27, 2022 at 12:59:56PM -0500, Rob Herring wrote:
> > Add remaining properties and descriptions from i2c.txt binding in Linux
> > kernel tree. The Cc list are the authors of i2c.txt.
> >
> > Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > Cc: Eugen Hristev <eugen.hristev@microchip.com>
> > Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > Cc: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> > Cc: Jon Hunter <jonathanh@nvidia.com>
> > Cc: Alain Volmat <alain.volmat@foss.st.com>
> > Cc: Matt Johnston <matt@codeconstruct.com.au>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > Cc list,
> >
> > I need your or your company's permission to relicense i2c.txt contents
> > (used in 'description') to BSD-2-Clause. Please ack and provide a
> > copyright if desired.
>
> In general:
>
> Acked-by: Wolfram Sang <wsa@sang-engineering.com>

Thanks!

> In what from should I add the copyright? Basically it needs "Acked-by:"
> from above replaced with "(C)", or?

Whatever text your lawyer says. ;) I've heard copyright statements are
meaningless too, but IANAL.

I'll add this aligned with the existing statements if okay with you:

Copyright 2015,2020 Wolfram Sang <wsa@sang-engineering.com>


Rob
