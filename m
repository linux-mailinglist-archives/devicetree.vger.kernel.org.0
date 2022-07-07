Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90BB156A0FE
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 13:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235304AbiGGLTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 07:19:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235249AbiGGLTR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 07:19:17 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCED8100D
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 04:19:16 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-31c86fe1dddso119106707b3.1
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 04:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VvxqR2YjkAkhpO2mn7wnIMgnH5muBkn2KjHJkHBwJ4M=;
        b=G27hnhbqEpozKlhqKLrtCAjv82OR52ZxFVIc1rtzysUyjGTIFZJ22Hz36cA4h6Tkzw
         6OsFajsJuBuCHaPeZlRyQbiYumtUQpBLMKd5IjM8WPbD+9kLdew04+Yqmiu0PZP6CJZg
         /lGNjLp1AJjVvVgdsJzXUR/l+I64N+TXaYBJxIxPaYJitRium0SN2mbHOSURz3xln+Eg
         2EMyr7bCutxEks/LBZ3HtRkl/Tm9yqamh/lpEZ+iggDT1rYrmhuL0HQyeUolBSkV6PMO
         jKbqE/ApX1FpaE9KRJUoBBi/urjlIoEBtv+ZkFaOMIbI25UWWji3x8J0EmLchRNBmfVB
         2+tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VvxqR2YjkAkhpO2mn7wnIMgnH5muBkn2KjHJkHBwJ4M=;
        b=4anpUXfAYNQpTTwkXh3HQFcoqPViWw8M0Cv6LVPLhg+z8RhXAiaeJpCk2bEGaPBk6B
         /9SBj6ymrLLCTbOrt8nsDl15Q4q/vrf0mPGgoWHfG8fe9JEQe2SC9kix6ILD9rgSfjgy
         myOcFy/F3UNlF5umkrnbTSNcvE2OW3nuF1gNgRaIwYqEXAW/pZRueH6sruotMnwrdbEv
         WcVsprbV7ml8ComaWFCyFRaSqx9sjJVOy9OK1jJ6qj3qLdgxF+LWK2SbhH1aVsaW/STl
         24aecj0o7axBD3k813GqQu6DFaBtnRymvRYTGAGBoL7+5UV4pjQVtlEiOF4roSn5vqeg
         Se8A==
X-Gm-Message-State: AJIora/LOtRLm45cSWyC+0j8uyHwNOeelU1NR85drMajqNZHYRqv2Ghc
        DFGNoJFA9patGtPiPZIpOFW0CgUn823oDrYuUSrnAA==
X-Google-Smtp-Source: AGRyM1vGTv2O5NMNR7KotzClJ4xj25bceIP1C0NhvmuMrV5KcY2p9o4Jk5Ay/HNopsU6jIkiUAwGfAEc3qEGF9tkrac=
X-Received: by 2002:a81:a8d:0:b0:31c:cb2f:c805 with SMTP id
 135-20020a810a8d000000b0031ccb2fc805mr15369615ywk.118.1657192756039; Thu, 07
 Jul 2022 04:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220223174215.17838-1-a-m1@ti.com> <CACRpkdbj2B90-RE2XKQJ5qEj1hZQA-u=vUu2vpXwNqQLf_kaPg@mail.gmail.com>
 <e682175fcfc54217a6ed006270877f4d@ti.com> <ddc2b24e-37a3-4751-80b9-84b13606a703@ti.com>
In-Reply-To: <ddc2b24e-37a3-4751-80b9-84b13606a703@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 7 Jul 2022 13:19:03 +0200
Message-ID: <CACRpkdZ7Kb0=7LHa13KJeZc2Kwb6z5kuH9nnHrk4p9OqB8+QgA@mail.gmail.com>
Subject: Re: [PATCH v5] dt-bindings: gpio: Convert TI TPIC2810 GPIO Controller
 bindings to YAML
To:     Vignesh Raghavendra <vigneshr@ti.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 7, 2022 at 7:19 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:

> Hi Bartosz,
>
> On 05/05/22 14:28, M, Aparna wrote:
> > +Vignesh
> >
> > Ping. Can this be picked up for next merge cycle?
> >
> > On 15/03/22 06:31, Linus Walleij wrote:
> >> On Wed, Feb 23, 2022 at 6:42 PM Aparna M <a-m1@ti.com> wrote:
> >>
> >>> Convert gpio-tpic2810 bindings to yaml format and remove outdated
> >>> bindings in .txt format.
> >>>
> >>> Signed-off-by: Aparna M <a-m1@ti.com>
> >> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >>
> >> Yours,
> >> Linus Walleij
> >>
>
> Sorry, this patch has been around for sometime w/o any comments and has
> relevant R-bys. Wondering if this fell off the radar
>
> I believe patch would go via GPIO tree?

You need to use the right mail address to Bartosz so he can pick it up.

Bartosz: this seems to have fallen between the mail address cracks,
check it out.

Yours,
Linus Walleij
